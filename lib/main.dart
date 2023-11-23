import 'package:flutter/material.dart';
// import 'package:learn_api_call/pages/api1_page.dart';
import 'package:learn_api_call/pages/api2_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LEARN API FLUTTER',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Api2Page(),
      //Kalau mau test page api1_page.dart tinggal import dan ubah route homenya
    );
  }
}
