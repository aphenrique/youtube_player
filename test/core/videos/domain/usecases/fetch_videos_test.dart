import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:yt_player/core/videos/domain/entities/video_entity.dart';
import 'package:yt_player/core/videos/domain/repositories/videos_repository_interface.dart';
import 'package:yt_player/core/videos/domain/usecases/fetch_videos_from_query_usecase.dart';

class VideoRepositoryMock implements VideoRepository {
  @override
  Future<List<Video>> fetchVideosFromQuery({required String query}) {
    var result = jsonDecode(
        """
    {
  "kind": "youtube#searchListResponse",
  "etag": "rBeKGdZsiBbrtTLTPyX1J3R2lVc",
  "nextPageToken": "CAQQAA",
  "regionCode": "BR",
  "pageInfo": {
    "totalResults": 1045,
    "resultsPerPage": 4
  },
  "items": [
    {
      "kind": "youtube#searchResult",
      "etag": "0EZ4xF6JxMeqhxJYGW2GZJd6fzk",
      "id": {
        "kind": "youtube#video",
        "videoId": "3nWiOVkssBE"
      },
      "snippet": {
        "publishedAt": "2017-04-27T19:08:56Z",
        "channelId": "UC-ABrOu6PTc0b-GZQDOnFfw",
        "title": "Hino 7 - Maravilhas Divinas",
        "description": "Cantor Cristão.",
        "thumbnails": {
          "default": {
            "url": "https://i.ytimg.com/vi/3nWiOVkssBE/default.jpg",
            "width": 120,
            "height": 90
          },
          "medium": {
            "url": "https://i.ytimg.com/vi/3nWiOVkssBE/mqdefault.jpg",
            "width": 320,
            "height": 180
          },
          "high": {
            "url": "https://i.ytimg.com/vi/3nWiOVkssBE/hqdefault.jpg",
            "width": 480,
            "height": 360
          }
        },
        "channelTitle": "Rui Magno",
        "liveBroadcastContent": "none",
        "publishTime": "2017-04-27T19:08:56Z"
      }
    },
    {
      "kind": "youtube#searchResult",
      "etag": "w_Whb3ANQPcLXFnGNxZfx7CVxDY",
      "id": {
        "kind": "youtube#video",
        "videoId": "r3-r-YESLfk"
      },
      "snippet": {
        "publishedAt": "2011-11-06T23:56:20Z",
        "channelId": "UCfoyOsYckrg4-h2js4ri_dw",
        "title": "CANTOR CRISTAO HINO 07 MARAVILHAS DIVINAS",
        "description": "MARAVILHAS DIVINAS AO DEUS DE AMOR E DE IMENSA BONDADE COM VOZ DE JUBILO VINDE ACLAMAI COM CORAÇAO TRANSBORDANTE DE ...",
        "thumbnails": {
          "default": {
            "url": "https://i.ytimg.com/vi/r3-r-YESLfk/default.jpg",
            "width": 120,
            "height": 90
          },
          "medium": {
            "url": "https://i.ytimg.com/vi/r3-r-YESLfk/mqdefault.jpg",
            "width": 320,
            "height": 180
          },
          "high": {
            "url": "https://i.ytimg.com/vi/r3-r-YESLfk/hqdefault.jpg",
            "width": 480,
            "height": 360
          }
        },
        "channelTitle": "Daniorj",
        "liveBroadcastContent": "none",
        "publishTime": "2011-11-06T23:56:20Z"
      }
    },
    {
      "kind": "youtube#searchResult",
      "etag": "4qv9Ld4j-u93FtvtgqSX82K3nyE",
      "id": {
        "kind": "youtube#video",
        "videoId": "jxZReA3wA-g"
      },
      "snippet": {
        "publishedAt": "2020-06-27T17:00:14Z",
        "channelId": "UCABEFFUX5jgu6WySEghVWzw",
        "title": "Maravilhas divinas - hino 007 - Cantor Cristão",
        "description": "Ao Deus de amor e de imensa bondade, Com voz de Júbilo vinde aclamai; Com o coração transbordante de graça, Seu grande amor, todos vinde louvai No ...",
        "thumbnails": {
          "default": {
            "url": "https://i.ytimg.com/vi/jxZReA3wA-g/default.jpg",
            "width": 120,
            "height": 90
          },
          "medium": {
            "url": "https://i.ytimg.com/vi/jxZReA3wA-g/mqdefault.jpg",
            "width": 320,
            "height": 180
          },
          "high": {
            "url": "https://i.ytimg.com/vi/jxZReA3wA-g/hqdefault.jpg",
            "width": 480,
            "height": 360
          }
        },
        "channelTitle": "Memória Musical",
        "liveBroadcastContent": "none",
        "publishTime": "2020-06-27T17:00:14Z"
      }
    },
    {
      "kind": "youtube#searchResult",
      "etag": "QmP-SsaLXQO5v0BUEYDBslkSZR8",
      "id": {
        "kind": "youtube#video",
        "videoId": "iXlj3Cn4Gss"
      },
      "snippet": {
        "publishedAt": "2021-09-04T14:00:14Z",
        "channelId": "UCy_tdxU4QyDJ8KwRwolqfkQ",
        "title": "Maravilhas Divinas - 007 Cantor Cristão - Luciana Debortoli",
        "description": "Letra: Salomão Luiz Ginsburg (1867-1927) Música: George Coles Stebbins (1846-1945) Colaboradores: Igreja Batista Nacional de Capanema Vocal: Luciana ...",
        "thumbnails": {
          "default": {
            "url": "https://i.ytimg.com/vi/iXlj3Cn4Gss/default.jpg",
            "width": 120,
            "height": 90
          },
          "medium": {
            "url": "https://i.ytimg.com/vi/iXlj3Cn4Gss/mqdefault.jpg",
            "width": 320,
            "height": 180
          },
          "high": {
            "url": "https://i.ytimg.com/vi/iXlj3Cn4Gss/hqdefault.jpg",
            "width": 480,
            "height": 360
          }
        },
        "channelTitle": "Música Congregacional",
        "liveBroadcastContent": "none",
        "publishTime": "2021-09-04T14:00:14Z"
      }
    }
  ]
}""");

    return (result['items']);
  }
}

void main() {
  VideoRepository repository = VideoRepositoryMock();
  FetchVideosFromQueryUsecase usecase = FetchVideosFromQueryUsecase(repository);

  test('should return a videos list', () async {
    final result = await usecase("HCC Hinário 8 A ti oh Deus");

    expect(result, isA<List<Video>>());
    expect(result.length, 4);
  });
}
