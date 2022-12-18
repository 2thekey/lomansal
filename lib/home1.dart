


import 'package:flutter/material.dart';
import 'package:lomansal/main.dart';

import 'button.dart';
import 'lottovar.dart';

import 'package:google_mobile_ads/google_mobile_ads.dart';


InterstitialAd? _interstitialAd;   //에드몹 전면광고 테스트 시작

void _createInterstitialAd() {
  InterstitialAd.load(
      adUnitId: InterstitialAd.testAdUnitId,
      request: AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (InterstitialAd ad) {
          print('$ad loaded');
          _interstitialAd = ad;

        },
        onAdFailedToLoad: (LoadAdError error) {
          print('InterstitialAd failed to load: $error.');

          _interstitialAd = null;

        },
      ));
}

void _showInterstitialAd() {
  if (_interstitialAd == null) {
    print('Warning: attempt to show interstitial before loaded.');
    return;
  }
  _interstitialAd!.fullScreenContentCallback = FullScreenContentCallback(
    onAdShowedFullScreenContent: (InterstitialAd ad) =>
        print('ad onAdShowedFullScreenContent.'),
    onAdDismissedFullScreenContent: (InterstitialAd ad) {
      print('$ad onAdDismissedFullScreenContent.');
      ad.dispose();
      _createInterstitialAd();
    },
    onAdFailedToShowFullScreenContent: (InterstitialAd ad, AdError error) {
      print('$ad onAdFailedToShowFullScreenContent: $error');
      ad.dispose();
      _createInterstitialAd();
    },
  );
  _interstitialAd!.show();
  _interstitialAd = null;
}                          //에드몹 전면광고 테스트 종료



class Home1 extends StatefulWidget {
  const Home1({Key? key}) : super(key: key);

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {

  var bunhoSangtae =List<int>.filled(46, 0);



  @override


  void initState(){
    MobileAds.instance.initialize(); //에드몹초기화
    _createInterstitialAd();
    super.initState();
  }


  Widget build(BuildContext context) {






    disWidthSize=MediaQuery.of(context).size.width - 10; //화면 사이즈
    sizeboxWidth=disWidthSize*0.03; //숫자사이 간격 조정

    conHeight=disWidthSize*0.1;  //숫자한개 컨테이너 높이
    conWidth=disWidthSize*0.1; //숫자한개 컨테이너 넓이
    cspace=disWidthSize*0.04;
    sespace=disWidthSize*0.03;
    font_Size=conWidth/2;




    return ListView(
      children: [
        Column(
          children: [
            // Container(
            //   width: disWidthSize,
            //   height: 100,
            //   //color: Colors.grey[100],
            //   alignment: Alignment.center,
            //   decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(10.0),
            //       //color: Colors.grey[400],
            //       border: Border.all(
            //           color: Colors.black,
            //           style: BorderStyle.solid,
            //           width: 2
            //       )),
            //
            //   child: Text('AD1'),
            //
            // ),
            SizedBox(height: 15,),

            Center( //로또번호 표시 존
              child: Container(
                //height: 300,
                //width: MediaQuery.of(context).size.width - 50,
                width: disWidthSize+4,
                //color: Colors.grey[100],
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    //color: Colors.grey[400],
                    border: Border.all(
                        color: Colors.black,
                        style: BorderStyle.solid,
                        width: 2
                    )),
                child:

                Column(

                  children: [

                    SizedBox(height: 15,),

                    Row(

                      children: [
                        SizedBox(width: sespace,),
                        bbbCheck(1),
                        SizedBox(width: cspace,),
                        bbbCheck(2),
                        SizedBox(width: cspace,),
                        bbbCheck(3),
                        SizedBox(width: cspace,),
                        bbbCheck(4),
                        SizedBox(width: cspace,),
                        bbbCheck(5),
                        SizedBox(width: cspace,),
                        bbbCheck(6),
                        SizedBox(width: cspace,),
                        bbbCheck(7),
                        SizedBox(width: sespace,),
                      ],
                    ),

                    SizedBox(height: 10,),

                    Row(

                      children: [
                        SizedBox(width: sespace,),
                        bbbCheck(8),
                        SizedBox(width: cspace,),
                        bbbCheck(9),
                        SizedBox(width: cspace,),
                        bbbCheck(10),
                        SizedBox(width: cspace,),
                        bbbCheck(11),
                        SizedBox(width: cspace,),
                        bbbCheck(12),
                        SizedBox(width: cspace,),
                        bbbCheck(13),
                        SizedBox(width: cspace,),
                        bbbCheck(14),
                        SizedBox(width: sespace,),
                      ],
                    ),

                    SizedBox(height: 10,),

                    Row(

                      children: [
                        SizedBox(width: sespace,),
                        bbbCheck(15),
                        SizedBox(width: cspace,),
                        bbbCheck(16),
                        SizedBox(width: cspace,),
                        bbbCheck(17),
                        SizedBox(width: cspace,),
                        bbbCheck(18),
                        SizedBox(width: cspace,),
                        bbbCheck(19),
                        SizedBox(width: cspace,),
                        bbbCheck(20),
                        SizedBox(width: cspace,),
                        bbbCheck(21),
                        SizedBox(width: sespace,),
                      ],
                    ),

                    SizedBox(height: 10,),

                    Row(

                      children: [
                        SizedBox(width: sespace,),
                        bbbCheck(22),
                        SizedBox(width: cspace,),
                        bbbCheck(23),
                        SizedBox(width: cspace,),
                        bbbCheck(24),
                        SizedBox(width: cspace,),
                        bbbCheck(25),
                        SizedBox(width: cspace,),
                        bbbCheck(26),
                        SizedBox(width: cspace,),
                        bbbCheck(27),
                        SizedBox(width: cspace,),
                        bbbCheck(28),
                        SizedBox(width: sespace,),
                      ],
                    ),

                    SizedBox(height: 10,),

                    Row(

                      children: [
                        SizedBox(width: sespace,),
                        bbbCheck(29),
                        SizedBox(width: cspace,),
                        bbbCheck(30),
                        SizedBox(width: cspace,),
                        bbbCheck(31),
                        SizedBox(width: cspace,),
                        bbbCheck(32),
                        SizedBox(width: cspace,),
                        bbbCheck(33),
                        SizedBox(width: cspace,),
                        bbbCheck(34),
                        SizedBox(width: cspace,),
                        bbbCheck(35),
                        SizedBox(width: sespace,),
                      ],
                    ),

                    SizedBox(height: 10,),

                    Row(

                      children: [
                        SizedBox(width: sespace,),
                        bbbCheck(36),
                        SizedBox(width: cspace,),
                        bbbCheck(37),
                        SizedBox(width: cspace,),
                        bbbCheck(38),
                        SizedBox(width: cspace,),
                        bbbCheck(39),
                        SizedBox(width: cspace,),
                        bbbCheck(40),
                        SizedBox(width: cspace,),
                        bbbCheck(41),
                        SizedBox(width: cspace,),
                        bbbCheck(42),
                        SizedBox(width: sespace,),
                      ],
                    ),

                    SizedBox(height: 10,),

                    Row(

                      children: [
                        SizedBox(width: sespace,),
                        bbbCheck(43),
                        SizedBox(width: cspace,),
                        bbbCheck(44),
                        SizedBox(width: cspace,),
                        bbbCheck(45),
                        SizedBox(width: cspace,),

                        InkWell(
                          onTap: (){

                            //자동선택 초기화 시작
                            all_clear();
                            //자동선택 초기화 끝


                            var autoNumber = (List<int>.generate(45, (i) =>
                            i+1)..shuffle()).sublist(0,6);
                            //var number = (List<int>.generate(45, (i) =>
                            //                               ++i)..shuffle()).sublist(0,6);

                            autoNumber.sort();
                            // print('당첨번호');
                            // print(autoNumber);
                            //  print(autoNumber[1]);


                            bunhoSangtae[autoNumber[0]]=1;
                            bunhoSangtae[autoNumber[1]]=1;
                            bunhoSangtae[autoNumber[2]]=1;
                            bunhoSangtae[autoNumber[3]]=1;
                            bunhoSangtae[autoNumber[4]]=1;
                            bunhoSangtae[autoNumber[5]]=1;

                            choice_Bunho_Int[0]=autoNumber[0];
                            choice_Bunho_Int[1]=autoNumber[1];
                            choice_Bunho_Int[2]=autoNumber[2];
                            choice_Bunho_Int[3]=autoNumber[3];
                            choice_Bunho_Int[4]=autoNumber[4];
                            choice_Bunho_Int[5]=autoNumber[5];

                            choice_Bunho[0]=choice_Bunho_Int[0].toString();
                            choice_Bunho[1]=choice_Bunho_Int[1].toString();
                            choice_Bunho[2]=choice_Bunho_Int[2].toString();
                            choice_Bunho[3]=choice_Bunho_Int[3].toString();
                            choice_Bunho[4]=choice_Bunho_Int[4].toString();
                            choice_Bunho[5]=choice_Bunho_Int[5].toString();

                            ii=6;

                            setState(() {
                              resultSangtae=0;
                              _showInterstitialAd();  //에드몹 전면광고테스트

                            });

                          },
                          child:
                          Container(
                              height: conHeight,
                              width: conWidth*2+cspace,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  //color: Colors.grey[400],
                                  border: Border.all(
                                      color: Colors.black,
                                      style: BorderStyle.solid,
                                      width: 2
                                  )),

                              alignment: Alignment.center,
                              child:
                              FittedBox(
                                child: Text('자동선택', style: TextStyle(fontFamily: 'sandolout', fontSize: font_Size,   color: Colors.black),),
                              )

                          ),
                        ),

                        SizedBox(width: cspace,),

                        InkWell(
                          onTap: (){

                            all_clear();



                            setState(() {

                              resultBunho.clear();
                              resultSangtae=0;
                              lottoToast('초기화 완료');

                            });

                          },
                          child: Container(
                            height: conHeight,
                            width: conWidth*2+cspace,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                //color: Colors.grey[400],
                                border: Border.all(
                                    color: Colors.black,
                                    style: BorderStyle.solid,
                                    width: 2
                                )),

                            alignment: Alignment.center,
                            child:
                            FittedBox(
                              child: Text('초 기 화', style: TextStyle(fontFamily: 'sandolout', fontSize: font_Size,   color: Colors.black),),
                            ),

                          ),
                        ),



                        // bbbCheck(11),
                        // SizedBox(width: 30,),
                        // bbbCheck(12),
                        // SizedBox(width: 30,),
                        // bbbCheck(13),
                        // SizedBox(width: 30,),
                        // bbbCheck(14),
                      ],
                    ),

                    SizedBox(height: sespace,),

                  ],
                ),



              ),
            ),//로또번호표시존

            SizedBox(height: 20,),












            Center( //선택된 로또번호와 조회버튼
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    //width: MediaQuery.of(context).size.width - 50,
                    width: disWidthSize,
                    color: Colors.grey[100],
                    alignment: Alignment.center,
                    child: //const Text('선택된 로또번호', style: TextStyle(fontFamily: 'sandol', fontSize: 30, fontWeight: FontWeight.bold,  color: Colors.deepOrange),  ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        //SizedBox(width: 15,),





                        InkWell(
                          onTap: (){

                            if(choice_Bunho_Int[0]!=46){
                              bbbCheck2(choice_Bunho_Int[0]);
                            }


                          },
                          child: Container(
                            height: conHeight+3,
                            width: conWidth+3,
                            //color: Colors.orange,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                shape: BoxShape.circle
                            ),
                            child:
                            FittedBox(
                              child: Text(choice_Bunho[0].toString(), style: TextStyle(fontFamily: 'sandol', fontSize: (font_Size+5), fontWeight: FontWeight.bold,  color: Colors.white),  ),
                            ),

                          ),
                        ),

                        SizedBox(width: cspace,),

                        InkWell(
                          onTap: (){

                            if(choice_Bunho_Int[1]!=46){
                              bbbCheck2(choice_Bunho_Int[1]);
                            }


                          },
                          child: Container(
                            height: conHeight+3,
                            width: conWidth+3,
                            //color: Colors.orange,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                shape: BoxShape.circle
                            ),
                            child: FittedBox(
                              child: Text(choice_Bunho[1].toString(), style: TextStyle(fontFamily: 'sandol', fontSize: (font_Size+5), fontWeight: FontWeight.bold,  color: Colors.white),  ),
                            ),
                          ),
                        ),

                        SizedBox(width: 15,),

                        InkWell(
                          onTap: (){

                            if(choice_Bunho_Int[2]!=46){
                              bbbCheck2(choice_Bunho_Int[2]);
                            }


                          },
                          child: Container(
                            height: conHeight+3,
                            width: conWidth+3,
                            //color: Colors.orange,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                shape: BoxShape.circle
                            ),
                            child: FittedBox(
                              child: Text(choice_Bunho[2].toString(), style: TextStyle(fontFamily: 'sandol', fontSize: (font_Size+5), fontWeight: FontWeight.bold,  color: Colors.white),  ),
                            ),
                          ),
                        ),

                        SizedBox(width: 15,),

                        InkWell(
                          onTap: (){

                            if(choice_Bunho_Int[3]!=46){
                              bbbCheck2(choice_Bunho_Int[3]);
                            }


                          },
                          child: Container(
                            height: conHeight+3,
                            width: conWidth+3,
                            //color: Colors.orange,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                shape: BoxShape.circle
                            ),
                            child: FittedBox(
                              child: Text(choice_Bunho[3].toString(), style: TextStyle(fontFamily: 'sandol', fontSize: (font_Size+5), fontWeight: FontWeight.bold,  color: Colors.white),  ),
                            ),
                          ),
                        ),

