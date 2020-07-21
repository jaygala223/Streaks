import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'settings.dart';
import 'favorites.dart';
import 'Add.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 1;
  final List<Widget> _children = [FavoritesPage(), AddPage(), Settings()];

  void OnTappedBar(int index) {
    setState(() {
      _currentIndex = index;
      if (index == 0) {
        x = Icon(
          Icons.whatshot,
          size: 32,
          color: Colors.white,
        );
      } else if (index == 2) {
        y = Icon(
          Icons.settings,
          size: 32,
          color: Colors.white,
        );
      } else {
        y = Icon(
          Icons.settings,
          size: 32,
          color: Color.fromARGB(255, 111, 69, 59),
        );
        x = Icon(
          Icons.whatshot,
          size: 32,
          color: Color.fromARGB(255, 111, 69, 59),
        );
      }
    });
  }

  Icon y =
      Icon(Icons.settings, size: 32, color: Color.fromARGB(255, 111, 69, 59));
  Icon x =
      Icon(Icons.whatshot, size: 32, color: Color.fromARGB(255, 111, 69, 59));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        color: Color.fromARGB(255, 255, 112, 76),
        backgroundColor: Color.fromARGB(255, 255, 112, 76),
        height: 65,
        index: 1,
        animationDuration: Duration(milliseconds: 200),
        items: <Widget>[
          x,
          Icon(
            Icons.add,
            size: 32,
            color: Color.fromARGB(255, 111, 69, 59),
          ),
          y,
        ],
        onTap: OnTappedBar,
      ),
      body: _children[_currentIndex],
    );
  }
}
