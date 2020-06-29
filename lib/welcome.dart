import 'package:flutter/cupertino.dart';
import 'package:salamtk/SignUp.dart';
import 'package:salamtk/login.dart';
import 'package:flutter/material.dart';
//import 'package:firebase_auth/firebase_auth.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height =MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Image.asset('assets/images/1.png',color: Colors.teal[300],),
              width: (width)*2/3,
              height: height/3,
              margin: EdgeInsets.only(top: 50,),
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Text(
                "علشان سلامتك تهمنا...عملنا الأبلكيشن ده عشانك",
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 33,color: Colors.teal[300],fontFamily: 'Abdo Free'),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 40),
            CustomButton(
              text: 'تسجيل الدخول',
              callback: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return  LoginScreen();
                    },
                  ),
                );
              },
            ),
            SizedBox(height: 10),
            CustomButton(
              text: 'إنشاء حساب',
              callback: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUp();
                    },
                  ),
                );
              },
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
class CustomButton extends StatelessWidget {

  final VoidCallback callback;
  final String text;

 const CustomButton({Key key, this.callback, this.text, }): super(key : key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: const EdgeInsets.all(6),
      child: Material(
        color:Colors.teal[300],
        elevation: 6,
        borderRadius: BorderRadius.circular(30),
        child: MaterialButton(
          onPressed: callback,
          minWidth: 200,
          height: 50,
          textColor: Colors.white,
          child: Text(text, textAlign:TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,fontFamily: 'Abdo Free'),
        ),
      ),
    )
    );
  }
}
class ordinarytext extends StatelessWidget {
  final String text;
  const ordinarytext({Key key, this.text, }): super(key : key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(text,
        style: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.w300,
            fontFamily: 'Abdo Free',
            letterSpacing: 1.0,
            color: Colors.teal[300]
        )
    );
  }
}
class advicestext extends StatelessWidget {
  final String text;
  const advicestext({Key key, this.text, }): super(key : key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(text,
      style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.w500,
          fontFamily: 'Abdo Free',
          letterSpacing: 1.0,
          color: Colors.teal[300]),
    );
  }
}