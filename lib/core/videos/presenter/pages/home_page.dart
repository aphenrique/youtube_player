import 'package:flutter/material.dart';
import 'package:yt_player/core/videos/presenter/widgets/video_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: VideoList(),
    );
  }
}
