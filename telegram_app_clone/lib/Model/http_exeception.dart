class HttpExeception implements Exception {
  String message;
  HttpExeception(this.message);
  String toString() {
    return message;
  }
}
