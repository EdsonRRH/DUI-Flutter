import 'package:flutter/material.dart';
//import 'package:pantallas/pages/inicio_page.dart';
import 'package:pantallas/pages/inicio_page.dart';
//import 'package:pantallas/pages/login_page.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: InicioPage(),
    );
  }
}