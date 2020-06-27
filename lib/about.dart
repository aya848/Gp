import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          appBar: AppBar(
            title: Text('عن التطبيق',
              style: TextStyle(fontWeight:FontWeight.w500,fontSize: 40,fontFamily: 'Abdo Free',),
            ),
            backgroundColor: Colors.teal[300],
          ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                child: Text('سلامتك هيساعدك في إنك تتعرف علي حالتك وتشخصها بصورة مبدئية من غير ما تتعرض لاختلاط وازدحام في ظل الظروف الراهنة. \n \nالتطبيق ده صممه مجموعة طلبة بقسم هندسة الإلكترونيات و الاتصالات جامعة المنصورة.'
                    ,textDirection:TextDirection.rtl,
                    style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w500,
                      fontFamily: 'Abdo Free',
                    letterSpacing: 1.0,
                        color: Colors.teal[300]
                )),
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ) ,
              ),
            ],
          ),
        ) ,
      ),
    );
  }
}
