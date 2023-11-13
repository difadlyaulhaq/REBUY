import 'dart:async';
import 'package:flutter/material.dart';
import 'package:imk/onboard.dart';
import 'package:flutter_svg/svg.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer (const Duration(seconds: 3), () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const Onboardpage(),
        ),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: SvgPicture.asset('assets/union_1.svg'),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: SvgPicture.asset('assets/union_2.svg'),
            ),
            Center(
              child: RichText(
                text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: const <TextSpan>[
                    TextSpan(
                      text: 'RE',
                      style: TextStyle(
                        fontFamily: "Changa",
                        fontSize: 64,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(255, 155, 80, 1),
                        decoration: TextDecoration.none,
                      ),
                    ),
                    TextSpan(
                      text: 'BUY',
                      style: TextStyle(
                        fontFamily: '',
                        fontSize: 60,
                        backgroundColor: Color.fromRGBO(149, 35, 35, 1),
                        color: Colors.white,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
