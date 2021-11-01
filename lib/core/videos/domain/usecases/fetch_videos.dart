import 'package:yt_player/core/videos/domain/entities/video_class.dart';
import 'package:yt_player/core/videos/domain/repositories/videos_repository.dart';

class FetchVideos {
  final VideoRepository repository;

  FetchVideos(this.repository);

  Future<List<Video>> call(String query) {
    return repository.fetchVideos(query: query);
  }
}
