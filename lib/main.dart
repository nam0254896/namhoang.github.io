import 'package:lesson5screen/test.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class Routes {
  static final String product = "/product";
  static final String detail = "/detail";
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      initialRoute: Routes.product,
      routes: {
        Routes.product: (context) => ProductList(),
      },
    );
  }
}
