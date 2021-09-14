import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:yt_player/video_class.dart';

class VideoPlayerPage extends StatefulWidget {
  final Video video;

  const VideoPlayerPage({Key? key, required this.video}) : super(key: key);

  @override
  _VideoPlayerPageState createState() => _VideoPlayerPageState();
}

class _VideoPlayerPageState extends State<VideoPlayerPage> {
  late YoutubePlayerController _youtubeController;

  @override
  void dispose() {
    super.dispose();
    _youtubeController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //
    _youtubeController = YoutubePlayerController(
      initialVideoId: widget.video.id,
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.video.title),
      ),
      body: YoutubePlayer(
        controller: _youtubeController,
      ),
    );
  }
}
