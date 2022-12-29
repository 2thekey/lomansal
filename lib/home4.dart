import 'package:flutter/material.dart';
import 'lottoad.dart';

class Home4 extends StatefulWidget {
  const Home4({Key? key}) : super(key: key);

  @override
  State<Home4> createState() => _Home4State();
}

class _Home4State extends State<Home4> {
  @override
  void initState(){
    //showInterstitialAd();  //에드몹 전면광고테스트
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Text('홈4'),
    );
  }
}
