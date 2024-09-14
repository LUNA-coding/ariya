import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ariya/components/customNavigationBar.dart';
import 'package:ariya/pages/video/controller.dart';

class VideoPage extends GetView<VideoPageController> {
  const VideoPage({super.key});

  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController(
      initialVideoId: 'eny2_ptCP7k',
      flags: const YoutubePlayerFlags(
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
          child: Column(children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              const Icon(
                Icons.close_rounded,
                color: Color.fromRGBO(79, 79, 79, 1),
              ),
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
                  color: const Color(0xFFF4F4F4),
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
          ]),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          AspectRatio(
            aspectRatio: 9 / 16, // 세로 비율을 9:16으로 설정
            child: YoutubePlayer(
              controller: controller,
              showVideoProgressIndicator: true,
              progressIndicatorColor: Colors.amber,
              onReady: () {
                print('Player is ready.');
              },
            ),
          ),
        ]),
      ),
      bottomNavigationBar: const CustomNaviationBar(currentIndex: 0),
    );
  }
}
