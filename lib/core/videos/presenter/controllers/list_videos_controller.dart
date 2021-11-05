import 'package:flutter/cupertino.dart';
import 'package:yt_player/core/videos/domain/entities/video_entity.dart';

import 'package:yt_player/core/videos/domain/usecases/fetch_videos_from_query_usecase.dart';

class ListVideosController extends ChangeNotifier {
  List<Video> videos = [];

  ListVideosController();

  late final FetchVideosFromQueryUsecase fetchVideosFromQueryUsecase;

  fetchVideos({required String query}) async {
    videos = await fetchVideosFromQueryUsecase(query);
  }
}
