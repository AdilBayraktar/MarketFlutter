import 'package:flutter/material.dart';
import 'package:store_app/widgets/home/logForm.dart';

import '../constants.dart';

enum LogType { logIn, register }

class LogScreen extends StatelessWidget {
  final LogType logType;

  const LogScreen({Key key, this.logType}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.5,
                decoration: BoxDecoration(
                    color: kBlueColor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(65),
                        bottomRight: Radius.circular(65))),
              ),
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      "Hoş Geldiniz..",
                      style: TextStyle(
                          color: kBackgroundColor,
                          fontSize: 30,
                          fontWeight: FontWeight.w500),
                    ),
                    Image.asset(
                      'images/intro.png',
                      height: 250,
                      width: 250,
                    ),
                    SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          LogForm(
            logType: logType,
          ),
        ],
      ),
    ));
  }
}
