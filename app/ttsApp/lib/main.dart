import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:firstflutterapp/HomePage/home.dart';
import 'package:firstflutterapp/LoginPage/login.dart';
import 'package:flutter/material.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';
import 'package:page_transition/page_transition.dart';
<<<<<<< HEAD
// <<<<<<< HEAD
// <<<<<<< HEAD
// Future<void> main() async {
//   // 웹 환경에서 카카오 로그인을 정상적으로 완료하려면 runApp() 호출 전 아래 메서드 호출 필요
//   // WidgetsFlutterBinding.ensureInitialized();
//   // const nativeKey  = 'b9a38eec8ae6c4e006a08a50b87c776f';
//   // // runApp() 호출 전 Flutter SDK 초기화
//   // KakaoSdk.init(
//   //   nativeAppKey: nativeKey,
//   // );
//   // await Firebase.initializeApp();
// =======
// =======
// >>>>>>> 201e4eb1a78fc2d56afd3e86c00ec9c755bced29

import 'dto/kakao_login.dart';
import 'dto/main_view_model.dart';
void main() {
  KakaoSdk.init(nativeAppKey: "b9a38eec8ae6c4e006a08a50b87c776f");
// <<<<<<< HEAD
// >>>>>>> 201e4eb1a78fc2d56afd3e86c00ec9c755bced29
// =======
// >>>>>>> 201e4eb1a78fc2d56afd3e86c00ec9c755bced29
=======
void main() {
  KakaoSdk.init(nativeAppKey: "b9a38eec8ae6c4e006a08a50b87c776f");
>>>>>>> ec556d664f9e7f5638e464f5fb03b1230c35de82
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "hello",
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        mainAxisAlignment: MainAxisAlignment.center, // 세로 중앙 정렬
        crossAxisAlignment: CrossAxisAlignment.center, // 가로 중앙 정렬
        children: [
          Image.asset("assets/logo2.png"),
          const Text("오늘도 안전운전 하세요", style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal, color: Colors.white))
        ],
      ),
      backgroundColor: Color(0xFF8D9BE5),
      nextScreen: Home(),
      splashIconSize: 300,
      duration: 5000,
      splashTransition: SplashTransition.sizeTransition,
      pageTransitionType: PageTransitionType.bottomToTop,
      animationDuration: const Duration(seconds: 1),
    );
  }
}