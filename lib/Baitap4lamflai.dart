import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Caculator(),
    );
  }
}

class Caculator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CaculatorState();
}

class CaculatorState extends State<Caculator> {
  TextEditingController firstNum = TextEditingController();
  TextEditingController secondNum = TextEditingController();

  double result = 0;

  void caculate(int num) {
    try
    {
      setState(() {
        switch(num) {
          case (1): {
            result = double.parse(firstNum.text)+double.parse(secondNum.text);
          }
          break;

          case (2): {
            result = double.parse(firstNum.text)-double.parse(secondNum.text);
          }
          break;

          case (3): {
            result = double.parse(firstNum.text)*double.parse(secondNum.text);
          }
          break;

          default: {
            result = double.parse(firstNum.text)/double.parse(secondNum.text);
          }
          break;
        }
        //result = double.parse(firstNum.text)+double.parse(secondNum.text);
      });
    }
    catch(e){
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(e.toString())));
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Caculator'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Center(
                child: Image.asset('assets/caculaytor.png'),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: 110, right: 110),
              child: TextField(
                controller: firstNum,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: 'Nhập số A',hintStyle: TextStyle(color: Colors.grey, fontSize: 20)),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 110, right: 110),
              child: TextField(
                controller: secondNum,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: 'Nhập số B',hintStyle: TextStyle(color: Colors.grey, fontSize: 20)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Kết quả ' +result.toStringAsFixed(2),
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 25, right: 25),
              child: Row(
                children: [
                  Flexible(
                    child: Container(
                        height: 40,
                        width: 80,
                        child: ElevatedButton(
                          onPressed: () {caculate(1);},
                          child: Text('+'),
                        )),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Flexible(
                    child: Container(
                        height: 40,
                        width: 80,
                        child: ElevatedButton(
                          onPressed: () {caculate(2);},
                          child: Text('-'),
                          style: ButtonStyle(
                              backgroundColor:
                              MaterialStateProperty.all(Colors.red)),
                        )),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Flexible(
                    child: Container(
                        height: 40,
                        width: 80,
                        child: ElevatedButton(
                          onPressed: () {caculate(3);},
                          child: Text('x'),
                          style: ButtonStyle(
                              backgroundColor:
                              MaterialStateProperty.all(Colors.green)),
                        )),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Flexible(
                    child: Container(
                        height: 40,
                        width: 80,
                        child: ElevatedButton(
                          onPressed: () {caculate(4);},
                          child: Text(':'),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.orangeAccent)),
                        )),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
