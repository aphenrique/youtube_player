import 'package:dio/dio.dart';
import 'package:dio/native_imp.dart';

class CustomDio extends DioForNative {
  CustomDio() {
    options.baseUrl = "https://www.googleapis.com/youtube/v3";
    options.connectTimeout = 5000;
  }
}
