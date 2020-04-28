import 'package:flutter/material.dart';
import 'diary_list.dart';
class DiaryBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Flexible(child: DiaryList(),)
      ],
    );
  }
}
