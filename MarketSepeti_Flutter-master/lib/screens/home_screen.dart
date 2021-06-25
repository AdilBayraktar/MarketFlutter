import 'package:flutter/material.dart';
import 'package:store_app/constants.dart';
import 'package:store_app/screens/istatistikler.dart';
import 'package:store_app/widgets/home/home_body.dart';
import 'about.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Market Sepeti',
        ),
        centerTitle: false,
        actions: [
          IconButton(
            icon: Icon(Icons.info),
            iconSize: 30,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => About(),
                ),
              );
            },
          ),
        ],
      ),
      body: HomeBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Istatistik(),
            ),
          );
        },
        child: const Icon(Icons.apps_rounded),
        backgroundColor: kBlueColor,
      ),
    );
  }
}
