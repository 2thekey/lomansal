import 'package:flutter/material.dart';
import 'home1.dart';

class Home4 extends StatefulWidget {
  const Home4({Key? key}) : super(key: key);

  @override
  State<Home4> createState() => _Home4State();
}

class _Home4State extends State<Home4> {
  @override
  Widget build(BuildContext context) {
    final String myString =
        'Styling text in Flutter Styling text in Flutter '
        'Styling text in Flutter Styling text in Flutter '
        'Styling text in Flutter Styling text in Flutter '
        'Styling text in Flutter Styling text in Flutter '
        'Styling text in Flutter Styling text in Flutter ';

    final wordToStyle = 'text';
    final wordStyle = TextStyle(color: Colors.blue);
    final leftOverStyle = Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 30);

    final spans = _getSpans(myString, wordToStyle, wordStyle);

    return RichText(
      text: TextSpan(
        style: leftOverStyle,
        children: spans,
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
      print(text.substring(spanBoundary, startIndex));
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