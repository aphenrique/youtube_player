class Video {
  final String id;
  final String title;
  final String thumbnailUrl;
  final String channelTitle;

  Video({
    required this.id,
    required this.title,
    required this.thumbnailUrl,
    required this.channelTitle,
  });

  factory Video.fromMap(Map<String, dynamic> video) {
    return Video(
      id: video['id']['videoId'],
      title: video['snippet']['title'],
      thumbnailUrl: video['snippet']['thumbnails']['high']['url'],
      channelTitle: video['snippet']['channelTitle'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'thumbnailUrl': thumbnailUrl,
      'channelTitle': channelTitle,
    };
  }
}
