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
  GlobalKey<ScaffoldState> _scafold = new GlobalKey<ScaffoldState>();

  showNotification(msg, _scafold) {
    _scafold.currentState.showSnackBar(
      SnackBar(
        content: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "$msg",
            textAlign: TextAlign.center,
            style: TextStyle(fontFamily: "Tajawal", fontSize: 18),
          ),
        ),
        backgroundColor: Colors.black87.withOpacity(.8),
        duration: Duration(seconds: 4),
      ),
    );
  }
  bool _locationLoading = false;
  creatUser() async {
    setState(() {
      _locationLoading = true;
    });
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
            showNotification("$error", _scafold);

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
          showNotification("$errorSigningIn", _scafold);
          setState(() {
            _locationLoading = false;
          });
        }
      }
    } on SocketException catch (_) {
      String invalid = "لا يوجد اتصال بشبكة الانترنت !";
      print(invalid);
      showNotification("$invalid", _scafold);
      setState(() {
        _locationLoading = false;
      });
    }
  }

  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height =MediaQuery.of(context).size.height;
    return Scaffold(
      key: _scafold,
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
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
                  padding: EdgeInsets.only(left: 20,right:20),
                  child: Text(
                    "محتاجين البيانات دي علشان نقدر نتواصل معاك لو احتجت مساعدة",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Tajawal',
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
                           fontFamily: 'Tajawal',
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
                       keyboardType: TextInputType.phone,
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
                             fontFamily: 'Tajawal',
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
                       keyboardType: TextInputType.text,
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
                           fontFamily: 'Tajawal',
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
                         if (!text.contains("@")) {
                           return "البريد الالكتروني غير صحيح";
                         }
                         if (!text.contains(".")) {
                           return "البريد الالكتروني غير صحيح";
                         }
                         if (text.length < 2) {
                           return "البريد الالكتروني قصير جدا";
                         }
                       },
                       controller: _emailcontroller,
                       autocorrect: true,
                       keyboardType: TextInputType.emailAddress,
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
                           fontFamily: 'Tajawal',
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
                       validator: (text) {
                         if (text.isEmpty) {
                           return "برجاء كتابة كلمة المرور";
                         }
                         if (text.length <= 5) {
                           return "كلمة المرور يجب ان لا تقل عن 6 حروف";
                         }
                       },
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
                           fontFamily: 'Tajawal',
                           color: Colors.grey,
                         ),
                         labelText: 'تعيين كلمة مرور',
                       ) ,
                     ),
                   ),
                   SizedBox(height: 10),
                   _locationLoading
                       ? Image.asset(
                     "assets/images/loading.gif",
                     height: 47.0,
                     width: 47.0,
                   )
                       :CustomButton(
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
      ),
    );
  }
}
