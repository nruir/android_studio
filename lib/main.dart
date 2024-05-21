import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 6), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => HomeScreen(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {

      return Column(
        children: [
          Container(
            width: 360,
            height: 800,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(color: Colors.white),
            child: Stack(
              children: [
                Positioned(
                  left: 58,
                  top: 690,
                  child: Text(
                    '만나서 반갑습니다',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 32,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0.02,
                       // 정상적인 줄 높이 설정
                      decoration: TextDecoration.none,  // 밑줄 없애기
                    ),
                  ),
                ),
                Positioned(
                  left: 42,
                  top: 260,
                  child: Container(
                      width: 270,
                      height: 230,
                      child: Image.asset("image/orange_icon.png")
                  ),
                ),

                Positioned(
                  left: 42,
                  top: 410,
                  child: Container(
                      width: 280,
                      height: 220,
                      child: Image.asset("image/orange_logo.png")
                  ),
                ),

                Positioned(
                  left: 95.86,
                  top: 225.21,
                  child: Transform(
                    transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(0.52),
                    child: Text(
                      '혼자 산 지 얼마나 오랜지',
                      style: TextStyle(
                        color: Color(0xFFFF763B),
                        fontSize: 24,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 0,
                         // 정상적인 줄 높이 설정
                        decoration: TextDecoration.none,  // 밑줄 없애기
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    }

  }


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            width: double.infinity,
            height: 700, // 필요에 따라 height를 조정하세요
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 50), // 원하는 만큼 패딩 조정
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NextPage()),
                    );
                  },
                  child: Container(
                    width: 120,
                    height: 120,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: OvalBorder(
                        side: BorderSide(width: 1, color: Color(0xFFDBDBDB)),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x3F000000),
                          blurRadius: 15,
                          offset: Offset(10, 10),
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Container(
                        width: 42.92,
                        height: 71.53,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("image/record_icon.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}




class NextPage extends StatelessWidget {//ai음성인식 버튼 눌렀을 때 나오는 페이지
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text('Next Page')),
      body: Center(
        child: Text('AI_page'),
      ),
    );
  }
}
