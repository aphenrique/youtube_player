import 'package:yt_player/core/videos/domain/entities/video_entity.dart';

import 'package:yt_player/core/videos/domain/usecases/fetch_videos_from_query_usecase.dart';
import 'package:yt_player/core/videos/infra/datasource/video_datasource_impl.dart';
import 'package:yt_player/core/videos/infra/repositories/videos_repository_impl.dart';

class ListVideosController {
  List<Video> videos = [];

  ListVideosController();

  final FetchVideosFromQueryUsecase fetchVideosFromQueryUsecase =
      FetchVideosFromQueryUsecase(
          VideoRepositoryImpl(datasource: VideoDatasourceImpl()));

  Future<List<Video>> fetchVideos({required String query}) async {
    return await fetchVideosFromQueryUsecase(query: query);
  }
}
