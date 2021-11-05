import 'package:yt_player/core/videos/infra/model/video_model.dart';

abstract class VideoDatasource {
  Future<List<VideoModel>> fetchVideoFromQuery({required String query});
}
