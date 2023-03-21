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
          body: Container(
            color: Colors.green,
          ),
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


//Column 위젯
/*
Column(//부모의 크기에 맞게 자식이 맞춰진다.
mainAxisAlignment: MainAxisAlignment.spaceAround,
crossAxisAlignment: CrossAxisAlignment.stretch,
children: [
Container( //부모의 최대 크기까지 늘려라
width: 100,
height: 100,
color:Colors.orange,
),
Container(
width: 100,
height: 100,
color:Colors.green,
),
Container(
height: 100,
color:Colors.red,
),
],
)*/

//row 위젯
/*Container(
height: 100,
child: Row(
children: [
Expanded(
flex:3,
child: Container(
width:100,
color:Colors.green,
),
),
Expanded(
flex:1,
child: Container(
width:100,
color:Colors.red,
),
),
Expanded(
flex:1,
child: Container(
width:100,
color:Colors.orange,
),
),
],
),
)*/
