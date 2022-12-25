import 'package:flutter/material.dart';
import 'lottoad.dart';
import 'lottovar.dart';


class Home2 extends StatefulWidget {
  const Home2({Key? key}) : super(key: key);

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  @override
  void initState(){
    //showInterstitialAd();  //에드몹 전면광고테스트
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child:
      Column(
        children: [
          SizedBox(height: 15,),


          InkWell(  //
            onTap: (){
              int resultcnt=0;
              int targetNum=1;

              //for(int i=1; i<last_soonbun-2; i++){

              for(int resultImsi=1; resultImsi < 45;resultImsi++) {
                resultcnt=0;
                //print('더하기'+resultImsi.toString());
                for(int j=1; j< last_soonbun-2 ; j++) {
                  if (num[j][targetNum] + resultImsi == num[j + 1][1] ||
                      num[j][targetNum] + resultImsi == num[j + 1][2] ||
                      num[j][targetNum] + resultImsi == num[j + 1][3] ||
                      num[j][targetNum] + resultImsi == num[j + 1][4] ||
                      num[j][targetNum] + resultImsi == num[j + 1][5] ||
                      num[j][targetNum] + resultImsi == num[j + 1][6]) {
                    //print('있어 = '+i.toString()+'회'+num[i][1].toString()+'더하기'+resultImsi.toString());
                    resultcnt++;
                    //break;
                  } //if
                }//for j

                print(resultImsi.toString()+'='+resultcnt.toString());

                //print('결과 = '+resultImsi.toString());
              }//for resultImsi



              //print('회차 = '+i.toString());


              // setState(() {
              //
              //   resultSangtae=3;
              //
              // });

            },
            child:
            Container(
              width: disWidthSize,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  border: Border.all(
                      color: Colors.black,
                      style: BorderStyle.solid,
                      width: 2
                  )
              ),
              alignment: Alignment.center,
              child: Text('두번째 번호에 더하기', style: TextStyle(fontFamily: 'sandolout', fontSize: 20, fontWeight: FontWeight.bold,  color: Colors.deepPurple),),
            ),
          ),

          SizedBox(height: 15,),
        ],
      ),
    );
  }
}