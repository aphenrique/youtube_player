import 'package:flutter/material.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:yt_player/core/videos/domain/entities/video_class.dart';

class YoutubeVideoPlayer extends StatefulWidget {
  final Video video;

  const YoutubeVideoPlayer({Key? key, required this.video}) : super(key: key);

  @override
  _YoutubeVideoPlayerState createState() => _YoutubeVideoPlayerState();
}

class _YoutubeVideoPlayerState extends State<YoutubeVideoPlayer> {
  //
  late YoutubePlayerController _controller;

  @override
  Widget build(BuildContext context) {
    //
    _controller = YoutubePlayerController(
      initialVideoId: widget.video.id,
      params: YoutubePlayerParams(
        autoPlay: true,
        showControls: true,
        showFullscreenButton: true,
      ),
    );

    return YoutubePlayerIFrame(
      controller: _controller,
      aspectRatio: 16 / 9,
    );
  }
}

// class _YoutubeVideoPlayerState extends State<YoutubeVideoPlayer> {
//   //
//   late YoutubePlayerController _controller;

//   @override
//   Widget build(BuildContext context) {
//     _controller = YoutubePlayerController(
//       initialVideoId: widget.video.id,
//       flags: YoutubePlayerFlags(
//         autoPlay: true,
//         mute: false,
//       ),
//     );

//     return YoutubePlayer(controller: _controller);
//   }
// }
