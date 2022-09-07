import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/provider.dart';
import 'package:flutter_application_1/screens/authscreen.dart';
import 'package:flutter_application_1/screens/mainscreen.dart';
import 'package:flutter_application_1/screens/splachscreen.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(ChangeNotifierProvider<MyProvider>(
        create: (context) => MyProvider(),
        child:  const MyApp(),
      ),
    );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplachScreen()

    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Text("hi"),
        ));
  }
}
