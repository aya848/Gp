import 'package:flutter/material.dart';
//import 'package:firebase_auth/firebase_auth.dart';
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
 // final _formkey = GlobalKey<FormState>();
  //TextEditingController _emailcontroller = TextEditingController();
  //TextEditingController _passwordcontroller = TextEditingController();

  @override
  /*void dispose()
  {
    _emailcontroller.dispose();
    _passwordcontroller.dispose();
    super.dispose();
  }*/

  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height =MediaQuery.of(context).size.height;
    return Scaffold(
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
                          child: TextField(
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
                                color: Colors.grey,
                                fontSize: 22,
                                fontFamily: 'Abdo Free',
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
                              color: Colors.grey,
                              fontSize: 22,
                              fontFamily: 'Abdo Free',
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
                        CustomButton(
                          text: 'تسجيل الدخول',
                          callback: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                builder: (context) {
                              return MyHomePage();
                            },
                            ),
                            );
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
              ],
            )
      ),
    );
    //);
  }
}