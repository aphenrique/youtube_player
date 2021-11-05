import 'package:yt_player/core/videos/domain/entities/video_entity.dart';
import 'package:yt_player/core/videos/domain/repositories/videos_repository_interface.dart';

class FetchVideosFromQueryUsecase {
  final VideoRepository repository;

  FetchVideosFromQueryUsecase(this.repository);

  Future<List<Video>> call(String query) async {
    return await repository.fetchVideosFromQuery(query: query);
  }
}
