import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
import 'lottoad.dart';


class MyScore{
  int numLotto;
  int countLotto;

  MyScore(this.numLotto, this.countLotto);

  String toString(){
    return '{ ${this.numLotto}, ${this.countLotto}}';
  }
}

int heartCount=0;

final searchController = TextEditingController();
var searchTxt='';
var searchResult='';


var ii=0;

//var choice_Bunho=List<int>.filled(6, 46);
var choice_Bunho=List<String>.filled(6, ' ');
var choice_Bunho_Int=List<int>.filled(6, 46);
List<MyScore> resultBunho=[];

var tonggyeCount=List<int>.filled(46, 0);

var num=List.generate(2000,(i) => List.filled(8, 0, growable: true), growable:true);
int last_soonbun=0;
//int last_soonbun=6;
List<int> dangchum_Count=[0,0,0,0,0,0];
List<String> dangchum_Soonbun=[' ',' ',' ',' ',' ',' '];
var conHeight=45.0;  //숫자한개 컨테이너 높이
var conWidth=40.0; //숫자한개 컨테이너 넓이
var conbgColor='white';

double disWidthSize=420; //화면 사이즈
double sizeboxWidth=16;
double cspace=0;
double sespace=0;
double font_Size=22;


int resultSangtae=0;

int naonCount=0;  //함께 출현한 수에서 선택한 번호가 출현한 횟수
String naonTotal=''; //함께 출현한 수 처리시, 선택한 번호묶어서 표시하기 위함

// List<int> dangchum3=[0];
// List<int> dangchum4=[0];
// List<int> dangchum5=[0]; //배열로 이용

var hiveBox;

void heart_count() async{

  heartCount--;
  if (heartCount==-1) {
    showRewardedAd();  //리워드전면광고 불러오기
    //showInterstitialAd();  //에드몹 전면광고로 리워드 광고 대체
    lottoToast('하트를 충전하고 있습니다.');
  }

  else {
    hiveBox.put('heart', heartCount);
    //print(heartCount.toString());
  }
}



void lottoToast(String jmt_message) {
  Fluttertoast.showToast(msg: jmt_message,
    gravity: ToastGravity.CENTER,
    backgroundColor: Colors.black,
    fontSize: 20.0,
    textColor: Colors.white,
    timeInSecForIosWeb: 1,
    toastLength: Toast.LENGTH_SHORT,

  );
} //토스트메시지 띄우기