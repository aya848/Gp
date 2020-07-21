import 'package:flutter/material.dart';
class MyCountry extends StatelessWidget{
  final List myCountry;

  const MyCountry({Key key, this.myCountry}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child:
      ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index){
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 10,vertical: 2),
            child: Row(
              children: <Widget>[
                Image.network(myCountry[index]['countryInfo']['flag'],height: 30,width: 50,),
                SizedBox(width: 10,),
                Text(myCountry[index]['country'],style: TextStyle(fontWeight: FontWeight.bold,)),
                Text(myCountry[index]['cases'].toString(),
                  style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,),
                ),
              ],
            ),

          );

        },

      ),
    );
  }
}