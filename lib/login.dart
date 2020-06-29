//import 'dart:html';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:salamtk/welcome.dart';
//import 'SignUp.dart';
import 'home.dart';
class LoginScreen extends StatefulWidget{
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  // void initState()
  // {
  // super.initState();
  //}

  bool _showPassword = false;
  final _loginFormKey = GlobalKey<FormState>();
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();

  final _auth = FirebaseAuth.instance;
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
  signIn() async {

    setState(() {
      _locationLoading = true;
    });

    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        print("Connected to Mobile Network");

        try {
          final user = await _auth.signInWithEmailAndPassword(
              email: _emailcontroller.text, password: _passwordcontroller.text);
          if (user != null) {
            Navigator.pushReplacement(
                context,
                new MaterialPageRoute(
                    builder: (BuildContext context) => MyHomePage()));
          }

        } catch (e) {


          var errorSigningIn = "لقد حدث خطأ اثناء اتمام العملية !";
          if (Platform.isAndroid) {
            switch (e.message) {
              case 'There is no user record corresponding to this identifier. The user may have been deleted.':
                errorSigningIn =
                "لا يوجد مستخدم بهذه المعلومات , قد يكون هناك خطأ في البريد الالكتروني .";
                break;
              case 'The password is invalid or the user does not have a password.':
                errorSigningIn = "كلمة مرور خاطئة .";
                break;
              case 'A network error (such as timeout, interrupted connection or unreachable host) has occurred.':
                errorSigningIn =
                "خطأ في الاتصال بشبكة الانترنت , تحقق من اتصالك و حاول مرة اخري .";
                break;
            // ...
              default:
                print('Case ${e.message} is not yet implemented');
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
            // ...
              default:
                print('Case ${e.message} is not yet implemented');
            }
          }


          setState(() {
            _locationLoading = false;
          });

          print(e.message);
          print(errorSigningIn);
          showNotification("$errorSigningIn", _scafold);


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

  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height =MediaQuery.of(context).size.height;
    return Scaffold(
      key: _scafold,
      body: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          //child: Form(
          //key: _formkey,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Directionality(
                textDirection: TextDirection.rtl,
                child: Container(
                  width: (width)*4/5,
                  child: Form(
                    key: _loginFormKey,
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Image.asset('assets/images/1.png',color: Colors.teal[300],),
                          width: (width)*3/5,
                          height: height/4,
                          margin: EdgeInsets.only(top: 80,bottom: 20),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          child: TextFormField(
                            autocorrect: true,
                            validator: (text) {
                              if (text.isEmpty) {
                                return "برجاء كتابة البريد الالكتروني";
                              }
                              if (text.length < 2) {
                                return "البريد الالكتروني قصير جدا";
                              }
                            },
                            keyboardType: TextInputType.emailAddress,
                            textDirection: TextDirection.rtl,
                            controller: _emailcontroller,
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
                                color: Colors.grey,
                                fontSize: 22,
                                fontFamily: 'Tajawal',
                              ),
                              labelText: 'البريد الإلكتروني',
                              
                            ) ,
                          ),
                        ),
                        /*CustomTextField(
                            //controller: _emailcontroller,
                            text: 'البريد اللإلكتروني',
                            inputType: TextInputType.emailAddress,
                            icon_1: Icon(Icons.account_circle),
                            showpassword: true,
                            obsecure: false,
                          ),*/
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          autocorrect: true,
                          obscureText: !this._showPassword,
                          validator: (text) {
                            if (text.isEmpty) {
                              return "برجاء كتابة كلمة المرور";
                            }
                            if (text.length <= 5) {
                              return "كلمة المرور يجب ان لا تقل عن 6 حروف";
                            }
                          },
                          keyboardType: TextInputType.visiblePassword,
                          textDirection: TextDirection.rtl,
                          controller: _passwordcontroller,
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
                              color: Colors.grey,
                              fontSize: 22,
                              fontFamily: 'Tajawal',
                            ),
                            labelText: ' كلمة المرور',
                          ) ,
                        ),
                        /*CustomTextField(
                            //controller: _passwordcontroller,
                            text: 'كلمة المرور',
                            inputType: TextInputType.visiblePassword,
                            showpassword: false,
                            obsecure:  !this._showPassword,
                            icon_1: Icon(Icons.lock_outline),
                            icon_2:  IconButton(
                              icon: Icon(
                                Icons.remove_red_eye,
                                color: this._showPassword ? Colors.lightBlue : Colors.grey,
                              ),
                              onPressed: () {
                                setState(() => this._showPassword = !this._showPassword);
                              },
                            ),
                          ),*/
                        SizedBox(height: 20),
                        _locationLoading
                            ? Image.asset(
                          "assets/images/loading.gif",
                          height: 47.0,
                          width: 47.0,
                        )
                            : CustomButton(
                            text: 'تسجيل الدخول',
                            callback: (){

                              _loginFormKey.currentState
                                  .validate()
                                  ? signIn()
                                  : print("not valid");

                            } /*async {
                              //if(_formkey.currentState.validate()){
                                //var result = await FirebaseAuth.instance.signInWithEmailAndPassword(email: _emailcontroller.text, password: _passwordcontroller.text);
                                //if(result != null){
                                  // pushReplacement
                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(builder: (context) => MyHomePage()),
                                  );
                                //}//else{
                                  //print('عفوا اسم المستخدم غير مسجل');
                                //}
                              }*/

                          //),
                          /*CustomButton(
                            text: 'إنشاء حساب',
                            callback: ()async {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp() ) );
                            },*/
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
      ),
    );
    //);
  }
}