import 'package:flutter/material.dart';
import '../constants.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBlueColor,
      appBar: AppBar(
        title: Text("Hakkında",style: TextStyle(fontSize: 18),),centerTitle: true,
        backgroundColor: kBlueColor,
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60.0,
              backgroundImage: AssetImage("images/selcuk.png"),
            ),
            SizedBox(
              height: 40,
              width: 200,
              child: Divider(
                color: Colors.white,
              ),
            ),
            Text(
              "Adil BAYRAKTAR",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  fontSize: 30,
                  fontFamily: 'flat'),
            ),
            Text("Öğrenci",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: 18,
                    fontFamily: 'flat')),
            SizedBox(
              height: 40,
              width: 200,
              child: Divider(
                color: Colors.white,
                
              ),), 
            Text(
              "Bu uygulama\nDr. Öğretim Üyesi Ahmet Cevahir ÇINAR\ntarafından yürütülen 3301456 kodlu MOBİL PROGRAMLAMA dersi kapsamında\n183311107 Adil BAYRAKTAR tarafından 30 Nisan 2021 günü yapılmıştır.",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  fontFamily: 'flat',),
              textAlign: TextAlign.center,      
            ),
          ],
        ),
      ),
    );
  }
}
