import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class elseb7a extends StatefulWidget {


  @override
  State<elseb7a> createState() => _elseb7aState();
}
Map zekr={

};
int count =0;
  int number=100 ;
class _elseb7aState extends State<elseb7a> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.white,
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          "المسبحة",
          style: TextStyle(color: Colors.white,fontSize: 25,),

        ),
      ),

      body:  Column(
        children: [
                 Container(
                   child: TextButton(
                     onPressed:(){
                       showDialog(context: context, builder: (context){
                         return AlertDialog(
                           title: Column(
                             children: [
                               Text("سبحان الله"),
                               Text("data")
                             ],
                           ),
                         );
                       });
                     } ,
                     child: Text("سبحان الله"),
                   ),
                  margin: EdgeInsets.only(top: 40,bottom: 90),
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                      border:Border.all(color:Colors.blue ),borderRadius: BorderRadius.circular(10)),
              ),
          InkWell(

              onTap: (){
                if(count<number){
                count++;
                }
                if(count==number){
                  count =0;
                }
                setState(() {
                });
              },
            splashFactory: NoSplash.splashFactory,
               splashColor: Colors.transparent,
              child: Center(
                child:  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 230,
                        height: 230,
                          child: CircularProgressIndicator(
                            strokeWidth: 7,
                            backgroundColor: Colors.grey,
                            color: Colors.blue,
                            value:count/number ,
                          ),
                        ),
                      Text("$count")
                    ],
                  ),
                ),
              ),
            Row(
              children: [
                ElevatedButton(

                       onPressed: (){
                        showDialog(context: context,
                             builder: (context){
                           return AlertDialog(
                             title:  Text(" ادخل العدد"),
                             actions: [
                               TextFormField(
                                 keyboardType: TextInputType.number,
                                 onChanged: (s){
                                   number= int.parse(s);
                                 },

                               )
                               ,ElevatedButton(
                                   onPressed: (){
                                     setState(() {

                                     });
                                     Navigator.pop(context);
                                   },
                                   child: Text("موافق"))
                             ],
                           );
                             });
                       },
                       child: Text("العدد"),
                     ),
                ElevatedButton(
                    onPressed: (){
                      showDialog(context: context,
                          builder: (context){
                            return AlertDialog(
                              title: Text("اجمالي الذكر"),
                              actions: [
                                TextFormField(
                                  keyboardType: TextInputType.number,
                                ),
                                ElevatedButton(onPressed: (){
                                  Navigator.pop(context);
                                },
                                    child: Text("موافق"))
                              ],

                            );
                          });
                    },
                    child: Text("اجمالي الذكر"))
              ],
            ),


        ],
      ),

    );
  }
}
