import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import  'package:salamtk/welcome.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'home.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  bool _showPassword = false;
  final _formkey = GlobalKey<FormState>();
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();
  creatUser() async {
    FirebaseUser firebaseUser;
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        print("Connected to Mobile Network");
        try {
          final newUser = await FirebaseAuth.instance.createUserWithEmailAndPassword(
              email: _emailcontroller.text , password: _passwordcontroller.text);
          if (newUser != null) {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => MyHomePage()),
                    (Route<dynamic> route) => route is MyHomePage);
          } else {
            var error = "حدث خطأ اثناء العملية !";
            print(error);
          }
        } catch (e) {
          var errorSigningIn;
          if (Platform.isAndroid) {
            switch (e.message) {
              case 'There is no user record corresponding to this identifier. The user may have been deleted.':
                errorSigningIn =
                "لا يوجد مستخدم بهذه المعلومات , قد يكون هناك خطأ في البريد الالكتروني او كلمة المرور .";
                break;
              case 'The password is invalid or the user does not have a password.':
                errorSigningIn = "كلمة مرور خاطئة .";
                break;
              case 'A network error (such as timeout, interrupted connection or unreachable host) has occurred.':
                errorSigningIn =
                "خطأ في الاتصال بشبكة الانترنت , تحقق من اتصالك و حاول مرة اخري .";
                break;
              default:
                print('Case ${e.message} is not yet implemented');
                errorSigningIn =
                '${e.message}';
            }
          } else if (Platform.isIOS) {
            switch (e.code) {
              case 'Error 17011':
                errorSigningIn =
                "لا يوجد مستخدم بهذه المعلومات , قد يكون هناك خطأ في البريد الالكتروني او كلمة المرور .";
                break;
              case 'Error 17009':
                errorSigningIn = "كلمة مرور خاطئة .";
                break;
              case 'Error 17020':
                errorSigningIn =
                "خطأ في الاتصال بشبكة الانترنت , تحقق من اتصالك و حاول مرة اخري .";
                break;
              default:
                print('Case ${e.message} is not yet implemented');
                errorSigningIn =
                '${e.message}';
            }
          }
          print(e);
          print(errorSigningIn);
        }
      }
    } on SocketException catch (_) {
      String invalid = "لا يوجد اتصال بشبكة الانترنت !";
      print(invalid);
    }
  }

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
            Form(
              key: _formkey,
              child: ListView(
                  children: <Widget>[
                 Container(
                  width: (width)*6/7,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: TextFormField(
                          autocorrect: true,
                          keyboardType: TextInputType.emailAddress,
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
                          validator: (text){
                            // ignore: missing_return
                            if(text.isEmpty){
                              return 'برجاء كتابة البريد اللإلكتروني';
                            }
                            if(text.length  >50){
                              return'البريد الإلكتروني طويل جدا';
                            }
                            if(text.contains(' ')) {
                              return 'يجب ألا يحتوي البريد الإلكتروني علي مسافات';
                            }
                            if(text.contains('0')){
                              return 'البريد الإلكتروني غير صحيح';
                            }
                            if(text.contains('-')){
                              return 'البريد الإلكتروني غير صحيح';
                            }
                            if(text.length<6){
                              return 'البريد الإلكتروني غير صحيح';
                            }
                          },
                          controller: _emailcontroller,
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
                          controller: _passwordcontroller,
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
                        callback: () async {
                          _formkey.currentState.validate()
                              ? creatUser()
                              : print('not valid');
                        }
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
               ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
