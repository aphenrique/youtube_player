import 'dart:core';

import 'package:yt_player/core/videos/domain/entities/video_entity.dart';

class VideoModel extends Video {
  VideoModel({
    required String id,
    required String title,
    required String thumbnailUrl,
    required String channelTitle,
  }) : super(
            id: id,
            title: title,
            thumbnailUrl: thumbnailUrl,
            channelTitle: channelTitle);

  factory VideoModel.fromJson(Map<String, dynamic> video) {
    return VideoModel(
      id: video['id']['videoId'],
      title: video['snippet']['title'],
      thumbnailUrl: video['snippet']['thumbnails']['high']['url'],
      channelTitle: video['snippet']['channelTitle'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'thumbnailUrl': thumbnailUrl,
      'channelTitle': channelTitle,
    };
  }
}
