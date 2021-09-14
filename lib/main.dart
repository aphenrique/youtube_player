import 'package:flutter/material.dart';
import 'package:yt_player/video_list.dart';

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
            VideoList(),
          ],
        ),
      ),
    );
  }
}
