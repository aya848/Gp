import 'package:flutter/material.dart';
class MostEffected extends StatelessWidget{
  final List countryData;

  const MostEffected({Key key, this.countryData}) : super(key: key);
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
                      Image.network(countryData[index]['countryInfo']['flag'],height: 30,width: 50,),
                      SizedBox(width: 10,),
                      Text(countryData[index]['country'],style: TextStyle(fontWeight: FontWeight.bold,)),
                      Text(countryData[index]['deaths'].toString(),
                        style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontFamily: 'Abdo'),
                      ),
                    ],
                  ),

              );

          },
          itemCount: 6,
        ),
    );
        }
  }