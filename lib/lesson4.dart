import 'package:flutter/material.dart';

void main() {
  runApp(MyAppForLesson4());
}

class MyAppForLesson4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: Lesson4HomePage());
  }
}

class Lesson4HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: const Text('Lesson 4 - Example'),
        ),
        body: SafeArea(
          child: Center(
            child: Stack(
              children: <Widget>[
                Container(
                  color: Colors.blue,
                  height: 100,
                  width: 100,
                ),
                Flexible(
                 fit: FlexFit.loose,
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.yellow,
                    width: 100,
                    child: Text('Tên là Nam'),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: Container(
                          color: Colors.blueGrey,
                          height: 150,
                        ),
                      ),
                      Container(

                        color: Colors.black,
                        height: 150,
                        width: 50,
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(
                          color: Colors.cyan,
                          height: 150,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.red,
                    width: 100,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}