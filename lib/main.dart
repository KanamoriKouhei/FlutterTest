import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'MaterialApp',
    initialRoute: '/',
    routes: <String, WidgetBuilder>{
      '/': (BuildContext context) => const Home(),
      'search': (BuildContext context) => const Search(),
      'settings': (BuildContext context) => const Settings(),
    },
  ));
}

class BottomBar extends StatelessWidget {
  int index = 0; // ignore: use_key_in_widget_constructors
  BottomBar(this.index, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
            label: 'Home',
            icon: IconButton(
              icon: const Icon(Icons.home),
              onPressed: () => {Navigator.pushNamed(context, '/')},
            )),
        BottomNavigationBarItem(
            label: 'Search',
            icon: IconButton(
              icon: const Icon(Icons.search),
              onPressed: () => {Navigator.pushNamed(context, 'search')},
            )),
        BottomNavigationBarItem(
            label: 'Settings',
            icon: IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () => {Navigator.pushNamed(context, 'settings')},
            )),
      ],
      currentIndex: index,
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  final index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: const Center(
            child: Text('Home'),
          ),
        ),
        bottomNavigationBar: BottomBar(index));
  }
}

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);
  final index = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: const Center(
            child: Text('Search'),
          ),
        ),
        bottomNavigationBar: BottomBar(index));
  }
}

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);
  final index = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: const Center(
            child: Text('Settings'),
          ),
        ),
        bottomNavigationBar: BottomBar(index));
  }
}
