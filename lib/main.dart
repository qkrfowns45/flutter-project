import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() { //main스레드는 runApp을 실행시키고 종료된다.
  runApp(FirstApp()); //비동기로 실행된다.(이벤트 루프에 등록된다.)
  //sleep(Duration(seconds: 3));
}

class FirstApp extends StatelessWidget {
  const FirstApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Expanded(
                flex: 9,
                child: Container(
                  color: Colors.blue,
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}