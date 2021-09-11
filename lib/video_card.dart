import 'package:flutter/material.dart';
import 'package:yt_player/video_class.dart';

class VideoCard extends StatelessWidget {
  final Video video;
  const VideoCard({Key? key, required this.video}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // TODO Exibir o vídeo no player
      },
      child: Card(
        child: Container(
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(4),
                  topRight: Radius.circular(4),
                ),
                child: Align(
                  alignment: Alignment.center,
                  heightFactor: 0.75,
                  child: Image.network(
                    video.thumbnailUrl,
                    fit: BoxFit.cover,
                    loadingBuilder: (context, child, progress) {
                      return progress == null
                          ? child
                          : LinearProgressIndicator();
                    },
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  video.title,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                ),
                subtitle: Text(
                  video.channelTitle,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
