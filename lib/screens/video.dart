import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import 'package:ariya/components/customNavigationBar.dart';
import 'package:get/get.dart';

class Video extends StatefulWidget {
  @override
  _VideoState createState() => _VideoState();
}

class _VideoState extends State<Video> {

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'eny2_ptCP7k',
    flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
        ),
    );



    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        scrolledUnderElevation: 0,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Icon(Icons.close_rounded, color: Color.fromRGBO(79, 79, 79, 1),),
                LinearPercentIndicator(
                  lineHeight: 8.0,
                  animationDuration: 1000,
                  percent: 0.6,
                  barRadius: const Radius.circular(99),
                  progressColor: const Color.fromRGBO(156, 112, 213, 1),
                  backgroundColor: const Color.fromRGBO(235, 235, 235, 1),
                  width: 240,
                ),
                Container(
                  width: 52,
                  height: 32,
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                      color: Color(0xFFF4F4F4),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7.68),
                      ),
                  ),
                  child: const Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                            width: double.infinity,
                            child: Text(
                                '4:33',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color(0xFF4F4F4F),
                                    fontSize: 16,
                                    fontFamily: 'Spoqa Han Sans Neo',
                                    fontWeight: FontWeight.w500,
                                    height: 0,
                                    letterSpacing: -0.48,
                                ),
                            ),
                        ),
                      ],
                  ),
              )
              ]),
            ]
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AspectRatio(
          aspectRatio: 9 / 16,  // 세로 비율을 9:16으로 설정
          child: YoutubePlayer(
            controller: _controller,
            showVideoProgressIndicator: true,
            progressIndicatorColor: Colors.amber,
            onReady: () {
              print('Player is ready.');
            },
          ),
        ),
        ]),
      ),
      bottomNavigationBar: CustomNaviationBar(currentIndex: 0),
    );
    
  }
}
