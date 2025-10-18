function successResponse(res, message = 'Success', data = {}, status = 200) {
    return res.status(status).json({ success: true, message, data });
  }
  
  function errorResponse(res, message = 'Error', data = {}, status = 500) {
    return res.status(status).json({ success: false, message, data });
  }
  
  module.exports = { successResponse, errorResponse };
  