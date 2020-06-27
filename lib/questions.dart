import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:salamtk/welcome.dart';
class Criterias extends StatefulWidget {
  CriteriaState createState() => new CriteriaState();
}

class NewItem {
  bool isExpanded;
  final String header;
  final Widget body;
  final Icon iconpic;
  NewItem(this.isExpanded, this.header, this.body, this.iconpic);
}

double discretevalue = 2.0;
double hospitaldiscretevalue = 25.0;

class CriteriaState extends State<Criterias> {
  List<NewItem> items = <NewItem>[
    NewItem(
        false,
        'ما هو فيروس كورونا؟',
        Padding(
            padding:  EdgeInsets.all(20.0),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child:  Column(
                  children: <Widget>[
                    ordinarytext(text:'فيروسات كورونا هي سلالة واسعة من الفيروسات التي قد تسبب المرض للحيوان والإنسان. ومن المعروف أن عدداً من فيروسات كورونا تسبب لدى البشر أمراض تنفسية تتراوح حدتها من نزلات البرد الشائعة إلى الأمراض الأشد وخامة مثل متلازمة الشرق الأوسط التنفسية (ميرس) والمتلازمة التنفسية الحادة الوخيمة (سارس). ويسبب فيروس كورونا المُكتشف مؤخراً مرض كوفيد-19.')
                    //put the children here
                  ]),
            )
        ),Icon(Icons.info)),
        NewItem(
        false,
        'ما هو مرض كوفيد-19؟',
         Padding(
            padding:  EdgeInsets.all(20.0),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child:  Column(
                  children: <Widget>[
                    ordinarytext(text:'مرض كوفيد-19 هو مرض معد يسببه آخر فيروس تم اكتشافه من سلالة فيروسات كورونا. ولم يكن هناك أي علم بوجود هذا الفيروس الجديد ومرضه قبل بدء تفشيه في مدينة ووهان الصينية في كانون الأول/ ديسمبر 2019. وقد تحوّل كوفيد-19 الآن إلى جائحة تؤثر على العديد من بلدان العالم.')
                    //put the children here
                  ]),
            )
        ),Icon(Icons.info)),
    NewItem(
        false,
        'ما هي أعراض مرض كوفيد-19؟',
        Padding(
            padding:  EdgeInsets.all(20.0),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child:  Column(
                  children: <Widget>[
                    ordinarytext(text:'تتمثل الأعراض الأكثر شيوعاً لمرض كوفيد-19 في ‏الحمى والإرهاق والسعال الجاف. وتشمل الأعراض ‏الأخرى الأقل شيوعاً ولكن قد يُصاب بها بعض ‏المرضى: الآلام والأوجاع، واحتقان الأنف، ‏والصداع، والتهاب الملتحمة، وألم الحلق، والإسهال، ‏وفقدان حاسة الذوق أو الشم، وظهور طفح جلدي ‏أو تغير لون أصابع اليدين أو القدمين. وعادة ما ‏تكون هذه الأعراض خفيفة وتبدأ بشكل تدريجي. ‏ويصاب بعض الناس بالعدوى دون أن يشعروا إلا ‏بأعراض خفيفة جداً. '
                        'ويتعافى معظم الناس (نحو 80%) من المرض دون ‏الحاجة إلى علاج خاص. ولكن الأعراض تشتد ‏لدى شخص واحد تقريباً من بين كل 5 أشخاص ‏مصابين بمرض كوفيد-19 فيعاني من صعوبة في ‏التنفس. وتزداد مخاطر الإصابة بمضاعفات وخيمة ‏بين المسنين والأشخاص المصابين بمشاكل صحية ‏أخرى مثل ارتفاع ضغط الدم أو أمراض القلب والرئة ‏أو السكري أو السرطان. وينبغي لجميع الأشخاص، ‏أيا كانت أعمارهم، التماس العناية الطبية فوراً إذا ‏أصيبوا بالحمى و/أو السعال المصحوبين بصعوبة في ‏التنفس/ضيق النفس وألم أو ضغط في الصدر أو ‏فقدان القدرة على النطق أو الحركة. ويوصى، قدر ‏الإمكان، بالاتصال بالطبيب أو بمرفق الرعاية ‏الصحية مسبقاً، ليتسنى توجيه المريض إلى العيادة ‏المناسبة.  ‏')
                    //put the children here
                  ]),
            )
        ),Icon(Icons.info)),
    NewItem(
        false,
        'ما هو مرض كوفيد-19؟كم تستغرق فترة حضانة مرض كوفيد-19؟',
        Padding(
            padding:  EdgeInsets.all(20.0),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child:  Column(
                  children: <Widget>[
                    ordinarytext(text:'مصطلح "فترة الحضانة" يشير إلى المدة من الإصابة بالفيروس إلى بدء ظهور أعراض المرض. وتتراوح معظم تقديرات فترة حضانة مرض كوفيد-19 ما بين يوم واحد و14 يوماً، وعادة ما تستمر خمسة أيام.')
                    //put the children here
                  ]),
            )
        ),Icon(Icons.info)),
    NewItem(
        false,
        'ماذا أفعل إذا كنت مصاباً بأعراض كوفيد-19 ومتى ينبغي أن التمس الرعاية الطبية؟',
        Padding(
            padding:  EdgeInsets.all(20.0),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child:  Column(
                  children: <Widget>[
                    ordinarytext(text:'إذا كانت أعراضك خفيفة، من قبيل الكحة البسيطة أو الحمى الطفيفة، فلا حاجة عموماً إلى طلب الرعاية الطبية. الزم المنزل واعزل نفسك وراقب أعراضك. واتبع الإرشادات الوطنية عن العزل الذاتي. ولكن إذا كنت تعيش في منطقة تنتشر فيها الملاريا أو حمى الضنك، فمن الضروري ألا تتجاهل أعراض الحمى. اطلب المساعدة الطبية. وعندما تتوجه إلى مرفق الرعاية الصحية ضع كمامة إن أمكن، وحافظ على مسافة متر واحد على الأقل بينك وبين الآخرين وتجنب لمس الأسطح المحيطة بيديك. وإذا كان المريض طفلاً، فساعده على الالتزام بهذه النصائح.'
                    'التمس الرعاية الطبية على الفور إذا كنت تشعر بصعوبة في التنفس أو بألم/ضغط في الصدر. اتصل بالطبيب مسبقاً، إن أمكن، ليتسنى له إرشادك إلى المرفق الصحي المناسب.')
                    //put the children here
                  ]),
            )
        ),Icon(Icons.info)),
    NewItem(
        false,
        'كيف ينتشر مرض كوفيد-19؟',
        Padding(
            padding:  EdgeInsets.all(20.0),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child:  Column(
                  children: <Widget>[
                    ordinarytext(text:'يمكن أن يلقط الأشخاص عدوى كوفيد-19 من أشخاص آخرين مصابين بالفيروس. وينتشر المرض بشكل أساسي من شخص إلى شخص عن طريق القُطيرات الصغيرة التي يفرزها الشخص المصاب بكوفيد-19 من أنفه أو فمه عندما يسعل أو يعطس أو يتكلم. وهذه القطيرات وزنها ثقيل نسبياً، فهي لا تنتقل إلى مكان بعيد وإنما تسقط سريعاً على الأرض. ويمكن أن يلقط الأشخاص مرض كوفيد-19 إذا تنفسوا هذه القُطيرات من شخص مصاب بعدوى الفيروس'
                        ' لذلك من المهم الحفاظ على مسافة متر واحد على الأقل (3 أقدام) من الآخرين. وقد تحط هذه القطيرات على الأشياء والأسطح المحيطة بالشخص، مثل الطاولات ومقابض الأبواب ودرابزين السلالم. ويمكن حينها أن يصاب الناس بالعدوى  عند ملامستهم هذه الأشياء أو الأسطح ثم لمس أعينهم أو أنفهم أو فمهم. لذلك من المهم غسل المواظبة على غسل اليدين بالماء والصابون أو تنظيفهما بمطهر كحولي لفرك اليدين.')
                    //put the children here
                  ]),
            )
        ),Icon(Icons.info)),
    NewItem(
        false,
        'هل يمكن للفيروس المسبب لمرض كوفيد-19 أن ينتقل عبر الهواء؟',
        Padding(
            padding:  EdgeInsets.all(20.0),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child:  Column(
                  children: <Widget>[
                    ordinarytext(text:'تشير الدراسات التي أُجريت حتى يومنا هذا إلى أن الفيروس الذي يسبب مرض كوفيد-19 ينتقل في المقام الأول عن طريق ملامسة القُطيرات التنفسية لا عن طريق الهواء. انظر الإجابة عن السؤال السابق: "كيف ينتشر مرض كوفيد-19؟"')
                    //put the children here
                  ]),
            )
        ),Icon(Icons.info)),
    NewItem(
        false,
         'هل يمكن التقاط عدوى كوفيد-19 من شخص لا تظهر عليه أعراض المرض؟',
        Padding(
            padding:  EdgeInsets.all(20.0),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child:  Column(
                  children: <Widget>[
                    ordinarytext(text:'تنتشر عدوى كوفيد-19 أساساً عن طريق القطيرات التنفسية التي يفرزها شخص يسعل أو لديه أعراض أخرى مثل الحمى أو التعب. ولكن العديد من الأشخاص المصابين بعدوى كوفيد-19 لا تظهر عليهم سوى أعراض خفيفة جداً. وينطبق ذلك بشكل خاص في المراحل الأولى من المرض. ويمكن بالفعل التقاط العدوى من شخص يعاني من سعال خفيف ولا يشعر بالمرض.'
                        'وتشير بعض التقارير إلى أن الفيروس يمكن أن ينتقل حتى من الأشخاص الذين لا تظهر عليهم أي أعراض. وليس معروفاً حتى الآن مدى انتقال العدوى بهذه الطريقة. وتواصل المنظمة تقييم البحوث الجارية في هذا الصدد وستواصل نشر أي نتائج محدّثة بهذا الشأن.')
                    //put the children here
                  ]),
            )
        ),Icon(Icons.info)),
    NewItem(
        false,
        'كيف يمكن لنا حماية الآخرين وحماية أنفسنا من العدوى إذا لم نكن نعلم من مصاب بها؟',
        Padding(
            padding:  EdgeInsets.all(20.0),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child:  Column(
                  children: <Widget>[
                    ordinarytext(text:'إن الحرص على ممارسة نظافة اليدين والجهاز التنفسي مهمة في جميع الأوقات وهي أفضل طريقة لحماية نفسك والآخرين.'
                        'حافظ على مسافة متر واحد على الأقل (3 أقدام) بينك وبين الآخرين عند الإمكان. وهي مسألة مهمة بشكل خاص إذا كنت تقف قرب شخص يسعل أو يعطس. وبما أن بعض الأشخاص المصابين بالعدوى قد لا تظهر عليهم الأعراض بعد أو لديهم أعراض خفيفة فقط، فإن الحفاظ على مسافة متباعدة عن الجميع هو فكرة جيدة إذا كنت في منطقة يسري فيها مرض كوفيد-19.')
                    //put the children here
                  ]),
            )
        ),Icon(Icons.info)),
    NewItem(
        false,
        'ما البدائل المتوفرة لدي في حالة عدم توفر معقمات لليدين؟ هل يمكنني استخدام كحوليات أخرى مثل الإيثيل أو الخمور؟',
        Padding(
            padding:  EdgeInsets.all(20.0),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child:  Column(
                  children: <Widget>[
                    ordinarytext(text:'في حالة عدم توفر معقم اليدين، فإن غسل اليدين بالماء والصابون هو البديل الموصى به، بل والأفضل من ذلك. بالنسبة للخمور فانها ليست فعالة ضد فيروس كورونا. لكي يكون فرك اليد القائم على الكحول فعالاً، يجب أن يحتوي على محتوى كحولي من 60٪ إلى 95٪.')
                    //put the children here
                  ]),
            )
        ),Icon(Icons.info)),
    NewItem(
        false,
        'أنا بخير وبدون أعراض. هل يجب علي استخدام قناع؟',
        Padding(
            padding:  EdgeInsets.all(20.0),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child:  Column(
                  children: <Widget>[
                    ordinarytext(text:'وفقًا لمنظمة الصحة العالمية، بالنسبة للأفراد الذين ليس لديهم أعراض تنفسية، لا يلزم وجود قناع طبي، حيث لا يوجد دليل على فائدته في حماية الأشخاص غير المرضى.'
                        'ومع ذلك، قد يتم ارتداء الأقنعة في بعض البلدان وفقًا للعادات الثقافية المحلية. إذا تم استخدام الأقنعة ، فيجب اتباع أفضل الممارسات حول كيفية ارتدائها وإزالتها والتخلص منها وعلى إجراءات نظافة اليدين بعد الإزالة. ولمزيد من المعلومات ، قم بزيارة دليل منظمة الصحة العالمية حول استخدام الأقنعة في المجتمع.')
                    //put the children here
                  ]),
            )
        ),Icon(Icons.info)),
    NewItem(
        false,
        'ماذا أفعل إذا كنت قد خالطت عن قربٍ شخصاً مصاباً بكوفيد-19؟',
        Padding(
            padding:  EdgeInsets.all(20.0),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child:  Column(
                  children: <Widget>[
                    ordinarytext(text:'إذا كنت قد خالطت عن قربٍ شخصاً مصاباً بكوفيد-19 فقد تكون العدوى قد انتقلت إليك أيضاً.'
                        'والمخالطة القريبة تعني أنك تعيش مع شخص مصاب بالمرض أو كنت معه في نفس المكان على مسافة تقل عن متر واحد (3 أقدام).'
                        'إذا تأكدت (بالفحص المختبري) إصابتك بعدوى كوفيد-19، فعليك أن تعزل نفسك لمدة 14 يوماً حتى بعد تلاشي الأعراض، كإجراء احتياطي. فليس معروفاً على وجه الدقة حتى الآن المدة التي يظل فيها الشخص معدياً بعد تعافيه من المرض. اتبع الإرشادات الوطنية بشأن العزل الذاتي.'
                        '-  إذا كان شخص ما في العزل الذاتي، فالسبب هو أنه يشعر بالتوعك دون أن يكون مرضه شديداً (أي لا يستدعي العناية الطبية)'
                        ' *اختر للعزل غرفة منفصلة واسعة وجيدة التهوية مزودة بمرحاض ولوازم تنظيف اليدين.'
                        ' *إذا لم تتوفر غرفة منفصلة فباعد بين أسرّة النوم مسافة متر واحد على الأقل.'
                        ' *حافظ على مسافة متر واحد على الأقل من الآخرين، بمن في ذلك أفراد أسرتك.'
                        ' *راقب أعراضك بشكل يومي.'
                        ' *اعزل نفسك 14 يوماً حتى لو شعرت أنك بصحة جيدة.'
                        ' *إذا ظهرت لديك أعراض الصعوبة في التنفس فاستشر طبيبك على الفور، واتصل هاتفياً أولاً إن أمكن.'
                        ' *حافظ على إيجابيتك وحيويتك بالبقاء على اتصال مع أحبتك بالهاتف أو عبر الإنترنت، أو بممارسة بعض التمارين الرياضية في المنزل.')
                    //put the children here
                  ]),
            )
        ),Icon(Icons.info)),
    NewItem(
        false,
        'ما الذي يعنيه العزل الذاتي؟',
        Padding(
            padding:  EdgeInsets.all(20.0),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child:  Column(
                  children: <Widget>[
                    ordinarytext(text:'العزل الذاتي إجراء مهم يطبقه الأشخاص الذين تظهر عليهم أعراض كوفيد-19 لتجنب نقل العدوى للآخرين في المجتمع، بمن في ذلك أفراد عائلتهم.'
                        'والمقصود بالعزل الذاتي هو عندما يلزم الشخص المصاب بالحمى أو السعال أو غير ذلك من أعراض مرض كوفيد-19، بيته ويمتنع عن الذهاب إلى العمل أو المدرسة أو الأماكن العامة. وهذا العزل يمكن أن يحدث بشكل طوعي أو يستند إلى توصية من مقدم الرعاية الصحية. ولكن إذا كنت تعيش في منطقة تنتشر فيها الملاريا أو حمى الضنك، فمن الضروري ألا تتجاهل أعراض الحمى. اطلب المساعدة الطبية. وعندما تتوجه إلى مرفق الرعاية الصحية ضع كمامة إن أمكن، وحافظ على مسافة متر واحد على الأقل بينك وبين الآخرين وتجنب لمس الأسطح المحيطة بيديك. وإذا كان المريض طفلاً، فساعده على الالتزام بهذه النصائح.')
                    //put the children here
                  ]),
            )
        ),Icon(Icons.info)),
    NewItem(
        false,
        'ما هو الفرق بين العزل الذاتي والحجر الصحي الذاتي والتباعد الجسدي؟',
        Padding(
            padding:  EdgeInsets.all(20.0),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child:  Column(
                  children: <Widget>[
                    ordinarytext(text:'الحجر الصحي يعني تقييد الأنشطة وعزل الأشخاص غير المرضى هم أنفسهم ولكنهم ربما تعرّضوا للإصابة بعدوى كوفيد-19. والهدف هو منع انتشار المرض في الوقت الذي لا تكاد تظهر أي أعراض على الشخص.'
                        'أما العزل فيعني عزل الأشخاص المرضى الذين تظهر عليهم أعراض كوفيد-19 ويمكنهم نقل عدواه، لمنع انتشار المرض.'
                        'ويعني التباعد الجسدي الابتعاد عن الآخرين جسدياً. وتوصي المنظمة بالابتعاد عن الآخرين مسافة متر واحد (3 أقدام) على الأقل. وهي توصية عامة يتعين على الجميع تطبيقها حتى لو كانوا بصحة جيدة ولم يتعرضوا لعدوى كوفيد-19.')
                    //put the children here
                  ]),
            )
        ),Icon(Icons.info)),
    NewItem(
        false,
        'هل يمكن أن يُصاب الأطفال والمراهقون بمرض كوفيد-19؟',
        Padding(
            padding:  EdgeInsets.all(20.0),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child:  Column(
                  children: <Widget>[
                    ordinarytext(text:'تشير البحوث إلى أن احتمالات إصابة الأطفال والمراهقين بعدوى كوفيد-19 وإمكانية نشرهم للعدوى لا تختلف عن الفئات العمرية الأخرى.'
                        'وتشير الأدلة المتاحة حتى اليوم إلى أن الأطفال واليافعين أقل عرضة للإصابة بمضاعفات المرض الوخيمة، ولكن لا يزال حدوث ذلك ممكناً وسط هذه الفئة العمرية.'
                        'وينبغي أن يتبع الأطفال والمراهقون نفس الإرشادات عن الحجر الصحي الذاتي والعزل الذاتي إذا تعرضوا لخطر الإصابة بالعدوى أو إذا ظهرت عليهم أعراضها. ومن المهم بشكل خاص أن يتجنب الأطفال مخالطة كبار السن والآخرين الأكثر عرضة للإصابة بمضاعفات المرض الوخيمة.')
                    //put the children here
                  ]),
            )
        ),Icon(Icons.info)),
    NewItem(
        false,
        'هل النساء الحوامل أكثر عرضة لفيروس كورونا وهل سيؤذي الجنين؟',
        Padding(
            padding:  EdgeInsets.all(20.0),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child:  Column(
                  children: <Widget>[
                    ordinarytext(text:'ليس لدينا معلومات من التقارير العلمية المنشورة حول قابلية النساء الحوامل للإصابة بفيروس كورونا، وتعاني النساء الحوامل من تغيرات مناعية وفسيولوجية، مما قد يجعلهن أكثر عرضة للإصابة بالالتهابات التنفسية الفيروسية، بما في ذلك فيروس كورونا.'
                        'يعتقد أن الفيروس الذي يسبب فيروس كورونا ينتشر بشكل رئيسي عن طريق الاتصال الوثيق مع شخص مصاب من خلال قطرات الجهاز التنفسي، ما إذا كانت المرأة الحامل المصابة بالفيروس يمكنها نقل الفيروس الذي يسبب فيروس كورونا إلى جنينها أو حديثي الولادة بطرق أخرى للانتقال الرأسي (قبل أو أثناء أو بعد الولادة) لا يزال غير معروف.')
                    //put the children here
                  ]),
            )
        ),Icon(Icons.info)),
    NewItem(
        false,
        'كيف أتجنب الإصابة بعدوى فيروس كورونا (كوفيد-‏‏19) عندما أحيي الآخرين؟ ‏',
        Padding(
            padding:  EdgeInsets.all(20.0),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child:  Column(
                  children: <Widget>[
                    ordinarytext(text:'للوقاية من كوفيد-19، تفادى أي ملامسة جسدية عندما ‏تحيي الآخرين. وتشمل التحيات المأمونة التلويح والإيماء ‏والانحناء. ')
                    //put the children here
                  ]),
            )
        ),Icon(Icons.info)),
    NewItem(
        false,
        'هل هناك لقاح أو دواء أو علاج لمرض كوفيد-2019؟',
        Padding(
            padding:  EdgeInsets.all(20.0),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child:  Column(
                  children: <Widget>[
                    ordinarytext(text:'في حين قد تريح بعض العلاجات الغربية أو ‏التقليدية أو المنزلية من بعض أعراض كوفيد-19 أو ‏تخففها، فلا توجد حالياً أدوية ثبت أن من شأنها ‏الوقاية من هذا المرض أو علاجه. ولا توصي منظمة الصحة العالمية ‏بالتطبيب الذاتي بأي أدوية، بما في ذلك المضادات ‏الحيوية، سواء على سبيل الوقاية من مرض كوفيد-‏‏19 أو معالجته. غير أن هناك عدة تجارب سريرية ‏جارية تتضمن أدوية غربية وتقليدية معاً. وتتولى ‏المنظمة تنسيق الجهود الرامية إلى تطوير لقاحات ‏وأدوية للوقاية من مرض كوفيد-19 وعلاجه، ‏وستواصل إتاحة معلومات محدّثة بهذا الشأن حالما ‏تتوفر نتائج هذه الأبحاث‎.‎')
                    //put the children here
                  ]),
            )
        ),Icon(Icons.info)),
    NewItem(
        false,
        'هل يمكن للأشخاص الذين يتعافون فيروس كورونا أن يصابوا به مرة أخرى؟',
        Padding(
            padding:  EdgeInsets.all(20.0),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child:  Column(
                  children: <Widget>[
                    ordinarytext(text:'نحن نعلم أنه بالنسبة للفيروسات المماثلة لفيروس كورونا، من غير المرجح أن تتم إعادة إصابة الأشخاص المصابين بعد فترة قصيرة من شفائهم. ومع ذلك ، نظرًا لأن الاستجابة المناعية لفيروس كورونا  لم تُفهم بعد، فمن غير المعروف حتى الآن ما إذا كان سيتم ملاحظة حماية مناعية مماثلة للمرضى الذين تعافوا منه.')
                    //put the children here
                  ]),
            )
        ),Icon(Icons.info)),
    NewItem(
        false,
        ' زميلي مريض لكنه يصر على أنه نزلة برد فقط وهو متردد في العمل من المنزل. ما هي الخطوات التي يمكننا اتخاذها لفرض "البقاء في المنزل عندما لا تكون جيدًا" بين الموظفين؟',
        Padding(
            padding:  EdgeInsets.all(20.0),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child:  Column(
                  children: <Widget>[
                    ordinarytext(text:'في حين أنه من المحتمل جدًا أن يكون زميلك يعاني فقط من نزلات البرد أو الأنفلونزا، إلا أنه يجب اتخاذ جميع الاحتياطات، ويجب على المديرين تشجيع الموظفين الذين يعانون من أعراض الأنفلونزا على العمل عن بعد لبعض الوقت حتى تختفي الأعراض. وبدلاً من ذلك ، إذا كان الموظف يشعر بعدم اللياقة، فيجب عليه أخذ إجازة مرضية. ان هذا نهج منطقي في أي وقت لمنع انتشار الإنفلونزا أو الفيروسات الموسمية الأخرى. كما يتم تشجيع المشرفين على ممارسة المرونة في العمل فيما يتعلق باستخدام ترتيبات العمل عن بعد إذا كان الموظف يرغب في الحد من اتصاله بالآخرين والعمل من المنزل.')
                    //put the children here
                  ]),
            )
        ),Icon(Icons.info)),
    NewItem(
        false,
        'ما هو الرابط بين مرض كوفيد-19 والحيوانات؟',
        Padding(
            padding:  EdgeInsets.all(20.0),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child:  Column(
                  children: <Widget>[
                    ordinarytext(text:'ينتشر مرض كوفيد-19 عن طريق الانتقال بين البشر.'
                        'ونعرف الكثير بالفعل عن فيروسات أخرى من فصيلة فيروسات كورونا، ونعلم أن معظم هذه الأنواع من الفيروسات حيوانية المصدر. والفيروس المسبب لمرض كوفيد-19 (يُسمى أيضا فيروس كورونا-سارس-2) هو فيروس جديد في البشر. ولم يؤكد بعد المصدر الحيواني المحتمل لكوفيد-19 ولا يزال البحث مستمراً.')
                    //put the children here
                  ]),
            )
        ),Icon(Icons.info)),
    NewItem(
        false,
        'ما هي مدة بقاء الفيروس على الأسطح المختلفة؟',
        Padding(
            padding:  EdgeInsets.all(20.0),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child:  Column(
                  children: <Widget>[
                    ordinarytext(text:'أهم ما ينبغي معرفته عن بقاء فيروس كورونا على الأسطح هو أن بالإمكان تطهيرها منه بسهولة بواسطة محاليل التعقيم المنزلية العادية التي تقتل الفيروس. وقد أظهرت الدراسات أن بمقدور الفيروس المسبب لكوفيد-19 أن يبقى على البلاستيك والفولاذ المقاوم للصدأ لمدة 72 ساعة وعلى النحاس أقل من 4 ساعات وعلى الورق المقوّى (الكرتون) أقل من 24 ساعة.')
                    //put the children here
                  ]),
            )
        ),Icon(Icons.info)),
    NewItem(
        false,
        'كيف تتسوق بصورة آمنة؟',
        Padding(
            padding:  EdgeInsets.all(20.0),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child:  Column(
                  children: <Widget>[
                    ordinarytext(text:'عندما تذهب للتسوق، حافظ على مسافة متر واحد على الأقل بينك وبين الآخرين، وتجنب لمس عينيك وفمك وأنفك. قبل أن تبدأ بالتسوق، قم بتعقيم مسكة  عربة أو سلة التسوق، إن أمكن. وفور عودتك إلى المنزل، اغسل يديك جيداً وكذلك بعد مناولة مشترياتك وتخزينها. ولم تُسجل حالياً أي حالات إصابة مؤكدة بكوفيد-19 انتقلت عن طريق الأطعمة أو معلباتها.')
                  //put the children here
                  ]),
            )
        ),Icon(Icons.info)),
    NewItem(
        false,
        'كيف تغسل الفواكه والخضروات؟',
        Padding(
            padding:  EdgeInsets.all(20.0),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child:  Column(
                  children: <Widget>[
                    ordinarytext(text:'تشكّل الفواكه والخضروات مكوّناً هاماً في أي نظام غذائي صحي. وينبغي غسلها كما تفعل في الظروف العادية: قبل لمس الخضار والفواكه، اغسل يديك جيداً بالماء والصابون. ثم اغسلها جيداً بمياه نظيفة جارية، خصوصاً إذا كنت تأكلها نيئة.')
                    //put the children here
                  ]),
            )
        ),Icon(Icons.info)),
    NewItem(
        false,
        'هل المضادات الحيوية فعالة في الوقاية من مرض كوفيد-19 أو علاجه؟',
        Padding(
            padding:  EdgeInsets.all(20.0),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child:  Column(
                  children: <Widget>[
                    ordinarytext(text:'كلا. لا تقضي المضادات الحيوية على الفيروسات، وإنما تكافح العدوى البكتيرية فقط. وبما أن مرض كوفيد-19 منشؤه فيروس، فإن المضادات الحيوية لا تنفع في مكافحته. ولا ينبغي استعمال المضادات الحيوية كوسيلة للوقاية من مرض كوفيد-19 أو علاجه. ولكن قد يصف الأطباء في المستشفى المضادات الحيوية للمرضى المصابين بمضاعفات كوفيد-19 الوخيمة لمعالجة عدوى بكتيرية ثانوية أو الوقاية منها. وينبغي التقيد بصرامة بتعليمات الطبيب لدى استعمال المضادات الحيوية لعلاج حالات العدوى البكتيرية.')
                    //put the children here
                  ]),
            )
        ),Icon(Icons.info)),
    NewItem(
        false,
        'هل يمكن أن أصاب بعدوى كوفيد-19 عن طريق براز شخص مصاب بالمرض؟',
        Padding(
            padding:  EdgeInsets.all(20.0),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child:  Column(
                  children: <Widget>[
                    ordinarytext(text:'في حين تشير الاستقصاءات الأولية إلى احتمال وجود أثر للفيروس في البراز في بعض الحالات، فلم ترد أي تقارير عن حدوث انتقال لعدوى كوفيد-19 من البراز إلى الفم. بالإضافة إلى ذلك، لا توجد حتى الآن بيّنات على قدرة الفيروس على البقاء في الماء أو مياه الصرف الصحي.')
                    //put the children here
                  ]),
            )
        ),Icon(Icons.info)),

    //give all your items here
  ];

  ListView listcriteria;
  Widget build(BuildContext context) {
    listcriteria =  ListView(
      children: [
         Padding(
          padding:  EdgeInsets.all(10.0),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child:  ExpansionPanelList(
              expansionCallback: (int index, bool isExpanded) {
                setState(() {
                  items[index].isExpanded = !items[index].isExpanded;
                });
              },
              children: items.map((NewItem item) {
                return  ExpansionPanel(
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return ListTile(
                          title:  Text(
                            item.header,
                            textAlign: TextAlign.right,
                            style: new TextStyle(
                              fontSize: 26.0,
                              fontWeight: FontWeight.w400,
                                fontFamily: 'Abdo Free',
                                letterSpacing: 1.0,
                                color: Colors.teal[600]
                            ),
                          ),
                    );
                  },
                  isExpanded: item.isExpanded,
                  body: item.body,
                );
              }).toList(),
            ),
          ),
        )
      ],
    );

    Directionality scaffold = new Directionality(
      textDirection: TextDirection.rtl,
        child: new Scaffold(
         appBar: AppBar(
           backgroundColor: Colors.teal[300],
          title: Directionality(
            textDirection: TextDirection.rtl,
            child: Text('اسأل سلامتك',
              style: TextStyle(fontWeight:FontWeight.w500,fontSize: 40,fontFamily: 'Abdo Free',),
          )
        ),
      ),
         body: listcriteria,
      persistentFooterButtons: <Widget>[
      ],
        )
    );
    return scaffold;
  }
}