//import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:salamtk/about.dart';
//import 'package:salamtak/login.dart';
//import  'package:salamtak/welcome.dart';
import 'package:salamtk/advices.dart';
import 'package:salamtk/questions.dart';

import 'login.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: new Scaffold(
        appBar: AppBar(
        title: Text('سلامتك',
        style: TextStyle(fontWeight: FontWeight.w500,fontSize: 30,fontFamily: 'Tajawal'),
        ),
         backgroundColor: Colors.teal[300],
        ),
        drawer: Drawer(
          elevation: 20.0,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              SizedBox(height: 60,),
              Container(
                child: Image.asset(
                  'assets/images/1.png', color: Colors.teal[300],),
                width: 120,
                height: 120,
              ),
              SizedBox(height: 20,),
              ListTile(
                leading: Icon(Icons.assignment_ind),
                title: Text('الصفحة الشخصية',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25,color: Colors.teal[300],fontFamily: 'Tajawal'),
                ),
                onTap: () {
                  // This line code will close drawer programatically....
                  Navigator.pop(context);
                },
              ),
              Divider(
                height: 2.0,
              ),
              ListTile(
                leading: Icon(Icons.apps),
                title: Text('إرشادات عامة',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25,color: Colors.teal[300],fontFamily: 'Tajawal'),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Advices();
                      },
                    ),
                  );
                },
              ),
              Divider(
                height: 2.0,
              ),
              ListTile(
                leading: Icon(Icons.question_answer),
                title: Text('اسأل سلامتك',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25,color: Colors.teal[300],fontFamily: 'Tajawal'),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Criterias();
                      },
                    ),
                  );
                },
              ),
              Divider(
                height: 2.0,
              ),
              ListTile(
                leading: Icon(Icons.info_outline),
                title: Text('عن التطبيق',
                  style: TextStyle(fontWeight: FontWeight.bold,  fontSize: 25,color: Colors.teal[300],fontFamily: 'Tajawal'),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return About();
                      },
                    ),
                  );
                },
              ),
              Divider(
                height: 2.0,
              ),
              ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text('تسجيل الخروج',
                  style: TextStyle(fontWeight: FontWeight.bold,  fontSize: 25,color: Colors.teal[300],fontFamily: 'Tajawal'),
                ),
                onTap: () {
                  _auth.signOut();
                  Navigator.pushReplacement(
                      context,
                      new MaterialPageRoute(
                          builder: (BuildContext context) =>
                              LoginScreen()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
                    //async{
                      //await FirebaseAuth.instance.signOut();
                      //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen()));}