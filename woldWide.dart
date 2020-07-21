import 'package:flutter/material.dart';
class WorldWide extends StatelessWidget{
  final Map worldWide;

  const WorldWide({Key key, this.worldWide}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: GridView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2,
        ),
        children: <Widget>[
          StatusPanel(
            title: 'المؤكدة',
            panelColor: Colors.red[100],
            textColor: Colors.red,
            count: worldWide['cases'].toString(),
          ),
          StatusPanel(
            title: 'النشطة',
            panelColor: Colors.blue[100],
            textColor: Colors.blue[800],
            count: worldWide['active'].toString(),
          ),
          StatusPanel( title: 'المتعافون',
            panelColor: Colors.green[100],
            textColor: Colors.green,
            count: worldWide['recovered'].toString(),),
          StatusPanel( title: 'الوفيات',
            panelColor: Colors.grey[400],
            textColor: Colors.grey[800],
            count:worldWide['deaths'].toString(),),
        ],
      ),
    );
  }

}

class StatusPanel extends StatelessWidget{
  final Color panelColor;
  final Color textColor;
  final String title;
  final String count;

  const StatusPanel({Key key, this.panelColor, this.textColor, this.title, this.count}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(10),
      height: 80,
      width: width / 2,
      color: panelColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(title,style:TextStyle (fontWeight:  FontWeight.bold,
            fontSize: 20,fontFamily:'Abdo',color: textColor,),),
          Text(count,style:TextStyle (fontWeight:  FontWeight.bold,
            fontSize: 16,color: textColor,),),
        ],
      ),
    );
  }

}