import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Sura_detials extends StatefulWidget {
  static const String routeName='SuraDetials';

  @override
  State<Sura_detials> createState() => _Sura_detialsState();
}

class _Sura_detialsState extends State<Sura_detials> {
  List<String>Verses=[];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetialsArgs;
    loadSuraDetials(args.SuraIndex);
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
          child: Verses.isEmpty?
              Center(child: CircularProgressIndicator()):
              ListView.builder(itemBuilder: (buildContext,index){
                return Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('(${index+1})'+Verses[index],
                      style: TextStyle(
                        fontSize: 20
                      ),textAlign: TextAlign.center,
                        textDirection: TextDirection.rtl
                    ),
                  ),
                );
              },itemCount: Verses.length,
              )
          ,
        ) ,
      ),
    ]);
  }

  void loadSuraDetials(int index)async{
    String fileContent = await rootBundle.loadString('assets/files/${index+1}.txt');
    List<String> Vers=fileContent.split('\n');
    this.Verses=Vers;
    setState(() {

    });
  }
}

class SuraDetialsArgs{
  String SuraName;
  int SuraIndex;
  SuraDetialsArgs(this.SuraName,this.SuraIndex);
}