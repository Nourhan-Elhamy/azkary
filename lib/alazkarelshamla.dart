import 'package:azkar/firstpage.dart';
import 'package:azkar/secondpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jhijri/_src/_jHijri.dart';


class alazkarelshamla extends StatefulWidget {


  @override
  State<alazkarelshamla> createState() => _alazkarelshamlaState();
}

class _alazkarelshamlaState extends State<alazkarelshamla> {
  Map elazkar={
    "أَسْـتَغْفِرُ الله\n\n أَسْـتَغْفِرُ الله\n\n أَسْـتَغْفِرُ الله":1,
    "اللّهُـمَّ أَنْـتَ السَّلامُ\n\nوَمِـنْكَ السَّلام\n\nتَبارَكْتَ يا ذا الجَـلالِ وَالإِكْـرام.  ":2,
    "لا إلهَ إلاّ اللّهُ وحدَهُ لا شريكَ لهُ، لهُ المُـلْكُ ولهُ الحَمْد، وهوَ على كلّ شَيءٍ قَدير،\n\nاللّهُـمَّ لا مانِعَ لِما أَعْطَـيْت، \n\nوَلا مُعْطِـيَ لِما مَنَـعْت،\n\nوَلا يَنْفَـعُ ذا الجَـدِّ مِنْـكَ الجَـد.":3,
    "سُـبْحانَ اللهِ،\n\nوالحَمْـدُ لله\n\n، واللهُ أكْـبَر.":3,
    ",لا إلهَ إلاّ اللّهُ وَحْـدَهُ لا شريكَ لهُ\n\n، لهُ الملكُ ولهُ الحَمْد\n\nوهُوَ على كُلّ شَيءٍ قَـدير. ":4
  };
  int zekr=1;
  int count=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffEFEFEF),
      appBar: AppBar(
        leading:
        BackButton(color: Colors.white,)
       ,
        title:Text( "الاذكار الشاملة",
        style: TextStyle(color: Colors.white),),backgroundColor: Colors.blue,
        centerTitle: true,
      )
        ,body: Column(
      children: [
        Expanded(
          child: Row(
            children: [
              Expanded(child: Text("${DateTime.now().year}-${DateTime.now().month}-${DateTime.now().day}"
              ,style: TextStyle(fontSize: 20),textAlign: TextAlign.center,)),
              Expanded(child: Text("${JHijri.now().dayName}",style: TextStyle(fontSize: 20),textAlign: TextAlign.center,)),
              Expanded(child: Text("${JHijri(fDate: DateTime.now()).year}-${JHijri(fDate: DateTime.now()).month}-${JHijri(fDate: DateTime.now()).day}"
              ,style: TextStyle(fontSize: 20),textAlign: TextAlign.center,))
            ],
          ),
        ),
        Expanded(
          flex: 6,
          child: Container(
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 1.2,color: Colors.black)
            ),
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Text("$zekr/${elazkar.length}",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 22),),
                      ),
                       Expanded(
                         child: InkWell(
                           onTap: (){
                             if(elazkar.values.elementAt(zekr-1)>count){
                               count++;
                               setState(() {

                               });
                             }
                           },
                           child: Stack(
                             alignment: Alignment.center,
                             children: [
                               Container(
                                  width: 100,
                                  height: 100,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 7,
                                    color: Colors.blue,
                                    backgroundColor: Colors.grey,
                                    value: count/elazkar.values.elementAt(zekr-1),
                                  ),
                                ),
                               Text("$count",textAlign: TextAlign.center,
                                 style: TextStyle(fontSize: 22),)
                             ],

                           ),
                         ),
                       ),

                    ],
                    
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: InkWell(
                    onTap: () {
                      if (elazkar.values.elementAt(zekr - 1) > count) {
                        count++;
                      }
                      setState(() {});
                    },
                    child: Text(
                      "${elazkar.keys.elementAt(zekr - 1)}",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: FloatingActionButton(
                          heroTag: "share",
                          backgroundColor: Colors.blue,
                          child: Icon(Icons.share),
                          shape: CircleBorder(
                              side: BorderSide.none
                          ),
                          onPressed: () {},
                        ),
                      ),
                      Expanded(
                          child: FloatingActionButton(
                            heroTag: "settings",
                            backgroundColor: Colors.blue,
                            child: Icon(Icons.play_circle_fill_outlined),
                            shape: CircleBorder(
                                side: BorderSide.none
                            ),
                            onPressed: () {},
                          )),
                      Expanded(
                          child: FloatingActionButton(
                            heroTag: "back",
                            backgroundColor: Colors.blue,
                            child: Icon(Icons.arrow_back_ios_new),
                            shape: CircleBorder(
                                side: BorderSide.none
                            ),
                            onPressed: () {
                              setState(() {
                                if (zekr > 1) {
                                  zekr--;
                                  count = 0;
                                }
                              });
                            },
                          )),
                      Expanded(
                          child: FloatingActionButton(
                            heroTag: "forward",
                            backgroundColor: Colors.blue,
                            child: Icon(Icons.arrow_forward_ios),
                            shape: CircleBorder(
                                side: BorderSide.none
                            ),
                            onPressed: () {
                              setState(() {
                                if (zekr < elazkar.length) {
                                  zekr++;
                                  count = 0;
                                }
                              });
                            },
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    )
    );
  }
}
