import 'package:flutter/material.dart';
import 'package:islami_application/hadeth/hadeth_detials.dart';

import '../main.dart';

class hadethTab extends StatelessWidget{
  final List hadethNumbers = [for (var i = 1; i <= 50; i++) i];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
            flex: 1,
            child: Image.asset(
              'assets/images/hadeth_sura.png',
            )),
        Container(
          height: 2,
          width: double.infinity,
          color: MyThemeData.Primaty_color,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  'الأحاديث',
                  style: TextStyle(fontSize: 23),textDirection: TextDirection.rtl
              ),
            ),
          ],
        ),
        Container(
          height: 2,
          width: double.infinity,
          color: MyThemeData.Primaty_color,
        ),
        Expanded(
            flex: 2,
            child: ListView.builder(itemBuilder: (buildContext, index) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, hadeth_detials.routeName,
                      arguments: hadethIndex(index));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                          'حديث رقم ${hadethNumbers[index]}',
                          style: TextStyle(fontSize: 25, color: Colors.black),
                          textDirection: TextDirection.rtl
                      ),
                    ),
                  ],
                ),
              );
            },itemCount: hadethNumbers.length,))
      ],
    );
  }
}