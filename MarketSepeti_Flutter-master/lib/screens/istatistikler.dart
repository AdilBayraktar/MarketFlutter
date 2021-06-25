import 'package:flutter/material.dart';
import 'package:store_app/widgets/details/grafik.dart';

import '../constants.dart';

class Istatistik extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kBlueColor,
        appBar: AppBar(
          title: Text(
            "İstatistikler",
            style: TextStyle(fontSize: 18),
          ),
          centerTitle: true,
          backgroundColor: kBlueColor,
          elevation: 0,
        ),
        body: Center(
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SizedBox(
                        height: 3,
                      ),
                      Card(
                        child: Grafik(),
                        color: kBackgroundColor,
                      ),
                      Card(
                        semanticContainer: true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Column(
                          children: [
                            SizedBox(
                              width: double.infinity,
                              height: 10,
                            ),
                            Text(
                              "Ücretsiz Kargo",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.blueGrey,
                                  fontFamily: 'flat'),
                            ),
                            Text(
                              "Güvenli Ödeme",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.blueGrey,
                                  fontFamily: 'flat'),
                            ),
                            Text(
                              "Yüksek Kaliteli Ürünler",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.blueGrey,
                                  fontFamily: 'flat'),
                            ),
                            Text(
                              "Günlük İndirimler",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.blueGrey,
                                  fontFamily: 'flat'),
                            ),
                            SizedBox(
                              width: double.infinity,
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                      Text(
                        "Bizi Seçtiğiniz için Teşekkür ederiz",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w100,
                            fontSize: 26,
                            fontFamily: 'flat'),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    ]))));
  }
}
