import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MaterialApp',
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

//home画面
class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  final textContainer = Container(
    color: Colors.black,
    child: Text(
      'aaaa',
      style: TextStyle(
        color: Colors.white,
        fontSize: 20,
      ),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.orange,
        centerTitle: true,
        //↓これ変えても、変わらない SilverAppBar用らしい
        // bottomOpacity: 1.0,
      ),
      body: Center(child: textContainer),
    );
  }
}
