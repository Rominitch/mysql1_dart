part of sqljocky;

class _QuitHandler extends _Handler {
  _QuitHandler() {
    log = new Logger("QuitHandler");
  }
  
  Buffer createRequest() {
    var buffer = new Buffer(1);
    buffer.writeByte(COM_QUIT);
    return buffer;
  }
  
  dynamic processResponse(Buffer response) {
    throw "No response expected";
  }
}