import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:streaks/Icons.dart';

class AddPage extends StatefulWidget {
  @override
  _AddPageState createState() => _AddPageState();
}

List MyHabits = [];
List values = [0.0, 0.0, 0.0, 0.0, 0.0, 0.0];

void valuechecker() {
  if (values[3] == 1.0) {}
}

class _AddPageState extends State<AddPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kappcolortheme,
        elevation: 0,
        title: Center(
          child: Text(
            'my streaks',
            style: kPageHeaderStyles,
          ),
        ),
      ),
      backgroundColor: kappcolortheme,
      body: SafeArea(
        child: Container(
          color: kappcolortheme,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        values[0] += 0.1;
                        if (values[0] == 1.0) {
                          stay_fit_icon = done_icon;
                        }
                      });
                    },
                    onLongPress: () {
                      setState(() {
                        values[0] = 1.0;
                        stay_fit_icon = done_icon;
                      });
                    },
                    child: Column(
                      children: <Widget>[
                        Stack(
                          alignment: Alignment.center,
                          children: <Widget>[
                            Container(
                                height: 130.0,
                                width: 130.0,
                                child: CircularProgressIndicator(
                                  strokeWidth: 10,
                                  value: values[0],
                                  backgroundColor:
                                      Color.fromARGB(255, 111, 69, 59),
                                  valueColor:
                                      AlwaysStoppedAnimation(Colors.white),
                                )),
                            Container(child: Center(child: stay_fit_icon)),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'STAY FIT',
                          style: kFontStyles,
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        values[1] += 0.1;
                        if (values[1] == 1.0) {
                          stay_fit_icon = done_icon;
                        }
                      });
                    },
                    onLongPress: () {
                      setState(() {
                        values[1] = 1.0;
                        no_smoking = done_icon;
                      });
                    },
                    child: Column(
                      children: <Widget>[
                        Stack(
                          alignment: Alignment.center,
                          children: <Widget>[
                            Container(
                                height: 130.0,
                                width: 130.0,
                                child: CircularProgressIndicator(
                                  strokeWidth: 10,
                                  value: values[1],
                                  backgroundColor:
                                      Color.fromARGB(255, 111, 69, 59),
                                  valueColor:
                                      AlwaysStoppedAnimation(Colors.white),
                                )),
                            Container(child: Center(child: no_smoking)),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          '''DON'T SMOKE''',
                          style: kFontStyles,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        values[2] += 0.1;
                        if (values[2] == 1.0) {
                          setState(() {
                            book_icon = done_icon;
                          });
                        }
                      });
                    },
                    onLongPress: () {
                      setState(() {
                        values[2] = 1.0;
                        book_icon = done_icon;
                      });
                    },
                    child: Column(
                      children: <Widget>[
                        Stack(
                          alignment: Alignment.center,
                          children: <Widget>[
                            Container(
                                height: 130.0,
                                width: 130.0,
                                child: CircularProgressIndicator(
                                  strokeWidth: 10,
                                  value: values[2],
                                  backgroundColor:
                                      Color.fromARGB(255, 111, 69, 59),
                                  valueColor:
                                      AlwaysStoppedAnimation(Colors.white),
                                )),
                            Container(child: Center(child: book_icon)),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          '''READ''',
                          style: kFontStyles,
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        values[3] += 0.1;
                        if (values[3] == 1.0) {
                          setState(() {
                            restaurant_icon = done_icon;
                          });
                        }
                      });
                    },
                    onLongPress: () {
                      setState(() {
                        values[3] = 1.0;
                        restaurant_icon = done_icon;
                      });
                    },
                    child: Column(
                      children: <Widget>[
                        Stack(
                          alignment: Alignment.center,
                          children: <Widget>[
                            Container(
                                height: 130.0,
                                width: 130.0,
                                child: CircularProgressIndicator(
                                  strokeWidth: 10,
                                  value: values[3],
                                  backgroundColor:
                                      Color.fromARGB(255, 111, 69, 59),
                                  valueColor:
                                      AlwaysStoppedAnimation(Colors.white),
                                )),
                            Container(child: Center(child: restaurant_icon)),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          '''EAT HEALTHY''',
                          style: kFontStyles,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        values[4] += 0.1;
                        if (values[4] == 1.0) {
                          setState(() {
                            restaurant_icon = done_icon;
                          });
                        }
                      });
                    },
                    onLongPress: () {
                      setState(() {
                        values[4] = 1.0;
                        meditate_icon = done_icon;
                      });
                    },
                    child: Column(
                      children: <Widget>[
                        Stack(
                          alignment: Alignment.center,
                          children: <Widget>[
                            Container(
                                height: 130.0,
                                width: 130.0,
                                child: CircularProgressIndicator(
                                  strokeWidth: 10,
                                  value: values[4],
                                  backgroundColor:
                                      Color.fromARGB(255, 111, 69, 59),
                                  valueColor:
                                      AlwaysStoppedAnimation(Colors.white),
                                )),
                            Container(child: Center(child: meditate_icon)),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          '''MEDITATE''',
                          style: kFontStyles,
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        values[5] += 0.1;
                        if (values[5] == 1.0) {
                          happy_icon = done_icon;
                        }
                      });
                    },
                    onLongPress: () {
                      setState(() {
                        values[5] = 1.0;
                        happy_icon = done_icon;
                      });
                    },
                    child: Column(
                      children: <Widget>[
                        Stack(
                          alignment: Alignment.center,
                          children: <Widget>[
                            Container(
                                height: 130.0,
                                width: 130.0,
                                child: CircularProgressIndicator(
                                  strokeWidth: 10,
                                  value: values[5],
                                  backgroundColor:
                                      Color.fromARGB(255, 111, 69, 59),
                                  valueColor:
                                      AlwaysStoppedAnimation(Colors.white),
                                )),
                            Container(child: Center(child: happy_icon)),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          '''GRATITUDE''',
                          style: kFontStyles,
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
