import 'package:flutter/material.dart';
import 'package:jam/pages/home_screen.dart';
import 'pages/setting_screen.dart';
import 'pages/splash_screen.dart';
import 'pages/login_screen.dart';
import 'pages/regis_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  //Punya Septian
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      initialRoute: '/',
      routes: {
        '/home': (context) => HomeScreen(),
        '/setting': (context) => SettingScreen(),
        // '/monitor': (context) => MonitorScreen(),
        // '/watch': (context) => WatchScreen(),
        // '/profile': (context) => ProfileScreen(),
      },
    );
  }
}
//Punya Mumtaz
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'My App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       initialRoute: '/',
//       routes: {
//         '/': (context) => SplashScreen(),
//         '/login': (context) => LoginScreen(),
//         '/register': (context) => RegisterScreen(),
//       },
//     );
//   }
// }
