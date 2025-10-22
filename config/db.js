const { Pool } = require('pg');
const fs = require('fs');
const path = require('path');
const dotenv = require('dotenv');
dotenv.config();

// === Inisialisasi Pool ===
const pool = new Pool({
  host: process.env.DB_HOST || 'localhost',
  port: Number(process.env.DB_PORT) || 5432,
  user: process.env.DB_USER || 'postgres',
  password: process.env.DB_PASS || '123',
  database: process.env.DB_NAME || 'bcbtowing',
});

// === Helper Functions ===
const MIGRATION_PATH = path.join(process.cwd(), 'database/migration');
const SEEDER_PATH = path.join(process.cwd(), 'database/seeder');

const getSqlFiles = (dir) => {
  return fs.existsSync(dir)
    ? fs.readdirSync(dir).filter(f => f.endsWith('.sql')).sort()
    : [];
};

const extractTableName = (filename) => {
  const match = filename.match(/^\d+_(.+)\.sql$/);
  return match ? match[1].replace(/\.sql$/, '') : '';
};

const tableExists = async (client, table) => {
  const res = await client.query(`SELECT to_regclass('public.${table}') AS exists`);
  return res.rows[0].exists !== null;
};

const isTableEmpty = async (client, table) => {
  const res = await client.query(`SELECT COUNT(*) FROM ${table}`);
  return parseInt(res.rows[0].count, 10) === 0;
};

const runSqlFile = async (client, filePath) => {
  const sql = fs.readFileSync(filePath, 'utf-8');
  try {
    await client.query(sql);
  } catch (err) {
    console.error(`❌ Error in ${path.basename(filePath)}:`, err.message);
    throw err;
  }
};

// === Main Migration Runner ===
const runMigrations = async () => {
  const client = await pool.connect();
  console.log('🔄 Running migrations and seeders...');

  try {
    const migrationFiles = getSqlFiles(MIGRATION_PATH);
    const seederFiles = getSqlFiles(SEEDER_PATH);

    for (const file of migrationFiles) {
      const table = extractTableName(file);
      if (!table) continue;

      const exists = await tableExists(client, table);
      if (exists) {
        console.log(`✓ Skipping migration ${file} (table '${table}' already exists)`);
      } else {
        await runSqlFile(client, path.join(MIGRATION_PATH, file));
        console.log(`✅ Migrated: ${file}`);
      }
    }

    for (const file of seederFiles) {
      const table = extractTableName(file);
      if (!table) continue;

      const empty = await isTableEmpty(client, table);
      if (!empty) {
        console.log(`✓ Skipping seeder ${file} (table '${table}' has data)`);
      } else {
        await runSqlFile(client, path.join(SEEDER_PATH, file));
        console.log(`🌱 Seeded: ${file}`);
      }
    }

    console.log('✅ Migration & seeding complete.');
  } catch (err) {
    console.error('❌ Migration or seeding failed:', err);
  } finally {
    client.release(); // ✅ penting — jangan end pool, cukup release
  }
};

// Jalankan migration hanya kalau dipanggil langsung
if (require.main === module) {
  (async () => {
    console.log('📦 Connected to PostgreSQL');
    await runMigrations();
    await pool.end(); // ✅ tutup pool hanya kalau script dijalankan manual
  })();
}

module.exports = pool;
