import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() { //main스레드는 runApp을 실행시키고 종료된다.
  runApp(FirstApp()); //비동기로 실행된다.(이벤트 루프에 등록된다.)
  sleep(Duration(seconds: 3));
}

class FirstApp extends StatelessWidget {
  const FirstApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /*return Container(
      color: Colors.amber,
    );*/ //HTML로 치면 div
    return MaterialApp( //AndroidApp을 만든다. IOS는 CupertinoApp*(
      home: SafeArea(
        child: Scaffold( //기본 구조를 들고 있다.
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text("First App"),
            leading: Icon(Icons.menu),
          ),
          body: Text("Hello~~~"),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              print("버튼 클릭됨");
            },
            child: Text("button"),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                label: "hello",
                icon: Icon(Icons.access_alarm_rounded,)
              ),
              BottomNavigationBarItem(
                  label: "hello",
                  icon: Icon(Icons.access_alarm_rounded,)
              )

            ],
            backgroundColor: Colors.yellow,
          ),
        ),
      ),
    );
  }
}
