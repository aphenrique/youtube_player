import 'package:dio/native_imp.dart';

class CustomDio extends DioForNative {
  final String baseUrl;

  CustomDio({required this.baseUrl}) {
    options.baseUrl = baseUrl;
    options.connectTimeout = 5000;
  }
}
