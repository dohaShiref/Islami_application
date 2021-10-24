import 'package:flutter/material.dart';
import 'package:islami_application/Quran/quranTab.dart';
import 'package:islami_application/Radio/radioTab.dart';
import 'package:islami_application/Sebha/sebhaTab.dart';
import 'package:islami_application/hadeth/hadethTab.dart';
import 'package:islami_application/main.dart';

class homeScreen extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/main_background.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          bottomNavigationBar: Theme(
            data: Theme.of(context)
                .copyWith(canvasColor: MyThemeData.Primaty_color),
            child: BottomNavigationBar(
              onTap: (index){
                currentPageIndex=index;
                setState(() {

                });
              },
              currentIndex: currentPageIndex,
              selectedItemColor: MyThemeData.SelectedIemColor,
              unselectedItemColor: MyThemeData.UnSelectedIemColor,
              selectedIconTheme:
                  IconThemeData(color: MyThemeData.SelectedIemColor),
              unselectedIconTheme:
                  IconThemeData(color: MyThemeData.UnSelectedIemColor),
              items: [
                BottomNavigationBarItem(
                    icon: Image.asset(
                      'assets/images/ic_radio.png',
                      width: 37,
                        color: currentPageIndex == 0 ? MyThemeData.SelectedIemColor : MyThemeData.UnSelectedIemColor
                    ),
                    label: 'Radio'),
                BottomNavigationBarItem(
                    label: 'Sebha',
                    icon: Image.asset('assets/images/ic_sebha.png', width: 37,
                        color: currentPageIndex == 1 ? MyThemeData.SelectedIemColor : MyThemeData.UnSelectedIemColor
                    )),
                BottomNavigationBarItem(
                    label: 'Ahadeth',
                    icon: Image.asset('assets/images/ic_book.png', width: 37,
                        color: currentPageIndex == 2 ? MyThemeData.SelectedIemColor : MyThemeData.UnSelectedIemColor
                    )),
                BottomNavigationBarItem(
                    label: 'Quran',
                    icon: Image.asset('assets/images/ic_quran.png', width: 37,
                        color: currentPageIndex == 3 ? MyThemeData.SelectedIemColor : MyThemeData.UnSelectedIemColor
                    )),
              ],
            ),
          ),
          body: getCurrentPage(),
        ),
      ],
    );
  }

  Widget getCurrentPage(){
    if(currentPageIndex==0){
      return radioTab();
    }else if (currentPageIndex==1){
      return sebhaTab();
    }else if (currentPageIndex==2){
      return hadethTab();
    }else return quranTab();
  }
}
