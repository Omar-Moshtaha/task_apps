import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/layout/layout_screen.dart';

import 'modules/details_screen.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
theme: ThemeData(
  appBarTheme: AppBarTheme(
    backgroundColor: Color(0xFF333742),
  ),

      scaffoldBackgroundColor:  Color(0xFF333742),
),
      debugShowCheckedModeBanner: false,
      home: LayoutScreen()
    );
  }
}
