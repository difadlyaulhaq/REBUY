import 'package:flutter/material.dart';
class Onboardpage extends StatelessWidget {
  const Onboardpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 40,
            bottom: 180,
            child:Image.asset('assets/obimage.png')
           )
        ],
      ),
    );
  }
}
