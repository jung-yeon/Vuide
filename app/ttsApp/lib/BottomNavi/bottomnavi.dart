import 'package:firstflutterapp/ContactPage/contact.dart';
import 'package:firstflutterapp/HomePage/home.dart';
import 'package:firstflutterapp/MapPage/map.dart';
import 'package:firstflutterapp/SettingPage/setting.dart';
import 'package:flutter/material.dart';

import '../InquiryPage/inquiry.dart';

class Bottomnavi extends StatefulWidget {
  final int initialIndex;

  Bottomnavi({this.initialIndex = 0});
  @override
  _BottomState createState() => _BottomState();
}

class _BottomState extends State<Bottomnavi> {
  late int _selectedIndex;


  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.initialIndex; // 초기 선택 인덱스를 설정합니다.
  }

  static List<Widget> _widgetOptions = <Widget>[
    ContactPage(),// 홈 페이지 위젯
    MapPage(),
    Home(), // 주차장 페이지 위젯
    Inquiry(), // 문의 페이지 위젯
    Setting(), // 설정 페이지 위젯
  ];

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    // 페이지 이동 로직을 여기에 추가하세요. 예를 들어 Navigator를 사용하거나, PageView 컨트롤러를 조작하세요.
  }
  BottomNavigationBarType _bottomNavType = BottomNavigationBarType.fixed;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // 현재 선택된 탭에 해당하는 페이지를 표시합니다.
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset("assets/icons/mobile1.png",scale: 5,),
            activeIcon: Image.asset("assets/icons/mobile2.png",scale: 5,),
            label: '연락처',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/icons/car1.png",scale: 5,),
            activeIcon: Image.asset("assets/icons/car2.png",scale: 5,),
            label: '주차장',
          ),
          BottomNavigationBarItem(

            icon: Image.asset("assets/icons/home1.png",scale: 5,),
            activeIcon: Image.asset("assets/icons/home2.png",scale: 5,),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/icons/messages1.png",scale: 5,),
            activeIcon: Image.asset("assets/icons/messages2.png",scale: 5,),
            label: '문의',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/icons/setting1.png",scale: 5,),
            activeIcon: Image.asset("assets/icons/setting2.png",scale: 5,),
            label: '설정',


          ),
        ],
        currentIndex: _selectedIndex, // 현재 선택된 탭 인덱스
        unselectedItemColor: Color(0xff473E7C),
        selectedItemColor: Color(0xff473E7C),
        showUnselectedLabels: true,
        type: _bottomNavType,
        onTap: onItemTapped,
      ),
    );
  }
}