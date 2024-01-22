import 'package:flutter/material.dart';
import 'package:skenu/screens/Register.dart';
import 'package:skenu/screens/login.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Skenu',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: "/",
      routes:{
       "/":(context) =>const LoginPage(),
        "/register":(context)=> const Register(),
      },
    );
  }
}

