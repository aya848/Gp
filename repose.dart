import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
/// This Widget is the main application widget.
class MyRepose extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyStatefulWidget( ) ,
    );
  }
}
class MyStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyStatefulWidgetState();
  }}
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  List<String> list=['بعض الوقت','لا','نعم','منخفض','طبيعى','مرتفع'];//['sometimes=0','no=1','yes=2','low=3','high=4','normal=5']
  int selectedIndex=0;
  String textb;
  Widget build(BuildContext context) {
    return Directionality(textDirection: TextDirection.rtl,
      child: Scaffold(
          appBar: AppBar(title: Text('سلامتك',style: TextStyle(color: Colors.white,fontSize: 50,fontFamily: 'Abdo')
            ,textDirection:TextDirection.rtl ,textAlign: TextAlign.center,),
              backgroundColor:Colors.teal[300], ),

          body:Container(width: double.infinity,
            height: double.infinity,

            child: SingleChildScrollView(child:Column( mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('شعورك تجاه كلا من',style: TextStyle(fontSize: 45,color: Colors.teal[600],fontFamily: 'Abdo')),
                  requiredText('الصداع'),//1-headache info
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(padding: const EdgeInsets.all(3),),

                        customRadio(list[2],0),
                        Padding(padding: const EdgeInsets.all(3),),
                        customRadio(list[1],0),
                        Padding(padding: const EdgeInsets.all(3),),
                        customRadio(list[0],0),
                      ]),
                  requiredText('الإجهاد العام'),//2-fatigue info
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(padding: const EdgeInsets.all(3),),

                        customRadio(list[2],0),
                        Padding(padding: const EdgeInsets.all(3),),
                        customRadio(list[1],0),
                        Padding(padding: const EdgeInsets.all(3),),
                        customRadio(list[0],0),
                      ]),
                  requiredText('العطس'),//3-sneezing info
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(padding: const EdgeInsets.all(3),),

                        customRadio(list[2],0),
                        Padding(padding: const EdgeInsets.all(3),),
                        customRadio(list[1],0),
                        Padding(padding: const EdgeInsets.all(3),),
                        customRadio(list[0],0),
                      ]),
                  requiredText('صعوبة التنفس'),//4-shortness of breathing info
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(padding: const EdgeInsets.all(3),),

                        customRadio(list[2],0),
                        Padding(padding: const EdgeInsets.all(3),),
                        customRadio(list[1],0),
                        Padding(padding: const EdgeInsets.all(3),),
                        customRadio(list[0],0),
                      ]),
                  requiredText('الآلام و الأوجاع'),//5-pains and  gripe info
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(padding: const EdgeInsets.all(3),),

                        customRadio(list[2],0),
                        Padding(padding: const EdgeInsets.all(3),),
                        customRadio(list[1],0),
                        Padding(padding: const EdgeInsets.all(3),),
                        customRadio(list[0],0),
                      ]),
                  requiredText('التهاب الحنجرة'),//6- sore throat inflammation
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(padding: const EdgeInsets.all(3),),

                        customRadio(list[2],0),
                        Padding(padding: const EdgeInsets.all(3),),
                        customRadio(list[1],0),
                        Padding(padding: const EdgeInsets.all(3),),
                        customRadio(list[0],0),
                      ]),
                  requiredText('سيلان الأنف'),//7-runny nose info
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(padding: const EdgeInsets.all(3),),

                        customRadio(list[2],0),
                        Padding(padding: const EdgeInsets.all(3),),
                        customRadio(list[1],0),
                        Padding(padding: const EdgeInsets.all(3),),
                        customRadio(list[0],0),
                      ]),
                  requiredText('درجة الحرارة'),//8-temp1 info
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(padding: const EdgeInsets.all(3),),

                        customRadio(list[5],0),
                        Padding(padding: const EdgeInsets.all(3),),
                        customRadio(list[4],0),
                        Padding(padding: const EdgeInsets.all(3),),
                        customRadio(list[3],0),

                      ]),
                  requiredText('تنخفض الحرارة بإستخدام خافض الحرارة؟'),//9-temp2 info
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(padding: const EdgeInsets.all(3),),

                        customRadio(list[2],0),
                        Padding(padding: const EdgeInsets.all(3),),
                        customRadio(list[1],0),
                        Padding(padding: const EdgeInsets.all(3),),
                        customRadio(list[0],0),

                      ]),

                  requiredText('نسبة الأكسجين'),//10-oxgen info
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(padding: const EdgeInsets.all(3),),

                        customRadio(list[5],0),
                        Padding(padding: const EdgeInsets.all(3),),
                        customRadio(list[4],0),
                        Padding(padding: const EdgeInsets.all(3),),
                        customRadio(list[3],0),
                      ]),
                  requiredText('معدل النبض'),//7-heart rate info
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(padding: const EdgeInsets.all(3),),

                        customRadio(list[5],0),
                        Padding(padding: const EdgeInsets.all(3),),
                        customRadio(list[4],0),
                        Padding(padding: const EdgeInsets.all(3),),
                        customRadio(list[3],0),
                      ]),
                  Material(
                    color: Colors.teal[300],
                    borderRadius: BorderRadius.circular(30),
                    child:MaterialButton(
                      minWidth: 150,
                      height: 50,
                      child:Text('التشخيص',textAlign:TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white,fontFamily: 'Abdo')),
                      onPressed: () {
                        /* Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return null;
                            },
                          ),
                        );*/
                      },
                    ),),


                ] ),),)

      ), );


  }
  void  changeIndex(int index){

    setState(() {
      selectedIndex=index;
    }

    );
  }

  Widget customRadio (String txt,int index){
    return OutlineButton(
      onPressed: ()=>changeIndex(index),
      shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(10)),
      borderSide: BorderSide(color: selectedIndex==index?Colors.teal[300]:Colors.green),
      child: Text(txt,style: TextStyle(color: selectedIndex==index?Colors.teal[300]:Colors.green,fontFamily: 'Abdo',fontSize: 25),),
    );
  }
  Widget requiredText (textb){
    return Text(textb,
      style:TextStyle(fontSize: 30,color: Colors.teal[600],fontFamily: 'Abdo') ,


    );
  }


}
