import 'dart:collection';
import '../models/relax_videos.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Relax extends StatelessWidget {
  List<RelaxVideo> videos = [
    RelaxVideo(
        "https://www.youtube.com/watch?v=O-6f5wQXSu8&t=24s",
        "Опуштање во 10 минути. Внеси се и број ги своите здивови. Опушти ја напнатоста и уживај. Медитација која помага да се намали анксиозноста. Затвори ги очите и земи длабок здив, прoдолжи со изддишување...",
        "10 минути медитација - анксиозност"),
    RelaxVideo(
        "https://www.youtube.com/watch?v=EpVFSti0Ydg",
        "Опуштање во 10 минути. Внеси се и број ги своите здивови. Опушти ја напнатоста и уживај. Медитација која помага да се намали анксиозноста. Затвори ги очите и земи длабок здив, прoдолжи со изддишување...",
        "Намалување на стрес, анксиозност"),
    RelaxVideo(
        "https://www.youtube.com/watch?v=z6X5oEIg6Ak",
        "Опуштање во 10 минути. Внеси се и број ги своите здивови. Опушти ја напнатоста и уживај. Медитација која помага да се намали анксиозноста. Затвори ги очите и земи длабок здив, прoдолжи со изддишување...",
        "Медитација за намалување на стрес"),
    RelaxVideo(
        "https://www.youtube.com/watch?v=nx1bW26b80s",
        "Опуштање во 10 минути. Внеси се и број ги своите здивови. Опушти ја напнатоста и уживај. Медитација која помага да се намали анксиозноста. Затвори ги очите и земи длабок здив, прoдолжи со изддишување...",
        "Медитација за анксиозност"),
    RelaxVideo(
        "https://www.youtube.com/watch?v=6MYGaUipOR4",
        "Опуштање во 10 минути. Внеси се и број ги своите здивови. Опушти ја напнатоста и уживај. Медитација која помага да се намали анксиозноста. Затвори ги очите и земи длабок здив, прoдолжи со изддишување...",
        "Медитација за анксиозност"),
    RelaxVideo(
        "https://www.youtube.com/watch?v=5d6TriLBQmE",
        "Опуштање во 10 минути. Внеси се и број ги своите здивови. Опушти ја напнатоста и уживај. Медитација која помага да се намали анксиозноста. Затвори ги очите и земи длабок здив, прoдолжи со изддишување...",
        "Медитација за анксиозност"),
    RelaxVideo(
        "https://www.youtube.com/watch?v=sG7DBA-mgFY",
        "Опуштање во 10 минути. Внеси се и број ги своите здивови. Опушти ја напнатоста и уживај. Медитација која помага да се намали анксиозноста. Затвори ги очите и земи длабок здив, прoдолжи со изддишување...",
        "Медитација за анксиозност"),
  ];

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        width: double.infinity,
        height: 500,
        // margin: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(color: Colors.grey[100]),
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          // scrollDirection: Axis.horizontal,
          children: videos.map((video) {
            YoutubePlayerController _controller = YoutubePlayerController(
              initialVideoId:
                  YoutubePlayer.convertUrlToId((video.url as String))!,
              flags: YoutubePlayerFlags(
                autoPlay: false,
                mute: false,
                disableDragSeek: false,
                loop: false,
                isLive: false,
                forceHD: false,
              ),
            );
            return Container(
              // child: Column(
              // children: [
              // Padding(
              //   padding: EdgeInsets.only(top: 10),
              //   child: Text("dsfds"),
              // ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      video.title,
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        backgroundColor: Colors.grey[300],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      child: YoutubePlayer(
                        controller: _controller,
                        liveUIColor: Colors.amber,
                      ),
                    ),
                    Text(video.desc),
                  ],
                ),
              ),
              // ],
              // ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
