import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import  'package:salamtk/welcome.dart';
//import 'package:firebase_auth/firebase_auth.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  bool _showPassword = false;

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
              width: (width)/2,
              height: height/4,
              margin: EdgeInsets.only(top: 20,),
            ),
            Directionality(
              textDirection: TextDirection.rtl,
              child: Container(
                padding: EdgeInsets.only(left: 10,right:10),
                child: Text(
                  "محتاجين البيانات دي علشان نقدر نتواصل معاك لو احتجت مساعدة",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Abdo Free',
                        letterSpacing: 1.0,
                        color: Colors.teal[300],
                    )
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              width: (width)*6/7,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: TextFormField(
                      autocorrect: true,
                      keyboardType: TextInputType.visiblePassword,
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(8),
                        prefixIcon: Icon(Icons.person),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          borderSide: BorderSide(color: Colors.teal[300], width: 2),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          borderSide: BorderSide(color: Colors.teal[500], width: 2),
                        ),
                        labelStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 22,
                          fontFamily: 'Abdo Free',
                        ),
                        labelText: 'اسم المستخدم',
                      ) ,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: TextFormField(
                      autocorrect: true,
                      keyboardType: TextInputType.visiblePassword,
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(8),
                        prefixIcon: Icon(Icons.smartphone),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          borderSide: BorderSide(color: Colors.teal[300], width: 2),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          borderSide: BorderSide(color: Colors.teal[500], width: 2),
                        ),
                        labelStyle: TextStyle(
                          color: Colors.grey,
                            fontSize: 22,
                            fontFamily: 'Abdo Free',
                        ),
                        labelText: 'رقم الهاتف',
                      ) ,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: TextFormField(
                      autocorrect: true,
                      keyboardType: TextInputType.visiblePassword,
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(8),
                        prefixIcon: Icon(Icons.home),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          borderSide: BorderSide(color: Colors.teal[300], width: 2),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          borderSide: BorderSide(color: Colors.teal[500], width: 2),
                        ),
                        labelStyle: TextStyle(
                          fontSize: 22,
                          fontFamily: 'Abdo Free',
                          color: Colors.grey,
                        ),
                        labelText: 'محل الإقامة',
                      ) ,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: TextFormField(
                      autocorrect: true,
                      keyboardType: TextInputType.visiblePassword,
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(8),
                        prefixIcon: Icon(Icons.account_circle),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          borderSide: BorderSide(color: Colors.teal[300], width: 2),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          borderSide: BorderSide(color: Colors.teal[500], width: 2),
                        ),
                        labelStyle: TextStyle(
                          fontSize: 22,
                          fontFamily: 'Abdo Free',
                          color: Colors.grey,
                        ),
                        labelText: 'البريد الإلكتروني',
                      ) ,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: TextFormField(
                      autocorrect: true,
                      obscureText: !this._showPassword,
                      keyboardType: TextInputType.visiblePassword,
                      textDirection: TextDirection.rtl,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(8),
                        prefixIcon: Icon(Icons.lock_outline),
                        suffixIcon: IconButton(
                          icon: Icon(
                            Icons.remove_red_eye,
                            color: this._showPassword ? Colors.lightBlue : Colors.grey,
                          ),
                          onPressed: () {
                            setState(() => this._showPassword = !this._showPassword);
                          },
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          borderSide: BorderSide(color: Colors.teal[300], width: 2),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(50.0)),
                          borderSide: BorderSide(color: Colors.teal[500], width: 2),
                        ),
                        labelStyle: TextStyle(
                          fontSize: 22,
                          fontFamily: 'Abdo Free',
                          color: Colors.grey,
                        ),
                        labelText: 'تعيين كلمة مرور',
                      ) ,
                    ),
                  ),
                  SizedBox(height: 10),
                  CustomButton(
                    text:'إنشاء حساب',
                    callback: () {
                    },
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
