import 'package:flutter/material.dart';
import 'lottoad.dart';
import 'lottovar.dart';

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
    return  ListView(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15,),
            Text('1. 로만살은?', style: TextStyle(fontFamily: 'sandolout', fontSize: font_Size, fontWeight: FontWeight.bold,  color: Colors.deepOrange),),
            SizedBox(height: 15,),
            FittedBox(
              child: Text('  - 지금까지의 로또 1등 당첨 번호 통계를 위한 앱입니다.\n\n'
                  '  - 내가 좋아하는 로또번호를 대입하여 지금까지 당첨된 기록을 조회하거나\n\n'
                  '  - 특정 번호와 그동안 함께 출현한 숫자들의 통계를 조회하기도 하고\n\n'
                  ' - 특정 번호 출현 후 그 다음주에 나온 번호 통계 등을 조회할 수 있습니다.\n\n'
                  ' - 꿈에서 나온 상징에 해당하는 번호를 조회할 수도 있지만,\n'
                  '     아무런 과학적인 근거가 없는 내용으로 그냥 재미로 보시면 됩니다.', style: TextStyle(fontFamily: 'sandol', fontSize: font_Size-3, fontWeight: FontWeight.bold,  color: Colors.black),),
            ),

            SizedBox(height: 25,),
            Text('2. 로만살의 개인정보 보호정책은?', style: TextStyle(fontFamily: 'sandolout', fontSize: font_Size, fontWeight: FontWeight.bold,  color: Colors.deepOrange),),
            SizedBox(height: 15,),
            FittedBox(
              child: Text('  - 로만살은 어떠한 개인정보를 요구하지도 저장하지도 않습니다.\n\n'
                  '  - 자세한 개인정보보호정책은\n'
                  '     https://.... 을 참고하시면 됩니다.'
                , style: TextStyle(fontFamily: 'sandol', fontSize: font_Size-3, fontWeight: FontWeight.bold,  color: Colors.black),),
            ),

            SizedBox(height: 25,),
            Text('3. 로또 분석 앱인가요?', style: TextStyle(fontFamily: 'sandolout', fontSize: font_Size, fontWeight: FontWeight.bold,  color: Colors.deepOrange),),
            SizedBox(height: 15,),
            FittedBox(
              child: Text('  - 아닙니다. 하지만 당첨 번호 통계를 내다보니\n'
                  '     뜻하지 않게 분석이 되긴 합니다만, 그 분석이라는 것도\n'
                  '     지금까지의 출현한 당첨번호의 통계에 의해 확률적으로\n'
                  '     많이 출현했던 번호의 조합이라고 할 수 있습니다.\n\n'
                  '  - 통계에 의한 확률이라고는 하지만 아주 미미한 수준의\n'
                  '     정확도를 가지고 있습니다.'
                , style: TextStyle(fontFamily: 'sandol', fontSize: font_Size-3, fontWeight: FontWeight.bold,  color: Colors.black),),
            ),

            SizedBox(height: 25,),
            Text('4. 왜 만들었나요?', style: TextStyle(fontFamily: 'sandolout', fontSize: font_Size, fontWeight: FontWeight.bold,  color: Colors.deepOrange),),
            SizedBox(height: 15,),
            FittedBox(
              child: Text('  - 로또 분석은 의미가 없다고 생각합니다.\n\n'
                  '  - 각 회차별로 독립실행을 하기때문이지만,\n'
                  '     기왕 구입할꺼면 1,2,3,4,5,6 보다는\n'
                  '     좀 더 그럴싸한 번호를 구입하고 싶어서 만들었습니다.'
                , style: TextStyle(fontFamily: 'sandol', fontSize: font_Size-3, fontWeight: FontWeight.bold,  color: Colors.black),),
            ),

            SizedBox(height: 25,),
            Text('5. 앱에 대해 건의하실 사항은?', style: TextStyle(fontFamily: 'sandolout', fontSize: font_Size, fontWeight: FontWeight.bold,  color: Colors.deepOrange),),
            SizedBox(height: 15,),
            FittedBox(
              child: Text('  - 2thekey.01@gmail.com 으로\n'
                  '     의견 보내 주시면 반영토록 노력하겠습니다.\n\n\n\n\n\n'
                , style: TextStyle(fontFamily: 'sandol', fontSize: font_Size-3, fontWeight: FontWeight.bold,  color: Colors.black),),
            ),




          ],
        ),
      ],
    );
  }
}
