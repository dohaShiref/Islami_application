import 'package:flutter/material.dart';

class radioTab extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 350,
              margin: EdgeInsets.only(top: 90),
              child: Image.asset(
                'assets/images/Radio_photo.png',
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Text('إذاعة القرآن الكريم',style: TextStyle(
              fontSize: 25,
              color: Colors.black
          ),),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: Image.asset(
              'assets/images/Icon metro-back.png',
              height: 40,
            ),),
            Expanded(
              child: Image.asset(
                'assets/images/Icon awesome-play.png',
                height: 40,
              ),
            ),
            Expanded(
              child: Image.asset(
                'assets/images/Icon metro-next.png',
                height: 40,
              ),
            ),
          ],
        )
      ],
    );
  }
}