import 'package:yt_player/core/videos/domain/entities/video_class.dart';

abstract class VideoRepository {
  Future<List<Video>> fetchVideos({required String query});
}
