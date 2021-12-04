import 'dart:html';
import 'dart:js';

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
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        'search': (context) => Search(),
      },
    );
  }
}

const bottomBarItems = <BottomNavigationBarItem>[
  BottomNavigationBarItem(
    icon: Icon(Icons.home),
    label: 'home',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.search),
    label: 'search',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.settings),
    label: 'settings',
  ),
];

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  final textContainer = Container(
    color: Colors.black,
    child: const Text(
      'home',
      style: TextStyle(
        color: Colors.white,
        fontSize: 20,
      ),
    ),
  );
  @override
  Widget build(BuildContext context) {
    final buttonContainer = Container(
      child: ElevatedButton(
        child: Text('push me'),
        onPressed: () => {Navigator.pushNamed(context, 'search')},
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('home'),
        backgroundColor: Colors.orange,
        centerTitle: true,
        //↓これ変えても、変わらない SilverAppBar用らしい
        // bottomOpacity: 1.0,
      ),
      body: Center(child: buttonContainer),
      bottomNavigationBar: BottomNavigationBar(items: bottomBarItems),
    );
  }
}

class Search extends StatelessWidget {
  Search({Key? key}) : super(key: key);
  final textContainer = Container(
    color: Colors.black,
    child: const Text(
      'search',
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
        title: const Text('search'),
        backgroundColor: Colors.orange,
        centerTitle: true,
        //↓これ変えても、変わらない SilverAppBar用らしい
        // bottomOpacity: 1.0,
      ),
      body: Center(child: textContainer),
      bottomNavigationBar: BottomNavigationBar(items: bottomBarItems),
    );
  }
}
