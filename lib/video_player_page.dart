import 'package:flutter/material.dart';
import 'package:yt_player/core/videos/domain/entities/video_entity.dart';
import 'package:yt_player/youtube_video_player.dart';

class VideoPlayerPage extends StatefulWidget {
  final Video video;

  const VideoPlayerPage({Key? key, required this.video}) : super(key: key);

  @override
  _VideoPlayerPageState createState() => _VideoPlayerPageState();
}

class _VideoPlayerPageState extends State<VideoPlayerPage> {
  @override
  Widget build(BuildContext context) {
    //
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.video.title),
      ),
      body: YoutubeVideoPlayer(
        video: widget.video,
      ),
    );
  }
}
