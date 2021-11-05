class ServiceException implements Exception {
  ServiceException({required String message}) {
    print("Service exceptino: $message");
  }
}
