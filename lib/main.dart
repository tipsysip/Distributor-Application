import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tipsysip_distributer/screens/auth_screen.dart';
import 'package:tipsysip_distributer/screens/home_screen.dart';
import 'package:tipsysip_distributer/screens/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp(),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.deepPurpleAccent),
      initialRoute: SplashScreen.id,
      routes: {
        SplashScreen.id:(context)=>SplashScreen(),
        AuthScreen.id:(context)=>AuthScreen(),
        HomeScreen.id:(context)=>HomeScreen(),
      },
    );
  }
}