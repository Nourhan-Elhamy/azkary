import 'package:azkar/alazkarelshamla.dart';
import 'package:azkar/elseb7a.dart';
import 'package:azkar/thirdPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class secondScrean extends StatefulWidget {


  @override
  State<secondScrean> createState() => _secondScreanState();
}

class _secondScreanState extends State<secondScrean> {
  Map data={
    'item1' : ["images/pray_4725128.png","اذكار الصباح و المساء",thirdScrean()],
    'item2': ["images/islamic_13534362.png","الاذكار الشاملة",alazkarelshamla()],
    'item3': ["images/moon_9992060.png","سماع الاذكار",thirdScrean()],
    'item4': ["images/quran_4725141.png","الرقية الشرعية",thirdScrean()],
    'item5': ["images/islam_13534427.png","المسبحة",elseb7a()],
    'item6': ["images/rub-el-hizb_10359394.png","الاعدادات",thirdScrean()]
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0xffEFEFEF),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: data.length,
        itemBuilder: (context,i){
        return InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return data.values.elementAt(i)[2];
            }));
          },
          child: Container(

            margin: EdgeInsets.all(10),
            width: 150,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25)
            ),
            child:Column(
              children: [
                Expanded(flex : 3,child: Image(image: AssetImage(data[data.keys.elementAt(i)][0]))),
                Expanded(
                  child: Text(data[data.keys.elementAt(i)][1],
                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                )
              ],
            ),),
        );},
      )
      
    );
  }
}
