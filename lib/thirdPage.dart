import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jhijri/_src/_jHijri.dart';

class thirdScrean extends StatefulWidget {
  @override
  State<thirdScrean> createState() => _thirdpageState();
}

class _thirdpageState extends State<thirdScrean> {
  Map azkarelsabah = {
    " أَعُوذُ بِاللهِ مِنْ الشَّيْطَانِ الرَّجِيم \n\nاللّهُ لاَ إِلَـهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاء وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ.ِ":
        1,
    " بِسْمِ اللهِ الرَّحْمنِ الرَّحِيم \n\nقُلْ هُوَ ٱللَّهُ أَحَدٌ، ٱللَّهُ ٱلصَّمَدُ، لَمْ يَلِدْ وَلَمْ يُولَدْ، وَلَمْ يَكُن لَّهُۥ كُفُوًا أَحَدٌۢ.":
        2,
    "بِسْمِ اللهِ الرَّحْمنِ الرَّحِيم\n\nقُلْ أَعُوذُ بِرَبِّ ٱلْفَلَقِ، مِن شَرِّ مَا خَلَقَ، وَمِن شَرِّ غَاسِقٍ إِذَا وَقَبَ، وَمِن شَرِّ ٱلنَّفَّٰثَٰتِ فِى ٱلْعُقَدِ، وَمِن شَرِّ حَاسِدٍ إِذَا حَسَدَ. ":
        3,
    "بِسْمِ اللهِ الرَّحْمنِ الرَّحِيم\n\nقُلْ أَعُوذُ بِرَبِّ ٱلنَّاسِ، مَلِكِ ٱلنَّاسِ، إِلَٰهِ ٱلنَّاسِ، مِن شَرِّ ٱلْوَسْوَاسِ ٱلْخَنَّاسِ، ٱلَّذِى يُوَسْوِسُ فِى صُدُورِ ٱلنَّاسِ، مِنَ ٱلْجِنَّةِ وَٱلنَّاسِ. ":
        4
  };
  int zekr = 1;
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.white,
        ),
        title: Text(
          "اذكارالصباح والمساء ",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      backgroundColor: Color(0xffEFEFEF),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "${DateTime.now().year}-${DateTime.now().month}-${DateTime.now().day}",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
                Expanded(
                    child: Text(
                  "${JHijri.now().dayName}",
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                )),
                Expanded(
                    child: Text(
                  "${JHijri(fDate: DateTime.now()).year}-${JHijri(fDate: DateTime.now()).month}-${JHijri(fDate: DateTime.now()).day}",
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ))
              ],
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black, width: 1.2)),
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            child: Text(
                          "$zekr/${azkarelsabah.length}",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 22),
                        )),
                        Expanded(
                            child: InkWell(
                              onTap: (){
                                if(azkarelsabah.values.elementAt(zekr-1)>count){
                                  count++;                                }
                                setState(() {

                                });
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
                                  value: count/azkarelsabah.values.elementAt(zekr-1),
                                ),
                              ),
                              Text(
                                "$count",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 22),
                              ),
                            ],
                          ),
                        )),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 6,
                    child: InkWell(
                      onTap: () {
                        if (azkarelsabah.values.elementAt(zekr - 1) > count) {
                          count++;
                        }
                        setState(() {});
                      },
                      child: Text(
                        "${azkarelsabah.keys.elementAt(zekr - 1)}",
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
                              if (zekr < azkarelsabah.length) {
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
          ),
        ],
      ),
    );
  }
}
