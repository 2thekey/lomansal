import 'package:flutter/material.dart';
import 'lottovar.dart';


final searchController = TextEditingController();
var searchTxt='';
var searchResult='';

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
                        child: Text('꿈 과  로 또', style: TextStyle(fontFamily: 'sandolout', fontSize: font_Size*1.3, fontWeight: FontWeight.bold,  color: Colors.black),),
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
                                maxLength: 5,
                                controller: searchController,

                                decoration: InputDecoration(

                                  border: OutlineInputBorder(),
                                  labelText: '검색',
                                    hintText: '(5글자이내)',
                                    // label:  const Center(
                                    //   child: Text("검색"),
                                    // ),
                                    alignLabelWithHint: true,
                                    counterText:'',
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
                              onPressed: () {

                                searchTxt=searchController.text.replaceAll(' ', '');
                                searchTxt=searchTxt.replaceAll(',', '');
                                FocusManager.instance.primaryFocus?.unfocus();

                                if(searchTxt==''){
                                  lottoToast('검색어를 입력해주세요.\n공백과 ,는 제외됩니다.');

                                }
                                else {
                                  searchResult='';
                                  if (searchTxt != '')
                                    for (var kk in lottoDream.keys)
                                      if ((lottoDream[kk].toString()).contains(
                                          searchTxt))
                                        searchResult = searchResult + kk + '번,';


                                setState(() {

                                  if(searchTxt!='')
                                  lottoToast('"'+searchTxt+'" 조회 완료');

                                  if(searchResult=='')
                                    searchResult='검색결과가 없습니다.';

                                });
                                } //else

                              },
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

                      if(searchResult!='')  //검색결과가 있으면 표시
                        Center(
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container( alignment : Alignment.topLeft,
                                    child:Text('검색결과 : ', style: TextStyle(fontFamily: 'sandol', fontSize: font_Size, fontWeight: FontWeight.bold,  ),),),

                                  Flexible(
                                    child: Container( alignment : Alignment.centerLeft,
                                      child:Text(searchResult, style: TextStyle(fontFamily: 'sandol', fontSize: font_Size-3, fontWeight: FontWeight.bold, color: Colors.deepOrange ),),),
                                  ),
                                ],
                              ),
                          SizedBox(height: 10,),

                          SizedBox(
                            child: Text('※ 검색결과는 해당번호의 상징에 붉은색으로 표시 되었음', style: TextStyle(fontFamily: 'sandol', fontSize: font_Size-3, fontWeight: FontWeight.bold, color: Colors.blue),),
                          ),
                            ],
                          ),

                        ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(width: disWidthSize*0.15, height:conHeight, alignment : Alignment.centerLeft,
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
             width: disWidthSize*0.15,
             alignment: Alignment.centerLeft,
             child: Container(

               width: 40,
               height: 40,
               decoration: BoxDecoration(
                 border: Border.all(width: 1),
                 color:  bgColore,
                 shape: BoxShape.circle,
               ),
               child:
               Center(child: Text(numK.toString(), style: TextStyle(fontFamily: 'sandol', fontSize: font_Size, fontWeight: FontWeight.bold, color: Colors.white  ),)),
             ),//원그리기
           ),

          searchDream(lottoDream[numK], context),



         ],
       ),
       SizedBox(height: 10,),
       Divider(thickness: 1, height: 1, color: Colors.black),
       SizedBox(height: 10,),
     ],

   );
  }
}

searchDream(String sdream, BuildContext context) {

  if(searchTxt=='') {
    return Container(width: disWidthSize * 0.7, alignment: Alignment.centerLeft,
        child: Text(sdream,
          style: TextStyle(fontFamily: 'sandol', fontSize: font_Size * 0.8,),)
    );
  }

  else {
    // return Container(width: disWidthSize * 0.7, alignment: Alignment.centerLeft,
    //     child: Text(sdream,
    //       style: TextStyle(fontFamily: 'sandol', fontSize: font_Size * 0.8,),)
    // );


      final String myString = sdream;

      final wordToStyle = searchTxt;
      final wordStyle = TextStyle(color: Colors.red);
      final leftOverStyle = Theme
          .of(context)
          .textTheme
          .bodyText1
          ?.copyWith(fontSize: font_Size*0.8,fontFamily: 'sandol',);

      final spans = _getSpans(myString, wordToStyle, wordStyle);

      return Flexible(
        child: Container(
          width: disWidthSize * 0.7, alignment: Alignment.centerLeft,
          child: RichText(
            //overflow: TextOverflow.ellipsis,
            text: TextSpan(
              style: leftOverStyle,
              children: spans,
            ),
          ),
        ),
      );

  }
}


List<TextSpan> _getSpans(String text, String matchWord, TextStyle style) {

  List<TextSpan> spans = [];
  int spanBoundary = 0;

  do {

    // 전체 String 에서 키워드 검색
    final startIndex = text.indexOf(matchWord, spanBoundary);

    // 전체 String 에서 해당 키워드가 더 이상 없을때 마지막 KeyWord부터 끝까지의 TextSpan 추가
    if (startIndex == -1) {
      spans.add(TextSpan(text: text.substring(spanBoundary)));
      return spans;
    }

    // 전체 String 사이에서 발견한 키워드들 사이의 text에 대한 textSpan 추가
    if (startIndex > spanBoundary) {
      //print(text.substring(spanBoundary, startIndex));
      spans.add(TextSpan(text: text.substring(spanBoundary, startIndex)));
    }

    // 검색하고자 했던 키워드에 대한 textSpan 추가
    final endIndex = startIndex + matchWord.length;
    final spanText = text.substring(startIndex, endIndex);
    spans.add(TextSpan(text: spanText, style: style));

    // mark the boundary to start the next search from
    spanBoundary = endIndex;

    // continue until there are no more matches
  }
  //String 전체 검사
  while (spanBoundary < text.length);

  return spans;
}