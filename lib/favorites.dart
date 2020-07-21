import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:streaks/constants.dart';

class FavoritesPage extends StatefulWidget {
  @override
  _FavoritesPageState createState() => _FavoritesPageState();
}

class My_Bars extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StepProgressIndicator(
      totalSteps: 7,
      currentStep: 1,
      size: 27,
      selectedSize: 22,
      selectedColor: Colors.white,
      unselectedColor: Color.fromARGB(255, 111, 69, 59),
      roundedEdges: Radius.circular(10),
    );
  }
}

class _FavoritesPageState extends State<FavoritesPage> {
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
          margin: EdgeInsets.all(10.0),
          color: kappcolortheme,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              My_Bars(),
              Row(
                children: <Widget>[
                  Text(
                    'week 1 : stay fit',
                    style: kFontStyles,
                    textAlign: TextAlign.end,
                  ),
                ],
              ),
              My_Bars(),
              Row(
                children: <Widget>[
                  Text(
                    'week 1 : no SMOKING',
                    style: kFontStyles,
                    textAlign: TextAlign.end,
                  ),
                ],
              ),
              My_Bars(),
              Row(
                children: <Widget>[
                  Text(
                    'week 1 : read something',
                    style: kFontStyles,
                    textAlign: TextAlign.end,
                  ),
                ],
              ),
              My_Bars(),
              Row(
                children: <Widget>[
                  Text(
                    'week 1 : eat healthy',
                    style: kFontStyles,
                    textAlign: TextAlign.end,
                  ),
                ],
              ),
              My_Bars(),
              Row(
                children: <Widget>[
                  Text(
                    'week 1 : meditate',
                    style: kFontStyles,
                    textAlign: TextAlign.end,
                  ),
                ],
              ),
              My_Bars(),
              Row(
                children: <Widget>[
                  Text(
                    'week 1 : practice gratitude',
                    style: kFontStyles,
                    textAlign: TextAlign.end,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
