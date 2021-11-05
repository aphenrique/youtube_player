import 'package:dio/dio.dart';
import 'package:yt_player/core/videos/domain/errors/service_errors.dart';
import 'package:yt_player/core/videos/infra/datasource/video_datasource.dart';
import 'package:yt_player/core/videos/infra/model/video_model.dart';
import 'package:yt_player/custom_dio.dart';
import 'package:yt_player/utils/connect_check.dart';

import '../../../../yt_class.dart';

class VideoDatasourceImpl implements VideoDatasource {
  final Dio dio = CustomDio(baseUrl: "https://www.googleapis.com/youtube/v3");

  @override
  Future<List<VideoModel>> fetchVideoFromQuery({required String query}) async {
    if (await ConnectionCheck.isAvaiable()) {
      Map<String, String> params = {
        'key': YtKey.API_KEY,
        'part': 'snippet',
        'maxResults': '4',
        'q': query, // Recebe a string de pesquisa
      };

      Response response = await dio.get('/search', queryParameters: params);
      if (response.statusCode == 200 || response.statusCode == 201) {
        return (response.data['items'] as List)
            .map((e) => VideoModel.fromJson(e))
            .toList();
      }

      throw ServiceException(message: "Erro ao acessar o servidor");
    }
    throw ServiceException(message: "Falha de conexão à internet");
  }
}
