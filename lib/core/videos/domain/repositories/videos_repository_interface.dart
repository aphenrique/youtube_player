import 'package:yt_player/core/videos/domain/entities/video_entity.dart';

abstract class VideoRepository {
  Future<List<Video>> fetchVideosFromQuery({required String query});
}
