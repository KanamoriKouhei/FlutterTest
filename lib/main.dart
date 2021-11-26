import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

//アプリ本体
class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MaterialApp',
      theme: ThemeData.dark(),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // ignore: prefer_const_constructors
      child: Text(
        'aaaa',
        textDirection: TextDirection.ltr,
        textAlign: TextAlign.center,
      ),
      decoration: BoxDecoration(
        color: Colors.black,
      ),
    );
  }
}
