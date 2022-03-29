import 'package:flutter/material.dart';

void main() {
  runApp(MyAppForLesson5());
}

class MyAppForLesson5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: Lesson5HomePage());
  }
}

class Lesson5HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'K', 'L'];
    final List<int> colorCodes = <int>[600, 500, 400, 300, 200, 100, 200, 300, 400, 500, 600];

    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: const Text('Lesson 5 - Example'),
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Flexible(
                  child: ListView(
                    padding: const EdgeInsets.all(8),

                    children: <Widget>[
                      Container(
                        height: 50,
                        color: Colors.cyan[600],
                        child: const Center(child: Text('Entry A')),
                      ),
                      Container(
                        height: 50,
                        color: Colors.cyan[500],
                        child: const Center(child: Text('Entry B')),
                      ),
                      Container(
                        height: 50,
                        color: Colors.cyan[100],
                        child: const Center(child: Text('Entry C')),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  child: ListView.separated(
                    padding: const EdgeInsets.all(8),
                    itemCount: entries.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 50,
                        color: Colors.amber[colorCodes[index]],
                        child: Center(child: Text('Entry ${entries[index]}')),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return Divider();
                    },
                  ),
                )
              ],
            ),
          ),
        ));
  }
}