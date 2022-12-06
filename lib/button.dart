import 'package:flutter/material.dart';
import 'home1.dart';


buttonCheck1(int rSangtae)
{
  if(rSangtae==1)
  {
    return Container(
      width: disWidthSize,
      height: conHeight+5,
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(25.0),
          border: Border.all(
              color: Colors.black,
              style: BorderStyle.solid,
              width: 2
          )
      ),
      alignment: Alignment.center,
      child:
      FittedBox(
        child: Text('그동안 당첨내역 조회하기 (번호 3개 이상 선택)', style: TextStyle(fontFamily: 'sandolout', fontSize: font_Size, fontWeight: FontWeight.bold,  color: Colors.white),),
      ),


    );
  }
  else
  {
    return Container(
      width: disWidthSize,
      height: conHeight+5,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25.0),
          border: Border.all(
              color: Colors.black,
              style: BorderStyle.solid,
              width: 2
          )
      ),
      alignment: Alignment.center,
      child:
      FittedBox(
        child: Text('그동안 당첨내역 조회하기 (번호 3개 이상 선택)', style: TextStyle(fontFamily: 'sandolout', fontSize: font_Size, fontWeight: FontWeight.bold,  color: Colors.black),),
      ),


    );
  }
}

buttonCheck2(int rSangtae)
{
  if(rSangtae==2)
  {
    return Container(
      width: disWidthSize,
      height: conHeight+5,
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(25.0),
          border: Border.all(
              color: Colors.black,
              style: BorderStyle.solid,
              width: 2
          )
      ),
      alignment: Alignment.center,
      child:
      FittedBox(
        child: Text('함께 출현한 번호 조회 (번호 5개 이하 선택)', style: TextStyle(fontFamily: 'sandolout', fontSize: font_Size, fontWeight: FontWeight.bold,  color: Colors.white),),
      ),


    );
  }
  else
  {
    return Container(
      width: disWidthSize,
      height: conHeight+5,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25.0),
          border: Border.all(
              color: Colors.black,
              style: BorderStyle.solid,
              width: 2
          )
      ),
      alignment: Alignment.center,
      child:
      FittedBox(
        child: Text('함께 출현한 번호 조회 (번호 5개 이하 선택)', style: TextStyle(fontFamily: 'sandolout', fontSize: font_Size, fontWeight: FontWeight.bold,  color: Colors.black),),
      ),


    );
  }
}

buttonCheck3(int rSangtae)
{
  if(rSangtae==3)
    {
      return Container(
        width: disWidthSize,
        height: conHeight+5,
        decoration: BoxDecoration(
          color: Colors.black,
            borderRadius: BorderRadius.circular(25.0),
            border: Border.all(
                color: Colors.black,
                style: BorderStyle.solid,
                width: 2
            )
        ),
        alignment: Alignment.center,
        child:
        FittedBox(
          child: Text('그동안 출현한 번호별 통계', style: TextStyle(fontFamily: 'sandolout', fontSize: font_Size, fontWeight: FontWeight.bold,  color: Colors.white),),
        ),


      );
    }
  else
    {
      return Container(
        width: disWidthSize,
        height: conHeight+5,
        decoration: BoxDecoration(
          color: Colors.white,
            borderRadius: BorderRadius.circular(25.0),
            border: Border.all(
                color: Colors.black,
                style: BorderStyle.solid,
                width: 2
            )
        ),
        alignment: Alignment.center,
        child:
        FittedBox(
          child: Text('그동안 출현한 번호별 통계', style: TextStyle(fontFamily: 'sandolout', fontSize: font_Size, fontWeight: FontWeight.bold,  color: Colors.black),),
        ),


      );
    }
}

buttonCheck4(int rSangtae)
{
  if(rSangtae==4) {
    return Container(
      width: disWidthSize,
      height: conHeight + 5,

      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(25.0),
          border: Border.all(
              color: Colors.black,
              style: BorderStyle.solid,
              width: 2
          )
      ),
      alignment: Alignment.center,
      child:
      FittedBox(
        child: Text('최종회차 당첨 번호 이후 출현한 번호 통계', style: TextStyle(
            fontFamily: 'sandolout',
            fontSize: font_Size,
            fontWeight: FontWeight.bold,
            color: Colors.white),),
      ),

    );
  }

  else{
    {
      return Container(
        width: disWidthSize,
        height: conHeight + 5,

        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25.0),
            border: Border.all(
                color: Colors.black,
                style: BorderStyle.solid,
                width: 2
            )
        ),
        alignment: Alignment.center,
        child:
        FittedBox(
          child: Text('최종회차 당첨 번호 이후 출현한 번호 통계', style: TextStyle(
              fontFamily: 'sandolout',
              fontSize: font_Size,
              fontWeight: FontWeight.bold,
              color: Colors.black),),
        ),

      );
    }
  }
}