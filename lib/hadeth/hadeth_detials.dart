import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../main.dart';

class hadeth_detials extends StatefulWidget{
  static const String routeName='hadethDetials';

  @override
  State<hadeth_detials> createState() => _hadeth_detialsState();
}

class _hadeth_detialsState extends State<hadeth_detials> {
  List<String>hadeth=[];
  @override
  Widget build(BuildContext context) {
    var arg_index = ModalRoute.of(context)?.settings.arguments as hadethIndex;
    loadhadethDetials(arg_index.index);
    return Stack(children: [
      Image.asset(
        'assets/images/main_background.png',
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
      Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: Text(
            'إسلامي',
            style: TextStyle(
                color: Colors.black, fontSize: 28, fontStyle: FontStyle.italic),
          ),
          backgroundColor: Colors.transparent,
        ),
        body:Container(
          margin: EdgeInsets.only(top: 10,right: 25,left: 25, bottom: 60),
          padding: EdgeInsets.only(top: 60),
          decoration: BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 0.70),
              borderRadius: BorderRadius.circular(30)
          ),
          child: hadeth.isEmpty?
          Center(child: CircularProgressIndicator()):
          ListView.builder(itemBuilder: (buildContext,index){
            return Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(hadeth[index+1],
                    style: TextStyle(
                        fontSize: 20
                    ),textAlign: TextAlign.center,
                    textDirection: TextDirection.rtl
                ),
              ),
            );
          },itemCount: hadeth.length-1,
          )
          ,
        ) ,
      ),
      Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(hadeth[0], style: TextStyle(
                  fontSize: 25,
                  color: Colors.black
                ),textAlign: TextAlign.center,),
              ],
            ),
          ),
          Container(
            height: 1,
            width: double.infinity,
            color: MyThemeData.Primaty_color,
            margin: EdgeInsets.symmetric(horizontal: 60),
          ),
        ],
      )
    ]);
  }

  void loadhadethDetials(int index)async{
    String fileContent = await rootBundle.loadString('assets/hadeth/h${index+1}.txt');
    List<String> hadthString=fileContent.split('\n');
    this.hadeth=hadthString;
    setState(() {

    });
  }
}


class hadethIndex{
  int index;
  hadethIndex(this.index);
}