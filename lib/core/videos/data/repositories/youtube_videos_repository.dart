import 'package:dio/dio.dart';
import 'package:yt_player/core/videos/domain/entities/video_class.dart';
import 'package:yt_player/core/videos/domain/repositories/videos_repository.dart';
import 'package:yt_player/custom_dio.dart';
import 'package:yt_player/utils/connect_check.dart';
import 'package:yt_player/yt_class.dart';

class YoutubeVideoRepository implements VideoRepository {
  //
  @override
  Future<List<Video>> fetchVideos({required String query}) async {
    //
    List<Video> videos = [];

    if (await ConnectionCheck.isAvaiable()) {
      Map<String, String> params = {
        'key': YtKey.API_KEY,
        'part': 'snippet',
        'maxResults': '4',
        'q': query, // Recebe a string de pesquisa
      };

      CustomDio dio = CustomDio();
      Response response;
      try {
        response = await dio.get('/search', queryParameters: params);
        if (response.statusCode == 200) {
          return (response.data['items'] as List)
              .map((e) => Video.fromMap(e))
              .toList();
        }
      } on DioError catch (error) {
        print(
            'Erro ao receber os dados do youtube: ${error.response!.statusCode}');
      }
    }
    return videos;
  }
}
