import 'dart:io';

class ConnectionCheck {
  static Future<bool> isAvaiable() async {
    // Verifica a conexão com a internet
    try {
      final result = await InternetAddress.lookup('youtube.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        print('connected');
        return true;
      }
      return false;
    } on SocketException catch (_) {
      print('not connected');
      return false;
    }
  }
}
