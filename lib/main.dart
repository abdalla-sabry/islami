




import 'package:flutter/material.dart';

import 'package:islami/Home.dart';

void main (){


  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Home(),
      // routes:{
      //   Login.routeName:(context)=>Login(),
      //   Facebook.routeName:(context)=>Facebook()
      // } ,
    );
  }
}
