abstract class VideoService {
  Future<Map<String, dynamic>> fetchVideosData(
      {required Map<String, dynamic> params});
}
