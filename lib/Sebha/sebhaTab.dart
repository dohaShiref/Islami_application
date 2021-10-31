import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_application/main.dart';

class sebhaTab extends StatefulWidget{
  @override
  State<sebhaTab> createState() => _sebhaTabState();
}

class _sebhaTabState extends State<sebhaTab> {
  int sebhaCounter=30;
  double  degres=5;
  double finalAngle =0;

  List<String> azkar=['سبحان الله','استغفر الله','الحمد لله'];
  int azkarindex=0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/head of seb7a.png',
                width: 73,
                height: 105,
              ),
            ],
          ),
        ),
        Transform.rotate(
          angle: finalAngle,
          child: Container(
            height: 234,
            child:  Image.asset(
              'assets/images/body of seb7a.png',
              width: 232,
              height: 234,
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text('عدد التسبيحات',style: TextStyle(
            fontSize: 25,
            color: Colors.black
          ),),
        ),
        Container(
          height: 71,
          width: 59,
          padding: EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
              color: Color.fromRGBO(211, 199, 183, 1.0),
              borderRadius: BorderRadius.circular(15)
          ),
          child:
          TextButton(
            style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.grey),
            ),
            onPressed: () {
              setState(() {
                sebhaCounter--;
                finalAngle += degres * pi / 180;
                if(sebhaCounter==0){
                  azkarindex=(azkarindex+1)%azkar.length;
                  sebhaCounter=30;
                }
              });
            },
            child: Text('$sebhaCounter',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25
              ),
            ),
          ),

        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 5,horizontal: 15),
          margin: EdgeInsets.only(top: 20),
          decoration: BoxDecoration(
              color: Color.fromRGBO(183, 147, 95, 1.0),
              borderRadius: BorderRadius.circular(30)
          ),
          child: Text(azkar[azkarindex],style: TextStyle(
              fontSize: 25,
            color: Colors.white
          ),textAlign: TextAlign.center,),
        ),
      ],
    );
  }
}