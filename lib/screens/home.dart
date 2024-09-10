import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'package:ariya/components/customNavigationBar.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final cards = ['1', '2', '3', '4'];
  final isOpened = [true, false, false, false];
  

  @override
  Widget build(BuildContext context) {
    // final isOpened = useState<List<bool>>([true,false,false,false]);

    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        scrolledUnderElevation: 0,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                SvgPicture.asset(
                  'assets/icons/logo.svg',
                  width: 68,
                  height: 68,
                ),
                Row(children: [
                  const Icon(Icons.notifications_rounded, size: 30, color: Color.fromRGBO(166, 166, 166, 1),),
                  const SizedBox(width: 16,),
                  CircleAvatar(
                    radius: 24,
                    backgroundImage: AssetImage('assets/images/profile.png'),
                  )
                ],),
              ]),
            ]
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                        Text('단단무지', style: TextStyle(fontSize: 24, color: Colors.black, fontWeight: FontWeight.w600),),
                        Text('님, 오늘도 화이팅!🔥', style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w500),),
                      ],),
                      SizedBox(height: 18,),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(999),
                          color: Color.fromRGBO(245, 245, 245, 1),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(children: [
                              SvgPicture.asset('assets/icons/up.svg', width: 24, height: 24,),
                              const SizedBox(width: 12,),
                              const Text('총 자산', style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w600),),
                            ],),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(999),
                                color: const Color.fromRGBO(54, 54, 54, 1),
                              ),
                              child: Text('879,108원', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w600),),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 11,),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(999),
                          color: const Color.fromRGBO(245, 245, 245, 1),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(children: [
                              Text('순자산', style: TextStyle(fontSize: 18, color: Color.fromRGBO(133, 133, 133, 1), fontWeight: FontWeight.w600),),
                            ],),
                            Text('203,984원', style: TextStyle(fontSize: 18, color: Color.fromRGBO(133, 133, 133, 1), fontWeight: FontWeight.w600),),
                          ],
                        ),
                      ),
                      const SizedBox(height: 11,),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(999),
                          color: const Color.fromRGBO(245, 245, 245, 1),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(children: [
                              Text('주식 보유금', style: TextStyle(fontSize: 18, color: Color.fromRGBO(133, 133, 133, 1), fontWeight: FontWeight.w600),),
                            ],),
                            Text('675,124원', style: TextStyle(fontSize: 18, color: Color.fromRGBO(133, 133, 133, 1), fontWeight: FontWeight.w600),),
                          ],
                        ),
                      ),
                      const SizedBox(height: 11,),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(999),
                          color: Color.fromRGBO(245, 245, 245, 1),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(children: [
                              SvgPicture.asset('assets/icons/up.svg', width: 24, height: 24,),
                              const SizedBox(width: 12,),
                              const Text('주식 수익률', style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w600),),
                            ],),
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(999),
                                color: const Color.fromRGBO(54, 54, 54, 1),
                              ),
                              child: Text('11.29%', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w600),),
                            )
                          ],
                        ),
                      ),
                    ],
                  )
                ),
          ),
          Container(height: 6, width: double.infinity, decoration: BoxDecoration(color: Color.fromRGBO(235, 235, 235, 1)),),
          SizedBox(height: 24,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromRGBO(140, 89, 206, 1),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('주식과 투자', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w600),),
                            GestureDetector(
                              onTap: () {
                                
                              },
                              child: SvgPicture.asset('assets/icons/up_purple.svg', width: 28, height: 28,),
                            )
                          ],
                        ),
                        SizedBox(height: 8,),
                        Text('62% 진행됨', style: TextStyle(fontSize: 16, color: Color.fromRGBO(255, 255, 255, 0.7), fontWeight: FontWeight.w500),),
                        SizedBox(height: 12,),
                        LinearPercentIndicator(
                          animation: true,
                          lineHeight: 3.0,
                          animationDuration: 1000,
                          percent: 0.6,
                          barRadius: const Radius.circular(99),
                          progressColor: Colors.white,
                          backgroundColor: const Color.fromRGBO(156, 112, 213, 1),
                        )
                      ]
                    ),
                  ),
                  SizedBox(height: 4,),
                  (isOpened[0]) ? CarouselSlider(
                    items: cards.map((c) => Container(
                      height: 200,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(156, 112, 213, 1),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Center(
                        child: Text(c, style: TextStyle(fontSize: 16),),
                      ),
                    )).toList(),
                    options: CarouselOptions(
                      autoPlay: false,
                      enlargeCenterPage: true,
                      viewportFraction: 0.7,
                      aspectRatio: 2.0,
                      initialPage: 2,
                    ),
                  ) : SizedBox(height: 0,),
                  (isOpened[0]) ? SizedBox(height: 24,) : SizedBox(height: 0,),
                ],
              )
            )
          ),
          SizedBox(height: 16,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromRGBO(241, 127, 245, 1),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('대출과 금리', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w600),),
                            SvgPicture.asset('assets/icons/down.svg', width: 28, height: 28,),
                          ],
                        ),
                        SizedBox(height: 8,),
                        Text('17% 진행됨', style: TextStyle(fontSize: 16, color: Color.fromRGBO(255, 255, 255, 0.7), fontWeight: FontWeight.w500),),
                        SizedBox(height: 12,),
                        LinearPercentIndicator(
                          animation: true,
                          lineHeight: 3.0,
                          animationDuration: 1000,
                          percent: 0.6,
                          barRadius: const Radius.circular(99),
                          progressColor: Colors.white,
                          backgroundColor: const Color.fromRGBO(244, 153, 247, 1),
                        ),
                      ]
                    ),
                  ),
                  SizedBox(height: 4,),
                ],
              )
            )
          ),
          SizedBox(height: 16,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromRGBO(190, 240, 34, 1),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('신용과 리스크 관리', style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w600),),
                            SvgPicture.asset('assets/icons/down_black.svg', width: 28, height: 28,),
                          ],
                        ),
                        SizedBox(height: 8,),
                        Text('새로 시작하기', style: TextStyle(fontSize: 16, color: Color.fromRGBO(79, 79, 79, 1), fontWeight: FontWeight.w500),),
                      ]
                    ),
                  ),
                  SizedBox(height: 4,),
                ],
              )
            )
          ),
          SizedBox(height: 16,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromRGBO(254, 211, 70, 1),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('어쩌구저쩌구', style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.w600),),
                            SvgPicture.asset('assets/icons/down_black.svg', width: 28, height: 28,),
                          ],
                        ),
                        SizedBox(height: 8,),
                        Text('새로 시작하기', style: TextStyle(fontSize: 16, color: Color.fromRGBO(79, 79, 79, 1), fontWeight: FontWeight.w500),),
                      ]
                    ),
                  ),
                  SizedBox(height: 4,),
                ],
              )
            )
          ),
          SizedBox(height: 40,),
        ]),
      ),
      bottomNavigationBar: CustomNaviationBar(currentIndex: 0),
    );
    
  }
}
