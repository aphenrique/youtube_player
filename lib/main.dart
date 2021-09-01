import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:dio/dio.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //
  void getHttp() async {
    try {
      // TODO: Requisição
      // https://www.youtube.com/watch?v=feQhHStBVLE
    } catch (e) {
      print(e.toString());
    }
  }

  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'B-JKMAxtXGs',
    flags: YoutubePlayerFlags(
      autoPlay: false,
      mute: false,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
        primaryColor: Colors.teal,
        accentColor: Colors.amber,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Youtube Player'),
        ),
        body: Column(
          children: [
            YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: false,
              progressColors: ProgressBarColors(
                bufferedColor: Colors.grey,
                playedColor: Theme.of(context).primaryColor,
              ),
              onReady: () {
                _controller.pause();
              },
              topActions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.refresh),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
