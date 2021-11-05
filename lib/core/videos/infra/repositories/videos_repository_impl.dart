import 'package:dio/dio.dart';
import 'package:yt_player/core/videos/domain/entities/video_entity.dart';
import 'package:yt_player/core/videos/domain/errors/service_errors.dart';
import 'package:yt_player/core/videos/domain/repositories/videos_repository_interface.dart';
import 'package:yt_player/core/videos/infra/datasource/video_datasource.dart';
import 'package:yt_player/custom_dio.dart';
import 'package:yt_player/utils/connect_check.dart';
import 'package:yt_player/yt_class.dart';

class VideoRepositoryImpl implements VideoRepository {
  VideoDatasource datasource;

  VideoRepositoryImpl({required this.datasource});

  @override
  Future<List<Video>> fetchVideosFromQuery({required String query}) async {
    try {
      return await datasource.fetchVideoFromQuery(query: query);
    } catch (e) {
      throw ServiceException(message: "Falha ao buscar o servidor");
    }
  }
}
