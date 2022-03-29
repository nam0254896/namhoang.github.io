import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FlexDemo(),
    );
  }
}

class FlexDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => FlexDemoState();
}

class FlexDemoState extends State<FlexDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flexible Demo'),
      ),
      body: Column(
        children: [
          Flexible(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Image.network(
                      'https://codefresher.vn/wp-content/uploads/2021/06/Banner-06-kh-Flutter.png',
                      height: 160,
                      width: 160,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Text(
                            'Lập trình Flutter',
                            style: TextStyle(fontSize: 30),
                            maxLines: 2,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Flexible(
                          //width: 200,
                          child: Text(
                            'Thực chiến dự án app mobile 2022',
                            style: TextStyle(fontSize: 20),
                            maxLines: 2,
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(left: 25, right: 25),
              child: Divider(
                thickness: 2,
                color: Colors.green,
              )),
          Flexible(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Text(
                            'Lập trình Android',
                            style: TextStyle(fontSize: 30),
                            maxLines: 2,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Flexible(
                          //width: 200,
                          child: Text(
                            'Java + Kotlin',
                            style: TextStyle(fontSize: 20),
                            maxLines: 2,
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Image.network(
                      'https://codefresher.vn/wp-content/uploads/2022/01/banner_2022_android.jpg',
                      height: 190,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(left: 25, right: 25),
              child: Divider(
                thickness: 2,
                color: Colors.green,
              )),
          Flexible(
            child: Padding(
              padding: EdgeInsets.only(top: 10,left: 20,right: 20,bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Image.network(
                      'https://codefresher.vn/wp-content/uploads/2021/06/banner-Java-core-03.png',
                      height: 230,
                      width: 220,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Text(
                            'Lập trình Java cơ bản',
                            style: TextStyle(fontSize: 30),
                            maxLines: 2,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Flexible(
                          //width: 200,
                          child: Text(
                            'Cho người mới bắt đầu',
                            style: TextStyle(fontSize: 20),
                            maxLines: 2,
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
