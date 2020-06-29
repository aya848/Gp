import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:salamtk/welcome.dart';

class Advices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 20,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                textDirection: TextDirection.rtl,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 40,),
                        Image.asset('assets/images/covid-19.jpg',width: 100,height: 100,),
                        SizedBox(height: 30,),
                        Image.asset('assets/images/wash-your-hands.png',width: 100,height: 100,),
                        SizedBox(height: 35,),
                        Image.asset('assets/images/no-touch.png',width: 100,height: 100,),
                        SizedBox(height: 50,),
                        Image.asset('assets/images/cough.png',width: 100,height: 100,),
                        SizedBox(height: 50,),
                        Image.asset('assets/images/throw.jpg',width: 100,height: 100,),
                        SizedBox(height: 25,),
                        Image.asset('assets/images/social.png',width: 100,height: 100,),
                        SizedBox(height: 15,),
                        Image.asset('assets/images/mask.jpg',width: 100,height: 90,),
                        SizedBox(height: 20,),
                        Image.asset('assets/images/animal.jpg',width: 100,height: 70,),
                        SizedBox(height: 15,),
                        Image.asset('assets/images/stay-home.jpg',width: 100,height: 70,),
                        SizedBox(height: 15,),
                        Image.asset('assets/images/cleaning-service.png',width: 100,height: 80,),
                        SizedBox(height: 35,),
                        Image.asset('assets/images/wash-food.jpg',width: 100,height: 100,),
                        SizedBox(height: 35,),
                        Image.asset('assets/images/grease.png',width: 100,height: 100,),
                        SizedBox(height: 40,),
                        Image.asset('assets/images/emergency.jpg',width: 100,height: 100,),
                        SizedBox(height: 20,),
                      ],
                    ),
                  ),
                  Expanded(
                  child:Directionality(
                        textDirection: TextDirection.rtl,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: 40,),
                            Text('نصائح للوقاية من فيروس كورونا ',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35,color: Colors.teal[300],fontFamily: 'Tajawal'),),
                            SizedBox(height: 36,),
                            advicestext(text:'اغسل يديك جيدا وكثيرا بالماء والصابون ، أو دلكهما بالكحول ، هكذا تقتل الفيروسات التي قد نكون عالقة علي يديك .  ',),
                            SizedBox(height: 20,),
                            advicestext(text:'حاول ألا تلمس عينيك ولا أنفك ولا فمك. فالأيدي تلمس العديد من الأسطح ويمكن أن تعلُق بها الفيروسات. ومن هنا يمكن أن يخترق الفيروس جسمك.',),
                            SizedBox(height: 20,),
                            advicestext(text:'عندما تعطس أو تسعل، استخدم منديلا ورقيا، وإذا لم يكن معك منديل فاستخدم مرفقك في كتم العطس أو السعال.  ',),
                            SizedBox(height: 20,),
                            advicestext(text:'تخلص على الفور من المناديل المستخدَمة. وذلك لمنع وصول الرذاذ الذي يحتوي على الفيروس من الوصول للآخرين وإصابتهم بالعدوى.',),
                            SizedBox(height: 20,),
                            advicestext(text:'لهذا السبب نفسه، يُنصَح الناس بالحفاظ على مسافة مترين على الأقل فيما بينهم. ',),
                            SizedBox(height:20),
                            advicestext(text:'إذا ظهرت عليك أعراض نزلة البرد أو الأنفلونزا استعمل الكمامة لتفادي إصابة الآخرين بالعدوى.',),
                            SizedBox(height:30),
                            advicestext(text:'تجنب ملامسة الحيوانات الضالة أو المريضة أو الميتة.',),
                            SizedBox(height:30),
                            advicestext(text:'ابق في المنزل قدر استطاعتك ولا تخرج إلا للضرورة.',),
                            SizedBox(height:30),
                            advicestext(text:'تنظيف وتطهير الأسطح بشكل متكرر يوميا، وسيلة مهمة في الحد من انتشار العدوى.',),
                            SizedBox(height:30),
                            advicestext(text:' غسل الفواكه والخضروات الطازجة بالماء البارد، فهو قد يزيل من 90 إلى 99٪ مما هو موجود عليها".',),
                            SizedBox(height:20),
                            advicestext(text:' تجنب تناول لحوم غير مطهية جيدا، أو ألبان لم يتم غليها، أو أجبان مصنعة من ألبان لم يتم غليها كالجبن القريش من الباعة الجائلين.',),
                            SizedBox(height:20),
                            advicestext(text:'عند ظهور أعراض فيروس "كورونا" أو الشك في ظهورها، الاتصال على الخط الساخن للوزارة 105 أو التوجه لأقرب مستشفى حميات. ',)
                          ],
                        ),
                      ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
