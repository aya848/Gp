import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp1/panels/most_effected_countries.dart';
import 'package:flutterapp1/panels/myCountry.dart';
import 'package:flutterapp1/panels/woldWide.dart';
import 'package:http/http.dart'as http;
class HomePage extends StatefulWidget{
  @override
  _HomePage createState()=> _HomePage();

  }
class _HomePage extends State<HomePage>{
  Map worldData;

  fetchWorldWideData()async{
    http.Response response= await http.get('https://corona.lmao.ninja/v2/all');
    setState(() {
      worldData=json.decode(response.body);

    });
  }
  List countriesData;
  fetchCountriesData()async{
    http.Response response= await http.get('https://corona.lmao.ninja/v2/countries?sort=cases');
    setState(() {
      countriesData=json.decode(response.body);

    });
  }
  List myEgypt;
  fetchMyEgypt()async{
    http.Response response= await http.get('https://corona.lmao.ninja/v2/countries/Egypt');
    setState(() {
      myEgypt=json.decode(response.body);

    });
  }
  void initState(){
    super.initState();
    fetchWorldWideData();
    fetchCountriesData();
    fetchMyEgypt();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Directionality(
      textDirection: TextDirection.rtl,
        child:Scaffold(
      appBar: AppBar(
        title: Text('سلامتك',
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50,fontFamily: 'Abdo'),
        ),
        backgroundColor: Colors.teal[300],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(5),
              height: 100,
              child: Row(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:<Widget>[
                  myEgypt==null?CircularProgressIndicator():MyCountry(myCountry: myEgypt,),
                ]
              )
            ),
            Padding(padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 14) ,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:<Widget>[
               Text('عالمياً',style:TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.teal[600],fontFamily: 'Abdo') ,
              ),
                  Container(

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color:Colors.green[500],
                    ),
                    padding: EdgeInsets.all(10),
                    child: Text('إقليمياً',style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white,fontFamily: 'Abdo') ,
                    ),
                  ),

                ]),
            ),
            worldData==null?CircularProgressIndicator():WorldWide(worldWide: worldData,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('الدول الأكثر تأثراً',style:TextStyle(fontSize: 30,color: Colors.teal[600],fontWeight: FontWeight.bold,fontFamily: 'Abdo') ,
              ),
            ),
            SizedBox(height: 10,),
            countriesData==null?Container():MostEffected(countryData: countriesData,),

          ],
        ),
      ),
    ));
  }

}