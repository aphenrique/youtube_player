import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:dio/dio.dart';
import 'package:yt_player/video_class.dart';
import 'package:yt_player/yt_api_service.dart';

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
  Future<List<Video>> _getVideos() async {
    return YoutubeApiService.instance.fetchVideosFromYoutubeSearch(query: '');
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
            SizedBox(
              width: 50,
              height: 50,
            ),
            FutureBuilder(
                future: _getVideos(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    List<Video> videos = snapshot.data as List<Video>;
                    return ListView.builder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: videos.length,
                      itemBuilder: (context, index) {
                        Video video = videos[index];
                        return ListTile(
                          title: Text(video.title),
                        );
                      },
                    );
                  }
                  return CircularProgressIndicator();
                }),
          ],
        ),
      ),
    );
  }
}
