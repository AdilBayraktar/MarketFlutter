import 'package:flutter/material.dart';
import 'package:store_app/screens/log_screen.dart';
import 'package:store_app/widgets/details/Buttons.dart';

import '../constants.dart';

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBlueColor,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SizedBox(),
                Image.asset(
                  'images/intro.png',
                  height: 250,
                  width: 300,
                ),
                Buttons(
                    bgColor: kBackgroundColor,
                    text: "Başla",
                    textColor: kBlueColor,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LogScreen()));
                    }),
                SizedBox(),
              ],
            ),
          ),
        ));
  }
}
