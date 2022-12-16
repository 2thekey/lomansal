import 'package:flutter/material.dart';
import 'lottovar.dart';




class Home3 extends StatefulWidget {
  const Home3({Key? key}) : super(key: key);

  @override
  State<Home3> createState() => _Home3State();
}

class _Home3State extends State<Home3> {
  @override
  Widget build(BuildContext context) {
    return

      ListView(
        children: [
          Container(
            padding: EdgeInsets.only(left: 10),
            //color: Colors.bla,
            alignment: Alignment.centerLeft,
            child:
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 15,),


                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(  //버튼
                      onTap: (){


                      },
                      child:
                      Container(
                        width: disWidthSize*0.4,
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            border: Border.all(
                                color: Colors.black,
                                style: BorderStyle.solid,
                                width: 2
                            )
                        ),
                        alignment: Alignment.center,
                        child: Text('꿈 과   로 또', style: TextStyle(fontFamily: 'sandolout', fontSize: font_Size*1.3, fontWeight: FontWeight.bold,  color: Colors.black),),
                      ),
                    ),

                    SizedBox(

                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: disWidthSize*0.3,
                            height: 40,
                            child: TextField(
                              textAlign: TextAlign.center,
                                decoration: InputDecoration(

                                  border: OutlineInputBorder(),
                                  hintText: '검  색',
                                  contentPadding: EdgeInsets.all(3)

                                )
                            ),
                          ),

                          SizedBox(
                           // width: disWidthSize*0.2,
                            height: 40,
                            //alignment: Alignment.center,
                            child: IconButton(
                              icon: Icon(Icons.search),
                              color: Colors.black,
                              iconSize: 30.0,
                              onPressed: () {},
                            ),
                          ),
                        ],
                      )
                    ),







                  ],
                ),



                SizedBox(height: 15,),

                Container(
                  width: disWidthSize*0.98,
                  //height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(
                          color: Colors.transparent,
                          style: BorderStyle.solid,
                          width: 2
                      )
                  ),
                  alignment: Alignment.center, // Container(
                  //   width: 2,
                  //   height: conHeight*0.9,
                  //   color:Colors.red,
                  // ),

                  child:
                  Column(
                    children: [


                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(width: disWidthSize*0.15, height:conHeight, alignment : Alignment.center,
                            child:Text('번  호', style: TextStyle(fontFamily: 'sandol', fontSize: font_Size, fontWeight: FontWeight.bold,  ),),),



                          Container(width:disWidthSize*0.7, height:conHeight, alignment : Alignment.center,
                              child: Text('상  징', style: TextStyle(fontFamily: 'sandol', fontSize: font_Size, fontWeight: FontWeight.bold,  ),)),
                        ],
                      ),





                      // Text.rich(
                      //   TextSpan(
                      //
                      //     children: <TextSpan>[
                      //       TextSpan(text: ' 1', style: TextStyle(fontFamily: 'sandolout',fontSize: font_Size,fontWeight: FontWeight.bold, color: Colors.deepOrange),),
                      //
                      //     ],
                      //   ),
                      // ),
                      Divider(thickness: 1, height: 1, color: Colors.black),
                      SizedBox(height: 10,),

                      for (var k in lottoDream.keys)
                        numCall(k),
                    ],
                  ),




                ),

              ],
            ),
          ),
        ],
      );
  }

  numCall(var numK) {

    Color bgColore=Colors.black;

    switch (int.parse(numK)){
      case 1: case 2: case 3: case 4: case 5: case 6: case 7: case 8: case 9: case 10:
      bgColore= Colors.yellow; break;

      case 11: case 12: case 13: case 14: case 15: case 16: case 17: case 18: case 19: case 20:
      bgColore= Colors.lightBlueAccent; break;
      case 21: case 22: case 23: case 24: case 25: case 26: case 27: case 28: case 29: case 30:
      bgColore= Colors.redAccent; break;
      case 31: case 32: case 33: case 34: case 35: case 36: case 37: case 38: case 39: case 40:
      bgColore= Colors.grey; break;
      default: bgColore= Colors.green;

    }


    return Column(
     children: [
       Row(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           Container(

             width: 40,
             height: 40,
             decoration: BoxDecoration(
               border: Border.all(width: 1),
               color:  bgColore,
               shape: BoxShape.circle,
             ),
             child:
             Center(child: Text(numK.toString(), style: TextStyle(fontFamily: 'sandol', fontSize: font_Size, fontWeight: FontWeight.bold, color: Colors.white  ),)),
           ),

           Container(width:disWidthSize*0.7,  alignment : Alignment.centerLeft,
               child: Text(lottoDream[numK],
                 style: TextStyle(fontFamily: 'sandol', fontSize: font_Size*0.8, ),)),
         ],
       ),
       SizedBox(height: 10,),
       Divider(thickness: 1, height: 1, color: Colors.black),
       SizedBox(height: 10,),
     ],

   );
  }
}

