import 'dart:io';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:yt_player/video_class.dart';
import 'package:yt_player/yt_class.dart';

class YoutubeApiService {
  YoutubeApiService._instantiate();

  static final YoutubeApiService instance = YoutubeApiService._instantiate();

  final String _baseUrl = 'www.googleapis.com';

  Future<List<Video>> fetchVideosFromYoutubeSearch(
      {required String query}) async {
    Map<String, String> params = {
      'part': 'snippet',
      'maxResults': '4',
      'key': YtKey.API_KEY,
      'q': 'hino 330 descansando no poder de deus',
    };

    Uri uri = Uri.https(_baseUrl, '/youtube/v3/search', params);

    Map<String, String> headers = {
      HttpHeaders.contentTypeHeader: 'application/json',
    };

    var response = await http.get(uri, headers: headers);
    // print(response.body);

    if (response.statusCode == 200) {
      var data = json.decode(response.body);

      List<dynamic> videosJson = data['items'];

      List<Video> videos = [];

      videosJson.forEach((item) {
        return videos.add(
          Video.fromMap(item),
        );
      });
      return videos;
    } else {
      throw jsonDecode(response.body)['error']['message'];
    }
  }
}