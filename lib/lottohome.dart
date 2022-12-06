import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import 'home1.dart';
import 'home2.dart';
import 'home3.dart';
import 'home4.dart';




class LottoHome extends StatefulWidget {

  @override
  State<LottoHome> createState() => _LottoHomeState();
}

class _LottoHomeState extends State<LottoHome> {
  int _selectedIndex=0;

  List pages=[
    const Home1(),
    // const HomeScreen(),
    const Home2(),
    const Home3(),
    const Home4(),

  ];

  List<BottomNavigationBarItem> bottomItems=[
    const BottomNavigationBarItem(
      label: 'HOME',
      icon: Icon(Icons.home),
    ),

    const BottomNavigationBarItem(
      label: '제외수 찾기',
      icon: Icon(Icons.search),
    ),

    const BottomNavigationBarItem(
      label: '로또소개',
      icon: Icon(Icons.maps_ugc),
    ),

    const BottomNavigationBarItem(
      label: '개인정보 보호정책',
      icon: Icon(Icons.folder_copy),
    ),


  ];

  @override
  Widget build(BuildContext context) {



    return Scaffold(

      appBar: AppBar(
        title: const Text.rich(
          TextSpan(
            text: 'Hello', // default text style
            children: <TextSpan>[
              TextSpan(text: '로', style: TextStyle(fontFamily: 'sandolout',fontSize: 35,fontWeight: FontWeight.bold, color: Colors.deepOrange),),
              TextSpan(text: '또', style: TextStyle(fontFamily: 'sandolout',fontSize: 23,fontWeight: FontWeight.bold, color: Colors.black),),
              TextSpan(text: '만', style: TextStyle(fontFamily: 'sandolout',fontSize: 35,fontWeight: FontWeight.bold, color: Colors.deepOrange),),
              TextSpan(text: '이', style: TextStyle(fontFamily: 'sandolout',fontSize: 23,fontWeight: FontWeight.bold, color: Colors.black),),
              TextSpan(text: ' 살', style: TextStyle(fontFamily: 'sandolout',fontSize: 35,fontWeight: FontWeight.bold, color: Colors.deepOrange),),
              TextSpan(text: '길이다', style: TextStyle(fontFamily: 'sandolout',fontSize: 23,fontWeight: FontWeight.bold, color: Colors.black),),
              //TextSpan(text: '!', style: TextStyle(fontFamily: 'sandolout',fontSize: 38,fontWeight: FontWeight.bold, color: Colors.black),),
            ],
          ),
        ),


        //Text('로또만이 살 길이다!!!', style: TextStyle(fontFamily: 'sandolout',fontSize: 40,fontWeight: FontWeight.bold, color: Colors.black), ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.info_outline, color: Color(0xFF545D68)),
            onPressed: () {

              //ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("snack")));

            },
          ),
        ],

        centerTitle: true,
        backgroundColor: Colors.white,
      ),







      //하단플로팅 버튼 시작

      // floatingActionButton: FloatingActionButton(onPressed: () {
      //   //Get.offAll(() => const MainPage());
      // },
      //   backgroundColor: Color(0xFFEF7532),
      //   child: Icon(Icons.home),
      // ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar:BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.deepOrange,
        unselectedItemColor: Colors.grey.withOpacity(.60),
        selectedFontSize: 14,
        unselectedFontSize: 12,
        currentIndex: _selectedIndex,

        showSelectedLabels: true,
        showUnselectedLabels: true,

        onTap: (int index) {
          if (index > 0) {
            showDialog( //경고창
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
                        new Text("'준비중...'", style: TextStyle(
                            fontFamily: 'sandol',
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.red),),
                      ],
                    ),
                    //
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "준비중입니다.", style: TextStyle(
                            fontFamily: 'sandol',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.red),
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
          } //if
          else {
            setState(() {
              _selectedIndex = index;
            });
          } //else
        },

        items: bottomItems,
      ),

      body: pages[_selectedIndex],
    );
  }
}