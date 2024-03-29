import 'package:flutter/material.dart';
import 'package:yt_player/core/videos/domain/entities/video_entity.dart';
import 'package:yt_player/core/videos/presenter/controllers/list_videos_controller.dart';
import 'package:yt_player/core/videos/presenter/widgets/video_card.dart';

class VideoList extends StatefulWidget {
  const VideoList({Key? key}) : super(key: key);

  @override
  _VideoListState createState() => _VideoListState();
}

class _VideoListState extends State<VideoList> {
  final ListVideosController _controller = ListVideosController();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _controller.fetchVideos(query: 'hino 007 Maravilhas divinas'),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Video> videos = snapshot.data as List<Video>;

            if (videos.length > 0) {
              return GridView.builder(
                scrollDirection: Axis.vertical,
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  mainAxisExtent: 190,
                  mainAxisSpacing: 4,
                ),
                shrinkWrap: true,
                itemCount: videos.length,
                itemBuilder: (context, index) {
                  return VideoCard(video: videos[index]);
                },
              );
            } else {
              return Center(
                // heightFactor: 2.5,
                child: ListTile(
                  title: Text(
                    'Ops!!\nNão conseguimos nos conectar ao youtube',
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text('Tente novamente mais tarde'),
                  dense: true,
                  leading: Icon(
                    Icons.warning_rounded,
                    color: Colors.red,
                    size: 42,
                  ),
                ),
              );
            }
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        });
  }
}
