import 'package:flutter/material.dart';
import 'package:store_app/screens/home_screen.dart';
import 'package:store_app/screens/log_screen.dart';
import '../../constants.dart';
import 'package:store_app/widgets/details/Buttons.dart';

class LogForm extends StatefulWidget {
  final LogType logType;

  const LogForm({Key key, @required this.logType}) : super(key: key);
  @override
  _LogFormState createState() => _LogFormState();
}

class _LogFormState extends State<LogForm> {
  final _formKey = GlobalKey<FormState>();
  String _email = '', _password = '';
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Column(children: <Widget>[
            TextFormField(
              onChanged: (value) => _email = value,
              validator: (value) =>
                  value.isEmpty ? 'Gerçek Email yazınız' : null,
              decoration: InputDecoration(
                  labelText: "Email Giriniz", hintText: 'adil@gmail.com'),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              onChanged: (value) => _password = value,
              validator: (value) =>
                  value.length < 6 ? 'Şıfreniz 6 harftan fazla olmalı' : null,
              decoration: InputDecoration(labelText: "Şifre Giriniz"),
              obscureText: true,
            ),
            SizedBox(
              height: 20,
            ),
            Buttons(
                bgColor: kBlueColor,
                text:
                    widget.logType == LogType.logIn ? 'Oturum Aç' : 'Kayıt ol',
                textColor: kBackgroundColor,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  );
                }),
            SizedBox(
              height: 5,
            ),
            FlatButton(
                onPressed: () {
                  if (widget.logType == LogType.logIn)
                    Navigator.of(context).pushReplacementNamed('register');
                  else
                    Navigator.of(context).pushReplacementNamed('login');
                },
                child: Text(
                  widget.logType == LogType.logIn
                      ? "Hesap Oluştur"
                      : "Hesabınız Var mı?",
                  style: TextStyle(color: Colors.black45, fontSize: 20),
                ))
          ]),
        ));
  }
}