                        SizedBox(width: 15,),

                        InkWell(
                          onTap: (){

                            if(choice_Bunho_Int[4]!=46){
                              bbbCheck2(choice_Bunho_Int[4]);
                            }


                          },
                          child: Container(
                            height: conHeight+3,
                            width: conWidth+3,
                            //color: Colors.orange,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                shape: BoxShape.circle
                            ),
                            child: FittedBox(
                              child: Text(choice_Bunho[4].toString(), style: TextStyle(fontFamily: 'sandol', fontSize: (font_Size+5), fontWeight: FontWeight.bold,  color: Colors.white),  ),
                            ),
                          ),
                        ),

                        SizedBox(width: 15,),

                        InkWell(
                          onTap: (){

                            if(choice_Bunho_Int[5]!=46){
                              bbbCheck2(choice_Bunho_Int[5]);
                            }


                          },
                          child: Container(
                            height: conHeight+3,
                            width: conWidth+3,
                            //color: Colors.orange,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                shape: BoxShape.circle
                            ),
                            child: FittedBox(
                              child: Text(choice_Bunho[5].toString(), style: TextStyle(fontFamily: 'sandol', fontSize: (font_Size+5), fontWeight: FontWeight.bold,  color: Colors.white),  ),
                            ),
                          ),
                        ),
                      ],
                    ),


                  ),

                  SizedBox(height: 20,),


                  Column(
                    children: [
                      InkWell(
                        onTap: (){

                          if(ii<3){   //선택된 번호가 2개 이하인 경우 경고 출력 후 상태0
                            //resultSangtae = 0;
                            showDialog(   //경고창
                                context: context,
                                //barrierDismissible - Dialog를 제외한 다른 화면 터치 x
                                barrierDismissible: false,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    // RoundedRectangleBorder - Dialog 화면 모서리 둥글게 조절
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10.0)),
                                    //Dialog Main Title
                                    title: Column(
                                      children: <Widget>[
                                        new Text("'번호 선택 오류'", style: TextStyle(fontFamily: 'sandol', fontSize: 18, fontWeight: FontWeight.bold,  color: Colors.red),),
                                      ],
                                    ),
                                    //
                                    content: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "번호를 3개 이상 선택해주세요.", style: TextStyle(fontFamily: 'sandol', fontSize: 20, fontWeight: FontWeight.bold,  color: Colors.red),
                                        ),
                                      ],
                                    ),
                                    actions: <Widget>[
                                      new ElevatedButton(
                                        child: new Text("확인"),
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                      ),
                                    ],
                                  );
                                });
                          }

                          else{


                            // dangchum_Count.clear();
                            // dangchum_Soonbun.clear();
                            // dangchum3.clear();
                            // dangchum2.clear();
                            // dangchum1.clear();

                            int dang=0;

                            dangchum_Count=[0,0,0,0,0,0];
                            dangchum_Soonbun=[' ',' ',' ',' ',' ',' '];
                            // dangchum3.add(0);
                            // dangchum4.add(0);
                            // dangchum5.add(0);

                            for (int i =1 ; i < last_soonbun; i++) {
                              for (int j = 1; j < 7; j++) {
                                for (int k = 0; k < 6; k++) {
                                  if (num[i][j] == choice_Bunho_Int[k]) {
                                    dang++;
                                    break;
                                  }  //if

                                  //  print('i:'+i.toString()+',j:'+j.toString()+',k:'+k.toString());


                                } //for k
                              }  //for j

                              switch(dang) {
                                case 0 :
                                case 1 :
                                case 2 : break; //print('NO 당첨'); break;
                                case 3 : dangchum_Count[5]++;
                                if (dangchum_Count[5]%5 > 0 && dangchum_Count[5] >= 1) {
                                  dangchum_Soonbun[5]=dangchum_Soonbun[5]+num[i][0].toString()+','; break;
                                }
                                else {
                                  dangchum_Soonbun[5]=dangchum_Soonbun[5]+num[i][0].toString()+',\n'; break;
                                }

                                case 4 : dangchum_Count[4]++;
                                if (dangchum_Count[4]%7 > 0 && dangchum_Count[4] >= 1) {
                                  dangchum_Soonbun[4]=dangchum_Soonbun[4]+num[i][0].toString()+','; break;
                                }
                                else {
                                  dangchum_Soonbun[4]=dangchum_Soonbun[4]+num[i][0].toString()+',\n'; break;
                                }
                                case 5 : if(num[i][7]==choice_Bunho_Int[0] ||  num[i][7]==choice_Bunho_Int[1] || num[i][7]==choice_Bunho_Int[2] || num[i][7]==choice_Bunho_Int[3] || num[i][7]==choice_Bunho_Int[4] || num[i][7]==choice_Bunho_Int[5])
                                {
                                  dangchum_Count[2]++;
                                  if (dangchum_Count[2]%7 > 0 && dangchum_Count[2] >= 1) {

                                    dangchum_Soonbun[2]=dangchum_Soonbun[2]+num[i][0].toString()+','; break;
                                  }
                                  else {

                                    dangchum_Soonbun[2]=dangchum_Soonbun[2]+num[i][0].toString()+',\n'; break;
                                  }
                                } //if
                                dangchum_Count[3]++;
                                if (dangchum_Count[3]%7 > 0 && dangchum_Count[3] >= 1) {

                                  dangchum_Soonbun[3]=dangchum_Soonbun[3]+num[i][0].toString()+','; break;
                                }
                                else {

                                  dangchum_Soonbun[3]=dangchum_Soonbun[3]+num[i][0].toString()+',\n'; break;
                                }
                                case 6 : dangchum_Count[1]++;
                                if (dangchum_Count[1]%7 > 0 && dangchum_Count[1] >= 1) {
                                  dangchum_Soonbun[1]=dangchum_Soonbun[1]+num[i][0].toString()+','; break;
                                }
                                else {
                                  dangchum_Soonbun[1]=dangchum_Soonbun[1]+num[i][0].toString()+',\n'; break;
                                }

                              } //switch
                              dang=0;
                            }  //for i
                            resultSangtae=1;


                            heart_count();
                            lottoToast('조회 완료 ♥ x '+heartCount.toString());

                          }   //if-else 번호가 3개이상 선택시

                          //print('5등:'+dangchum5[0].toString()+',   4등:'+dangchum4[0].toString()+',   3등:'+dangchum3[0].toString()+
                          //  ',   2등:'+dangchum2[0].toString()+',   1등:'+dangchum1[0].toString());   //당첨 누적. 3=5등, 4=4등, 5=3등

                          //print('5등 회차:  $dangchum5');
                          //print('4등 회차:  $dangchum4');
                          //print('3등 회차:  $dangchum3');
                          //print('2등 회차:  $dangchum2');
                          //print('1등 회차:  $dangchum1');


                          setState(() {
                            // const CircularProgressIndicator();
                            // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("조회가 완료되었습니다.")));


                          });






                        },
                        child:
                        buttonCheck1(resultSangtae),  // 버튼1 '그동안 당첨내역 조회하기 (번호 3개 이상 선택)'

                      ),

                      SizedBox(height: 15,),


                      InkWell(
                        onTap: (){

                          //함께출현한 수 처리
                          // showToast('준비중입니다!!');
                          // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("준비중입니다!!!")));

                          naonCount=0;
                          naonTotal='';

                          resultBunho.clear();
                          for(int jj=0; jj<46; jj++) {
                            // resultBunho[jj].numLotto = jj;
                            // resultBunho[jj].countLotto=0;
                            resultBunho.add(MyScore(jj, 0));
                            //print(resultBunho[jj].numLotto);
                          }

                          var resultA = -1;
                          var resultB = -1;
                          var resultC = -1;
                          var resultD = -1;
                          var resultE = -1;

                          switch(ii) {
                            case 0: { break;}
                            case 1:{

                              for (int i = 1; i < last_soonbun ; i++) {
                                if((num[i][0]!=choice_Bunho_Int[0]) && (num[i][7]!=choice_Bunho_Int[0])) {
                                  resultA = num[i].indexOf(choice_Bunho_Int[0]); //1회차부터 해당번호가 존재하는지 확인 //없으면 -1 반환
                                  if(resultA!=-1){
                                    for (int j=1; j<7; j++){
                                      // print(num[i][j].toString());
                                      resultBunho[num[i][j]].countLotto++; //해당번호 카운트
                                    } //for

                                    resultBunho[num[i][resultA]].countLotto--; //선택된 번호는 카운트에서 제외 해야함
                                    naonCount++;
                                    //print('i='+i.toString()+','+resultBunho[num[i][resultA]].toString());

                                  } //if
                                } //if
                              } //for

                              naonTotal=choice_Bunho_Int[0].toString()+'번은 지금까지 '+naonCount.toString()+'번 출현했습니다.';

                              resultBunho.sort((b, a) => a.countLotto.compareTo(b.countLotto));
                              // print(resultBunho);
                              resultBunho.removeWhere((item) => item.countLotto==0);
                              // print(resultBunho);
                              break;
                            } //case 1

                            case 2:{
                              for (int i = 1; i < last_soonbun ; i++) {
                                if((num[i][0]!=choice_Bunho_Int[0]) && (num[i][7]!=choice_Bunho_Int[0]) &&
                                    (num[i][0]!=choice_Bunho_Int[1]) && (num[i][7]!=choice_Bunho_Int[1])) {
                                  resultA = num[i].indexOf(choice_Bunho_Int[0]); //1회차부터 해당번호가 존재하는지 확인 //없으면 -1 반환
                                  resultB = num[i].indexOf(choice_Bunho_Int[1]); //1회차부터 해당번호가 존재하는지 확인 //없으면 -1 반환
                                  if(resultA!=-1 && resultB!=-1){
                                    for (int j=1; j<7; j++){
                                      // print(num[i][j].toString());
                                      resultBunho[num[i][j]].countLotto++; //해당번호 카운트
                                    } //for

                                    resultBunho[num[i][resultA]].countLotto--; //선택된 번호는 카운트에서 제외 해야함
                                    resultBunho[num[i][resultB]].countLotto--; //선택된 번호는 카운트에서 제외 해야함
                                    naonCount++;
                                    //print('i='+i.toString()+','+resultBunho[num[i][resultA]].toString());

                                  } //if
                                } //if
                              } //for

                              naonTotal=choice_Bunho_Int[0].toString()+','+ choice_Bunho_Int[1].toString()+'번은 지금까지 '+naonCount.toString()+'번 함께 출현했습니다.';

                              resultBunho.sort((b, a) => a.countLotto.compareTo(b.countLotto));
                              // print(resultBunho);
                              resultBunho.removeWhere((item) => item.countLotto==0);
                              // print(resultBunho);
                              break;
                            }

                            case 3:{
                              for (int i = 1; i < last_soonbun ; i++) {
                                if((num[i][0]!=choice_Bunho_Int[0]) && (num[i][7]!=choice_Bunho_Int[0]) &&
                                    (num[i][0]!=choice_Bunho_Int[1]) && (num[i][7]!=choice_Bunho_Int[1]) &&
                                    (num[i][0]!=choice_Bunho_Int[2]) && (num[i][7]!=choice_Bunho_Int[2]) ) {
                                  resultA = num[i].indexOf(choice_Bunho_Int[0]); //1회차부터 해당번호가 존재하는지 확인 //없으면 -1 반환
                                  resultB = num[i].indexOf(choice_Bunho_Int[1]); //1회차부터 해당번호가 존재하는지 확인 //없으면 -1 반환
                                  resultC = num[i].indexOf(choice_Bunho_Int[2]); //1회차부터 해당번호가 존재하는지 확인 //없으면 -1 반환
                                  if(resultA!=-1 && resultB!=-1 && resultC!=-1){
                                    for (int j=1; j<7; j++){
                                      // print(num[i][j].toString());
                                      resultBunho[num[i][j]].countLotto++; //해당번호 카운트
                                    } //for

                                    resultBunho[num[i][resultA]].countLotto--; //선택된 번호는 카운트에서 제외 해야함
                                    resultBunho[num[i][resultB]].countLotto--; //선택된 번호는 카운트에서 제외 해야함
                                    resultBunho[num[i][resultC]].countLotto--; //선택된 번호는 카운트에서 제외 해야함
                                    naonCount++;
                                    //print('i='+i.toString()+','+resultBunho[num[i][resultA]].toString());

                                  } //if
                                } //if
                              } //for

                              naonTotal=
                                  choice_Bunho_Int[0].toString()+','+
                                      choice_Bunho_Int[1].toString()+','+
                                      choice_Bunho_Int[2].toString()+
                                      '번은 지금까지 '+naonCount.toString()+'번 함께 출현했습니다.';

                              resultBunho.sort((b, a) => a.countLotto.compareTo(b.countLotto));
                              // print(resultBunho);
                              resultBunho.removeWhere((item) => item.countLotto==0);
                              // print(resultBunho);
                              break;
                            }//case 3

                            case 4:{
                              for (int i = 1; i < last_soonbun ; i++) {
                                if((num[i][0]!=choice_Bunho_Int[0]) && (num[i][7]!=choice_Bunho_Int[0]) &&
                                    (num[i][0]!=choice_Bunho_Int[1]) && (num[i][7]!=choice_Bunho_Int[1]) &&
                                    (num[i][0]!=choice_Bunho_Int[2]) && (num[i][7]!=choice_Bunho_Int[2]) &&
                                    (num[i][0]!=choice_Bunho_Int[3]) && (num[i][7]!=choice_Bunho_Int[3])) {
                                  resultA = num[i].indexOf(choice_Bunho_Int[0]); //1회차부터 해당번호가 존재하는지 확인 //없으면 -1 반환
                                  resultB = num[i].indexOf(choice_Bunho_Int[1]); //1회차부터 해당번호가 존재하는지 확인 //없으면 -1 반환
                                  resultC = num[i].indexOf(choice_Bunho_Int[2]); //1회차부터 해당번호가 존재하는지 확인 //없으면 -1 반환
                                  resultD = num[i].indexOf(choice_Bunho_Int[3]); //1회차부터 해당번호가 존재하는지 확인 //없으면 -1 반환
                                  if(resultA!=-1 && resultB!=-1 && resultC!=-1 && resultD!=-1 ){
                                    for (int j=1; j<7; j++){
                                      // print(num[i][j].toString());
                                      resultBunho[num[i][j]].countLotto++; //해당번호 카운트
                                    } //for

                                    resultBunho[num[i][resultA]].countLotto--; //선택된 번호는 카운트에서 제외 해야함
                                    resultBunho[num[i][resultB]].countLotto--; //선택된 번호는 카운트에서 제외 해야함
                                    resultBunho[num[i][resultC]].countLotto--; //선택된 번호는 카운트에서 제외 해야함
                                    resultBunho[num[i][resultD]].countLotto--; //선택된 번호는 카운트에서 제외 해야함
                                    naonCount++;
                                    //print('i='+i.toString()+','+resultBunho[num[i][resultA]].toString());

                                  } //if
                                } //if
                              } //for

                              naonTotal=
                                  choice_Bunho_Int[0].toString()+','+
                                      choice_Bunho_Int[1].toString()+','+
                                      choice_Bunho_Int[2].toString()+','+
                                      choice_Bunho_Int[3].toString()+
                                      '번은 지금까지 '+naonCount.toString()+'번 함께 출현했습니다.';

                              resultBunho.sort((b, a) => a.countLotto.compareTo(b.countLotto));
                              // print(resultBunho);
                              resultBunho.removeWhere((item) => item.countLotto==0);
                              // print(resultBunho);
                              break;
                            }//case 4

                            case 5:{
                              for (int i = 1; i < last_soonbun ; i++) {
                                if((num[i][0]!=choice_Bunho_Int[0]) && (num[i][7]!=choice_Bunho_Int[0]) &&
                                    (num[i][0]!=choice_Bunho_Int[1]) && (num[i][7]!=choice_Bunho_Int[1]) &&
                                    (num[i][0]!=choice_Bunho_Int[2]) && (num[i][7]!=choice_Bunho_Int[2]) &&
                                    (num[i][0]!=choice_Bunho_Int[3]) && (num[i][7]!=choice_Bunho_Int[3]) &&
                                    (num[i][0]!=choice_Bunho_Int[4]) && (num[i][7]!=choice_Bunho_Int[4])) {
                                  resultA = num[i].indexOf(choice_Bunho_Int[0]); //1회차부터 해당번호가 존재하는지 확인 //없으면 -1 반환
                                  resultB = num[i].indexOf(choice_Bunho_Int[1]); //1회차부터 해당번호가 존재하는지 확인 //없으면 -1 반환
                                  resultC = num[i].indexOf(choice_Bunho_Int[2]); //1회차부터 해당번호가 존재하는지 확인 //없으면 -1 반환
                                  resultD = num[i].indexOf(choice_Bunho_Int[3]); //1회차부터 해당번호가 존재하는지 확인 //없으면 -1 반환
                                  resultE = num[i].indexOf(choice_Bunho_Int[4]); //1회차부터 해당번호가 존재하는지 확인 //없으면 -1 반환

                                  if(resultA!=-1 && resultB!=-1 && resultC!=-1 && resultD!=-1 && resultE!=-1){
                                    for (int j=1; j<7; j++){
                                      // print(num[i][j].toString());
                                      resultBunho[num[i][j]].countLotto++; //해당번호 카운트
                                    } //for

                                    resultBunho[num[i][resultA]].countLotto--; //선택된 번호는 카운트에서 제외 해야함
                                    resultBunho[num[i][resultB]].countLotto--; //선택된 번호는 카운트에서 제외 해야함
                                    resultBunho[num[i][resultC]].countLotto--; //선택된 번호는 카운트에서 제외 해야함
                                    resultBunho[num[i][resultD]].countLotto--; //선택된 번호는 카운트에서 제외 해야함
                                    resultBunho[num[i][resultE]].countLotto--; //선택된 번호는 카운트에서 제외 해야함
                                    naonCount++;
                                    //print('i='+i.toString()+','+resultBunho[num[i][resultA]].toString());

                                  } //if
                                } //if
                              } //for

                              naonTotal=
                                  choice_Bunho_Int[0].toString()+','+
                                      choice_Bunho_Int[1].toString()+','+
                                      choice_Bunho_Int[2].toString()+','+
                                      choice_Bunho_Int[3].toString()+','+
                                      choice_Bunho_Int[4].toString()+
                                      '번은 지금까지 '+naonCount.toString()+'번 함께 출현했습니다.';

                              resultBunho.sort((b, a) => a.countLotto.compareTo(b.countLotto));
                              // print(resultBunho);
                              resultBunho.removeWhere((item) => item.countLotto==0);
                              // print(resultBunho);
                              break;
                            }//case 5
                            case 6 : { break;}

                          } //switch

                          setState(() {

                            if(ii==0 || ii==6) {
                              resultSangtae = 0;


                              showDialog(   //경고창
                                  context: context,
                                  //barrierDismissible - Dialog를 제외한 다른 화면 터치 x
                                  barrierDismissible: false,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      // RoundedRectangleBorder - Dialog 화면 모서리 둥글게 조절
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10.0)),
                                      //Dialog Main Title
                                      title: Column(
                                        children: <Widget>[
                                          new Text("'번호 선택 오류'", style: TextStyle(fontFamily: 'sandol', fontSize: 18, fontWeight: FontWeight.bold,  color: Colors.red),),
                                        ],
                                      ),
                                      //
                                      content: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            "번호를 1개 이상 5개 이하로 선택해주세요.", style: TextStyle(fontFamily: 'sandol', fontSize: 20, fontWeight: FontWeight.bold,  color: Colors.red),
                                          ),
                                        ],
                                      ),
                                      actions: <Widget>[
                                        new ElevatedButton(
                                          child: new Text("확인"),
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                        ),
                                      ],
                                    );
                                  });

                              //ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("번호를 1개 이상 5개 이하로 선택해주세요.")));
                            }
                            else {
                              resultSangtae = 2;


                              heart_count();
                              lottoToast('조회 완료 ♥ x '+heartCount.toString());
                            }

                          });

                        },
                        child:
                        buttonCheck2(resultSangtae),  // 버튼2 '함께 출현한 번호 조회

                      ),

                      SizedBox(height: 15,),


                      InkWell(  //그동안 출현한 번호별 통계
                        onTap: (){

                          all_clear();
                          for(int jj=0; jj<46; jj++) {
                            // resultBunho[jj].numLotto = jj;
                            // resultBunho[jj].countLotto=0;
                            resultBunho.add(MyScore(jj, 0));
                            //print(resultBunho[jj].numLotto);
                          }


                          for (int i = 1; i < last_soonbun ; i++) {
                            for (int j=1; j<7; j++){
                              resultBunho[num[i][j]].countLotto++; //해당번호 카운트
                            } //for
                          } //for
                          resultBunho.sort((b, a) => a.countLotto.compareTo(b.countLotto));  // 역순정렬
                          resultBunho.removeWhere((item) => item.countLotto==0);  //0번 출현한 번호는 제거

                          setState(() {

                            resultSangtae=3;
                            lottoToast('조회 완료');

                          });

                        },
                        child:
                        buttonCheck3(resultSangtae),  // 버튼3 '그동안 출현한 번호별 통계

                      ),

                      SizedBox(height: 15,),


                      InkWell(  //지난주 당첨 번호로 분석
                        onTap: (){

                          all_clear();
                          for(int jj=0; jj<46; jj++) {
                            resultBunho.add(MyScore(jj, 0));
                          }

                          for(int i=1; i<last_soonbun-2;i++) {
                            if(num[i][1]==num[last_soonbun-1][1] || num[i][2]==num[last_soonbun-1][1] || num[i][3]==num[last_soonbun-1][1] ||
                                num[i][4]==num[last_soonbun-1][1] || num[i][5]==num[last_soonbun-1][1] || num[i][6]==num[last_soonbun-1][1]
                            )
                            {  //지난주 당천번호 첫번째 번호가 해당 회차에 있으면 그다음주 출현번호를 카운트
                              for (int j=1; j<7; j++){
                                resultBunho[num[i+1][j]].countLotto++; //해당번호 카운트
                              } //for j
                            } //if

                            if(
                            num[i][1]==num[last_soonbun-1][2] || num[i][2]==num[last_soonbun-1][2] || num[i][3]==num[last_soonbun-1][2] ||
                                num[i][4]==num[last_soonbun-1][2] || num[i][5]==num[last_soonbun-1][2] || num[i][6]==num[last_soonbun-1][2]
                            )
                            {  //지난주 당천번호 두번째 번호가 해당 회차에 있으면 그다음주 출현번호를 카운트
                              for (int j=1; j<7; j++){
                                resultBunho[num[i+1][j]].countLotto++; //해당번호 카운트
                              } //for j
                            } //if

                            if(
                            num[i][1]==num[last_soonbun-1][3] || num[i][2]==num[last_soonbun-1][3] || num[i][3]==num[last_soonbun-1][3] ||
                                num[i][4]==num[last_soonbun-1][3] || num[i][5]==num[last_soonbun-1][3] || num[i][6]==num[last_soonbun-1][3]
                            )
                            {  //지난주 당천번호 세번재 번호가 해당 회차에 있으면 그다음주 출현번호를 카운트
                              for (int j=1; j<7; j++){
                                resultBunho[num[i+1][j]].countLotto++; //해당번호 카운트
                              } //for j
                            } //if

                            if(
                            num[i][1]==num[last_soonbun-1][4] || num[i][2]==num[last_soonbun-1][4] || num[i][3]==num[last_soonbun-1][4] ||
                                num[i][4]==num[last_soonbun-1][4] || num[i][5]==num[last_soonbun-1][4] || num[i][6]==num[last_soonbun-1][4]
                            )
                            {  //지난주 당천번호 네번재 번호가 해당 회차에 있으면 그다음주 출현번호를 카운트
                              for (int j=1; j<7; j++){
                                resultBunho[num[i+1][j]].countLotto++; //해당번호 카운트
                              } //for j
                            } //if

                            if(
                            num[i][1]==num[last_soonbun-1][5] || num[i][2]==num[last_soonbun-1][5] || num[i][3]==num[last_soonbun-1][5] ||
                                num[i][4]==num[last_soonbun-1][5] || num[i][5]==num[last_soonbun-1][5] || num[i][6]==num[last_soonbun-1][5]
                            )
                            {  //지난주 당천번호 다섯번재 번호가 해당 회차에 있으면 그다음주 출현번호를 카운트
                              for (int j=1; j<7; j++){
                                resultBunho[num[i+1][j]].countLotto++; //해당번호 카운트
                              } //for j
                            } //if

                            if(
                            num[i][1]==num[last_soonbun-1][6] || num[i][2]==num[last_soonbun-1][6] || num[i][3]==num[last_soonbun-1][6] ||
                                num[i][4]==num[last_soonbun-1][6] || num[i][5]==num[last_soonbun-1][6] || num[i][6]==num[last_soonbun-1][6]
                            )
                            {  //지난주 당천번호 여섯번재 번호가 해당 회차에 있으면 그다음주 출현번호를 카운트
                              for (int j=1; j<7; j++){
                                resultBunho[num[i+1][j]].countLotto++; //해당번호 카운트
                              } //for j
                            } //if


                          } //for i

                          resultBunho.sort((b, a) => a.countLotto.compareTo(b.countLotto));  // 역순정렬
                          resultBunho.removeWhere((item) => item.countLotto==0);  //0번 출현한 번호는 제거


                          setState(() {

                            resultSangtae=4;

                            heart_count();
                            lottoToast('조회 완료 ♥ x '+heartCount.toString());

                          });

                        },
                        child:
                        buttonCheck4(resultSangtae),  // 버튼4 '최종회차 당첨 번호 이후 출현한 번호 통계 버튼 처리
                      ),

                      SizedBox(height: 15,),
                      FittedBox(
                        child: Text('※ 모든 통계는 보너스번호를 제외한 통계입니다.\n     오직 1등이 목표니까요.', style: TextStyle(fontFamily: 'sandol', fontSize: font_Size, fontWeight: FontWeight.bold,  color: Colors.deepOrange),),
                      )

                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 25,),





            //Text(bunhoSangtae.toString()),   //중간결과표시
            // Text(choice_Bunho.toString()),
            //Text(choice_Bunho_Int.toString()),
            //Text('ii='+ii.toString()),
            //



            resultScreen(resultSangtae),

            // Container(
            //   width: disWidthSize,
            //   height: 100,
            //   //color: Colors.grey[100],
            //   alignment: Alignment.center,
            //   decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(10.0),
            //       //color: Colors.grey[400],
            //       border: Border.all(
            //           color: Colors.black,
            //           style: BorderStyle.solid,
            //           width: 2
            //       )),
            //
            //   child: Text('AD2'),
            //
            // ),

            SizedBox(height: 25,),




          ],
        ),
      ],
    );
  }



  bbbCheck(int choiceNum) {
    var mTemp=0;

    //print(choiceNum);


    if (bunhoSangtae[choiceNum]==0 ){ //번호가 선택되었을때



      return InkWell(
        onTap: (){
          if(ii==6){

            return setState(() {

            });}
          bunhoSangtae[choiceNum]=1;
          choice_Bunho[ii]=choiceNum.toString();
          ii++;




          mTemp=0;
          setState(() {

            if(ii > -1)
            {
              for(int i=0; i< ii+mTemp; i++)
              {
                //var aa=choice_Bunho[i].to
                choice_Bunho_Int[i]=int.parse(choice_Bunho[i]);
              }

              choice_Bunho_Int.sort();

              for(int i=0; i< ii+mTemp; i++)
              {
                //var aa=choice_Bunho[i].to
                if(choice_Bunho_Int[i]!=46) {
                  choice_Bunho[i] = choice_Bunho_Int[i].toString();
                }
                else
                {
                  choice_Bunho[i]=' ';
                }

              }

            }

          });
        },
        child: Container(
          height: conHeight,
          width: conWidth,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              //color: Colors.grey[400],
              border: Border.all(
                  color: Colors.red,
                  style: BorderStyle.solid,
                  width: 1
              )),

          alignment: Alignment.center,
          child:
          FittedBox(
            child: Text('$choiceNum', style: TextStyle(fontFamily: 'sandol', fontSize: font_Size,   color: Colors.black),),
          ),

        ),
      );
    }

    else { //번호가 해제되었을때

      return InkWell(
        onTap: (){
          bunhoSangtae[choiceNum]=0;

          //var tempBunho=choice_Num.toString();


          var tem1=choice_Bunho.indexOf(choiceNum.toString());

          choice_Bunho[choice_Bunho.indexOf(choiceNum.toString()).toInt()]='46';
          choice_Bunho_Int[tem1]=46;


          ii--;
          mTemp=1;


          setState(() {

            if(ii > -1)
            {
              for(int i=0; i< ii+mTemp; i++)
              {
                //var aa=choice_Bunho[i].to
                choice_Bunho_Int[i]=int.parse(choice_Bunho[i]);
              }

              choice_Bunho_Int.sort();

              for(int i=0; i< ii+mTemp; i++)
              {
                //var aa=choice_Bunho[i].to
                if(choice_Bunho_Int[i]!=46) {
                  choice_Bunho[i] = choice_Bunho_Int[i].toString();
                }
                else
                {
                  choice_Bunho[i]=' ';
                }

              }

            }

          });
        },
        child: Container(
          height: conHeight,
          width: conWidth,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              color: Colors.black,
              border: Border.all(
                  color: Colors.blue,
                  style: BorderStyle.solid,
                  width: 1
              )),

          alignment: Alignment.center,
          child:
          Text('$choiceNum', style:  TextStyle(fontFamily: 'sandol', fontSize: font_Size,   color: Colors.white),),
        ),
      );
    }
  }

  void bbbCheck2(int choice_bunho_int) {  //선택된 번호 클릭시 번호 무조건 해제
    var mTemp=0;


    bunhoSangtae[choice_bunho_int]=0;

    //var tempBunho=choice_Num.toString();


    var tem1=choice_Bunho.indexOf(choice_bunho_int.toString());

    choice_Bunho[choice_Bunho.indexOf(choice_bunho_int.toString()).toInt()]='46';
    choice_Bunho_Int[tem1]=46;


    ii--;
    mTemp=1;


    setState(() {

      if(ii > -1)
      {
        for(int i=0; i< ii+mTemp; i++)
        {
          //var aa=choice_Bunho[i].to
          choice_Bunho_Int[i]=int.parse(choice_Bunho[i]);
        }

        choice_Bunho_Int.sort();

        for(int i=0; i< ii+mTemp; i++)
        {
          //var aa=choice_Bunho[i].to
          if(choice_Bunho_Int[i]!=46) {
            choice_Bunho[i] = choice_Bunho_Int[i].toString();
          }
          else
          {
            choice_Bunho[i]=' ';
          }

        }

      }

    });
  }

  resultScreen(int screen) {   //결과값표시화면





    switch(screen) {
      case 0 : {
        return Center( //결과값 표시 존


          child: Container(
            height: 100,
            width:disWidthSize,
            //MediaQuery.of(context).size.width - 50,
            color: Colors.grey[100],
            alignment: Alignment.center,

            child:
            FittedBox(
                child: Text('번호 선택 후 조회버튼 대기중...', style: TextStyle(fontFamily: 'sandol', fontSize: font_Size, fontWeight: FontWeight.bold,  color: Colors.black),)
            ),


          ),

        );

      }  //case 0 아무것도 선택 안했을때 출력


      case 1:{
        return Center( //결과값 표시 존


          child: Container(
            //height: 350,
            width:disWidthSize,
            //MediaQuery.of(context).size.width - 50,
            color: Colors.grey[100],
            alignment: Alignment.topCenter,

            child:
            Column(

              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(width: disWidthSize*0.16, height:conHeight, alignment : Alignment.center, child:Text('등  수', style: TextStyle(fontFamily: 'sandol', fontSize: font_Size, fontWeight: FontWeight.bold,  color: Colors.black),),),

                    Container(width:disWidthSize*0.24, height:conHeight, alignment : Alignment.center, child: Text('당첨횟수', style: TextStyle(fontFamily: 'sandol', fontSize: font_Size, fontWeight: FontWeight.bold,  color: Colors.black),)),
                    Container(width:disWidthSize*0.6, height:conHeight, alignment : Alignment.center, child: Text('회           차', style: TextStyle(fontFamily: 'sandol', fontSize: font_Size, fontWeight: FontWeight.bold,  color: Colors.black),)),

                  ],
                ),

                Divider(thickness: 1, height: 1, color: Colors.black45),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(width: disWidthSize*0.16, height:conHeight, alignment : Alignment.center, child:Text('1등', style: TextStyle(fontFamily: 'sandol', fontSize: font_Size, fontWeight: FontWeight.bold,  color: Colors.black),),),

                    Container(width:disWidthSize*0.24, height:conHeight, alignment : Alignment.center, child: Text(dangchum_Count[1].toString(), style: TextStyle(fontFamily: 'sandol', fontSize: font_Size, fontWeight: FontWeight.bold,  color: Colors.black))),

                    Container(width:disWidthSize*0.6, height:conHeight, alignment : Alignment.centerLeft, child: Wrap(children: [Text(dangchum_Soonbun[1])],)),

                  ],
                ),

                Divider(thickness: 1, height: 1, color: Colors.black45),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(width: disWidthSize*0.16, height:conHeight, alignment : Alignment.center,
                      child:Text('2등', style: TextStyle(fontFamily: 'sandol', fontSize: font_Size, fontWeight: FontWeight.bold,  color: Colors.black),),),

                    Container(width:disWidthSize*0.24, height:conHeight, alignment : Alignment.center,
                        child: Text(dangchum_Count[2].toString(), style: TextStyle(fontFamily: 'sandol', fontSize: font_Size, fontWeight: FontWeight.bold,  color: Colors.black))),

                    Container(width:disWidthSize*0.6, height:conHeight, alignment : Alignment.centerLeft,
                        child: Wrap(children: [Text(dangchum_Soonbun[2])],)),

                  ],
                ),

                Divider(thickness: 1, height: 1, color: Colors.black45),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(width: disWidthSize*0.16, height:conHeight, alignment : Alignment.center, child:Text('3등', style: TextStyle(fontFamily: 'sandol', fontSize: font_Size, fontWeight: FontWeight.bold,  color: Colors.black),),),

                    Container(width:disWidthSize*0.24, height:conHeight, alignment : Alignment.center, child: Text(dangchum_Count[3].toString(), style: TextStyle(fontFamily: 'sandol', fontSize: font_Size, fontWeight: FontWeight.bold,  color: Colors.black))),

                    Container(width:disWidthSize*0.6, height:conHeight, alignment : Alignment.centerLeft, child: Wrap(children: [Text(dangchum_Soonbun[3])],)),

                  ],
                ),

                Divider(thickness: 1, height: 1, color: Colors.black45),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(width: disWidthSize*0.16, height:conHeight, alignment : Alignment.center, child:Text('4등', style: TextStyle(fontFamily: 'sandol', fontSize: font_Size, fontWeight: FontWeight.bold,  color: Colors.black),),),

                    Container(width:disWidthSize*0.24, height:conHeight, alignment : Alignment.center, child: Text(dangchum_Count[4].toString(), style: TextStyle(fontFamily: 'sandol', fontSize: font_Size, fontWeight: FontWeight.bold,  color: Colors.black))),
                    //Container(width:250, height:30, alignment : Alignment.center, child: Wrap(children: [Text(dangchum_Soonbun[4].replaceFirst(RegExp(r','), '', (dangchum_Soonbun[1].length.toInt())-1))],)),
                    Container(width:disWidthSize*0.6, height:conHeight, alignment : Alignment.centerLeft, child: Wrap(children: [Text(dangchum_Soonbun[4])],)),

                  ],
                ),

                Divider(thickness: 1, height: 1, color: Colors.black45),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(width: disWidthSize*0.16, height:conHeight*4.7, alignment : Alignment.center, child:Text('5등', style: TextStyle(fontFamily: 'sandol', fontSize: font_Size, fontWeight: FontWeight.bold,  color: Colors.black),),),

                    Container(width:disWidthSize*0.24, height:conHeight*4.7, alignment : Alignment.center, child: Text(dangchum_Count[5].toString(), style: TextStyle(fontFamily: 'sandol', fontSize: font_Size, fontWeight: FontWeight.bold,  color: Colors.black))),

                    Container(width:disWidthSize*0.6, height:conHeight*4.7, alignment : Alignment.centerLeft, child: Wrap(children: [Text(dangchum_Soonbun[5])],)),

                  ],
                ),

                Divider(thickness: 1, height: 1, color: Colors.black45),

                SizedBox(height: 15,),


              ],

            ),



          ),

        );

      }  //case 1 그동안 당첨내역 출력

      case 2: {  //함께 출현한 수
        return Center( //결과값 표시 존


          child: Container(
            //height: 100,
            width:disWidthSize,
            //MediaQuery.of(context).size.width - 50,
            color: Colors.grey[100],
            alignment: Alignment.center,

            child:
            Column(

              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FittedBox(
                      child: Text(naonTotal, style: TextStyle(fontFamily: 'sandolout', fontSize: font_Size-3, fontWeight: FontWeight.bold,  color: Colors.blueAccent), ),   //함께 출현한 수와 몇번 나왔는지 표시함
                    ),

                  ],

                ),
                Divider(thickness: 2, height: 1, color: Colors.blueAccent),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(width: disWidthSize*0.19, height:30, alignment : Alignment.center, child:Text('번  호', style: TextStyle(fontFamily: 'sandol', fontSize: font_Size, fontWeight: FontWeight.bold,  color: Colors.black),),),

                    Container(width:disWidthSize*0.35, height:30, alignment : Alignment.center, child: Text('함께 출현한 횟수', style: TextStyle(fontFamily: 'sandol', fontSize: font_Size, fontWeight: FontWeight.bold,  color: Colors.black),)),
                    Container(width:disWidthSize*0.14, height:30, alignment : Alignment.center, child: Text('확  률', style: TextStyle(fontFamily: 'sandol', fontSize: font_Size, fontWeight: FontWeight.bold,  color: Colors.black),)),
                    Container(width:disWidthSize*0.32, height:30, alignment : Alignment.center, child: Text('선  택', style: TextStyle(fontFamily: 'sandol', fontSize: font_Size, fontWeight: FontWeight.bold,  color: Colors.black),)),

                  ],
                ),

                Divider(thickness: 1, height: 1, color: Colors.black45),


                for(int iji=0; iji<resultBunho.length; iji++)
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(width: disWidthSize*0.19, height:conHeight, alignment : Alignment.center, child:Text(resultBunho[iji].numLotto.toString(), style: TextStyle(fontFamily: 'sandolout', fontSize: font_Size, fontWeight: FontWeight.bold,  color: Colors.deepOrange),),),

                          Container(width:disWidthSize*0.35, height:conHeight, alignment : Alignment.center, child: Text(resultBunho[iji].countLotto.toString(), style: TextStyle(fontFamily: 'sandol', fontSize: font_Size, fontWeight: FontWeight.bold,  color: Colors.black),)),
                          Container(width:disWidthSize*0.14, height:conHeight, alignment : Alignment.center,
                            child:
                            FittedBox(
                              child: Text(((resultBunho[iji].countLotto/naonCount)*100).toStringAsFixed(2)+'%',
                                style: TextStyle(fontFamily: 'sandol', fontSize: font_Size, fontWeight: FontWeight.bold,  color: Colors.deepOrange),),
                            ),
                          ),
                          InkWell(
                            onTap: (){ //함께 출현한 수 선택클릭시 동작~


                              // setState(() {
                              //   bbbCheck(resultBunho[iji].numLotto.toInt());
                              //   print(resultBunho[iji].numLotto);
                              // });

                              if(ii==6 || bunhoSangtae[resultBunho[iji].numLotto]==1){

                                return setState(() {

                                });}
                              bunhoSangtae[resultBunho[iji].numLotto]=1;
                              choice_Bunho[ii]=resultBunho[iji].numLotto.toString();
                              ii++;




                              var mTemp=0;
                              setState(() {

                                if(ii > -1)
                                {
                                  for(int i=0; i< ii+mTemp; i++)
                                  {
                                    //var aa=choice_Bunho[i].to
                                    choice_Bunho_Int[i]=int.parse(choice_Bunho[i]);
                                  }

                                  choice_Bunho_Int.sort();

                                  for(int i=0; i< ii+mTemp; i++)
                                  {
                                    //var aa=choice_Bunho[i].to
                                    if(choice_Bunho_Int[i]!=46) {
                                      choice_Bunho[i] = choice_Bunho_Int[i].toString();
                                    }
                                    else
                                    {
                                      choice_Bunho[i]=' ';
                                    }

                                  }

                                }

                              });


                            },
                            child: Container(width:disWidthSize*0.32, height:conHeight, alignment : Alignment.center, child: Text('선  택', style: TextStyle(fontFamily: 'sandol', fontSize: font_Size, fontWeight: FontWeight.bold,  color: Colors.black),)),

                          ),


                        ],
                      ),
                      Divider(thickness: 1, height: 1, color: Colors.grey),
                    ],
                  ),



                SizedBox(height: 15,),


              ],

            ),



          ),
        );


      } //case 2 함께 출현한 수 출력

      case 3: {  //그동안 출현한 번호별 통계

        return Center( //결과값 표시 존


          child: Container(
            //height: 100,
            width:disWidthSize,
            //MediaQuery.of(context).size.width - 50,
            color: Colors.grey[100],
            alignment: Alignment.center,

            child:
            Column(

              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(width: disWidthSize*0.19, height:conHeight, alignment : Alignment.center, child:Text('번  호', style: TextStyle(fontFamily: 'sandol', fontSize: font_Size, fontWeight: FontWeight.bold,  color: Colors.black),),),

                    Container(width:disWidthSize*0.35, height:conHeight, alignment : Alignment.center, child: Text('출현 횟수', style: TextStyle(fontFamily: 'sandol', fontSize: font_Size, fontWeight: FontWeight.bold,  color: Colors.black),)),
                    Container(width:disWidthSize*0.14, height:conHeight, alignment : Alignment.center, child: Text('확  률', style: TextStyle(fontFamily: 'sandol', fontSize: font_Size, fontWeight: FontWeight.bold,  color: Colors.black),)),
                    Container(width:disWidthSize*0.32, height:conHeight, alignment : Alignment.center, child: Text('선  택', style: TextStyle(fontFamily: 'sandol', fontSize: font_Size, fontWeight: FontWeight.bold,  color: Colors.black),)),

                  ],
                ),

                Divider(thickness: 1, height: 1, color: Colors.black45),


                for(int iji=0; iji<resultBunho.length; iji++)
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(width: disWidthSize*0.19, height:conHeight, alignment : Alignment.center, child:Text(resultBunho[iji].numLotto.toString(), style: TextStyle(fontFamily: 'sandolout', fontSize: font_Size, fontWeight: FontWeight.bold,  color: Colors.deepOrange),),),

                          Container(width:disWidthSize*0.35, height:conHeight, alignment : Alignment.center, child: Text(resultBunho[iji].countLotto.toString(), style: TextStyle(fontFamily: 'sandol', fontSize: font_Size, fontWeight: FontWeight.bold,  color: Colors.black),)),
                          Container(width:disWidthSize*0.14, height:conHeight, alignment : Alignment.center,
                            child:
                            FittedBox(
                              child: Text(((resultBunho[iji].countLotto/(last_soonbun-1))*100).toStringAsFixed(2)+'%',
                                style: TextStyle(fontFamily: 'sandol', fontSize: font_Size, fontWeight: FontWeight.bold,  color: Colors.deepOrange),),
                            ),
                          ),
                          InkWell(
                            onTap: () { //통계별 번호 선택클릭시 동작


                              // setState(() {
                              //   bbbCheck(resultBunho[iji].numLotto.toInt());
                              //   print(resultBunho[iji].numLotto);
                              // });

                              if(ii==6 || bunhoSangtae[resultBunho[iji].numLotto]==1){

                                return setState(() {

                                });}
                              bunhoSangtae[resultBunho[iji].numLotto]=1;
                              choice_Bunho[ii]=resultBunho[iji].numLotto.toString();
                              ii++;




                              var mTemp=0;
                              setState(() {

                                if(ii > -1)
                                {
                                  for(int i=0; i< ii+mTemp; i++)
                                  {
                                    //var aa=choice_Bunho[i].to
                                    choice_Bunho_Int[i]=int.parse(choice_Bunho[i]);
                                  }

                                  choice_Bunho_Int.sort();

                                  for(int i=0; i< ii+mTemp; i++)
                                  {
                                    //var aa=choice_Bunho[i].to
                                    if(choice_Bunho_Int[i]!=46) {
                                      choice_Bunho[i] = choice_Bunho_Int[i].toString();
                                    }
                                    else
                                    {
                                      choice_Bunho[i]=' ';
                                    }

                                  }

                                }

                              });


                            },
                            child: Container(width:disWidthSize*0.32, height:conHeight, alignment : Alignment.center, child: Text('선  택', style: TextStyle(fontFamily: 'sandol', fontSize: font_Size, fontWeight: FontWeight.bold,  color: Colors.black),)),

                          ),


                        ],
                      ),
                      Divider(thickness: 1, height: 1, color: Colors.grey),
                    ],
                  ),



                SizedBox(height: 15,),


              ],

            ),

          ),
        );


      } //case 3 그동안 출현한 번호별 통계 출력

      case 4 : {
        //print('ddd='+last_soonbun.toString());


        return Center( //결과값 표시 존


          child: Container(
            //height: 100,
            width:disWidthSize,
            //MediaQuery.of(context).size.width - 50,
            color: Colors.grey[100],
            alignment: Alignment.center,

            child:
            Column(

              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                SizedBox(height: 15,),



                FittedBox(
                  child: Text((last_soonbun-1).toString()+'회 1등 번호  '+
                      num[last_soonbun-1][1].toString()+', '+
                      num[last_soonbun-1][2].toString()+', '+
                      num[last_soonbun-1][3].toString()+', '+
                      num[last_soonbun-1][4].toString()+', '+
                      num[last_soonbun-1][5].toString()+', '+
                      num[last_soonbun-1][6].toString(), style: TextStyle(fontFamily: 'sandolout', fontSize: font_Size+3, fontWeight: FontWeight.bold,  color: Colors.blueAccent),),
                ),

                SizedBox(height: 15,),

                FittedBox(
                  child: Text('(각 번호별로 당첨후 바로 다음주에 출현한 번호 통계)', style: TextStyle(fontFamily: 'sandol', fontSize: font_Size, fontWeight: FontWeight.bold,  color: Colors.blueAccent),),
                ),


                SizedBox(height: 15,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(width:disWidthSize*0.19, height:conHeight, alignment : Alignment.center, child:Text('번  호', style: TextStyle(fontFamily: 'sandol', fontSize: font_Size, fontWeight: FontWeight.bold,  color: Colors.black),),),

                    Container(width:disWidthSize*0.35, height:conHeight, alignment : Alignment.center, child: Text('출현 횟수', style: TextStyle(fontFamily: 'sandol', fontSize: font_Size, fontWeight: FontWeight.bold,  color: Colors.black),)),

                    Container(width:disWidthSize*0.31, height:conHeight, alignment : Alignment.center, child: Text('선  택', style: TextStyle(fontFamily: 'sandol', fontSize: font_Size, fontWeight: FontWeight.bold,  color: Colors.black),)),

                  ],
                ),

                Divider(thickness: 1, height: 1, color: Colors.black45),


                for(int iji=0; iji<resultBunho.length; iji++)
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(width:disWidthSize*0.19, height:conHeight, alignment : Alignment.center, child:Text(resultBunho[iji].numLotto.toString(), style: TextStyle(fontFamily: 'sandolout', fontSize: font_Size, fontWeight: FontWeight.bold,  color: Colors.deepOrange),),),

                          Container(width:disWidthSize*0.35, height:conHeight, alignment : Alignment.center, child: Text(resultBunho[iji].countLotto.toString(), style: TextStyle(fontFamily: 'sandol', fontSize: font_Size, fontWeight: FontWeight.bold,  color: Colors.black),)),

                          InkWell(
                            onTap: () { //통계별 번호 선택클릭시 동작


                              // setState(() {
                              //   bbbCheck(resultBunho[iji].numLotto.toInt());
                              //   print(resultBunho[iji].numLotto);
                              // });

                              if(ii==6 || bunhoSangtae[resultBunho[iji].numLotto]==1){

                                return setState(() {

                                });}
                              bunhoSangtae[resultBunho[iji].numLotto]=1;
                              choice_Bunho[ii]=resultBunho[iji].numLotto.toString();
                              ii++;




                              var mTemp=0;
                              setState(() {

                                if(ii > -1)
                                {
                                  for(int i=0; i< ii+mTemp; i++)
                                  {
                                    //var aa=choice_Bunho[i].to
                                    choice_Bunho_Int[i]=int.parse(choice_Bunho[i]);
                                  }

                                  choice_Bunho_Int.sort();

                                  for(int i=0; i< ii+mTemp; i++)
                                  {
                                    //var aa=choice_Bunho[i].to
                                    if(choice_Bunho_Int[i]!=46) {
                                      choice_Bunho[i] = choice_Bunho_Int[i].toString();
                                    }
                                    else
                                    {
                                      choice_Bunho[i]=' ';
                                    }

                                  }

                                }

                              });


                            },
                            child: Container(width:disWidthSize*0.31, height:conHeight, alignment : Alignment.center, child: Text('선  택', style: TextStyle(fontFamily: 'sandol', fontSize: font_Size, fontWeight: FontWeight.bold,  color: Colors.black),)),

                          ),


                        ],
                      ),
                      Divider(thickness: 1, height: 1, color: Colors.grey),
                    ],
                  ),



                SizedBox(height: 15,),


              ],

            ),

          ),
        );


      }  //case 4 지난주 당첨번호로 분석 출력



    }


  }

  void all_clear() {

    ii=0;
    resultBunho.clear();
    choice_Bunho=List<String>.filled(6, ' ');
    choice_Bunho_Int=List<int>.filled(6, 46);
    dangchum_Count=[0,0,0,0,0,0];
    dangchum_Soonbun=[' ',' ',' ',' ',' ',' '];
    bunhoSangtae =List<int>.filled(46, 0);
  }



}






void heart_count(){

  heartCount--;
  if (heartCount==-1) {
    heartCount = 0;
    lottoToast('하트충전이 필요합니다.');
  }

  else {
    hiveBox.put('heart', heartCount);
    print(heartCount.toString());
  }
}

// void showToast(String message) {
//   Fluttertoast.showToast(
//       msg: message,
//       backgroundColor: Colors.red,
//       toastLength: Toast.LENGTH_SHORT,
//       gravity: ToastGravity.BOTTOM_LEFT);
// }