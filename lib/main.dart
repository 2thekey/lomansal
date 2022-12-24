import 'home3.dart';
import 'lottohome.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'lottovar.dart';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';


import 'landingpage.dart';


//bool isFirebaseReady = true;

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp().catchError((e) {
//     isFirebaseReady = false;
//     //print(e);
//   });
//   SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);  //화면세로고정
//   runApp(MyApp());
// }





 main()  async{
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);  //화면세로고정
  MobileAds.instance.initialize(); //에드몹초기화
  await Hive.initFlutter();
  hiveBox = await Hive.openBox('settings');
  //print(hiveBox.get('Hconnect'));
  if(hiveBox.get('heart')==null){
    hiveBox.put('heart', 10);
    heartCount=10;
    //print('최초접속');
  }
  else{
    heartCount=hiveBox.get('heart');

    }

  runApp(MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.


  @override
  void initState() {
    MobileAds.instance.initialize(); //에드몹초기화

    super.initState();
    //_controller = TextEditingController();
  }

  @override
  void dispose() {
    searchController.dispose();
    //print('depose');
    super.dispose();
  }

  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'DongleRegular'),
      home: LandingPage(),
      //home: LottoHome(),
    );
  }
}




