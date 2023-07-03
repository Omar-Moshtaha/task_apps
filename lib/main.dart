import 'package:flutter/material.dart';
import 'package:shop_app/modules/details_of_product_screen.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
theme: ThemeData(
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFF333742),
  ),
      bottomSheetTheme:  BottomSheetThemeData(
        backgroundColor:Colors.white.withOpacity(0),
      ),

      scaffoldBackgroundColor:  const Color(0xFF333742),
),
      debugShowCheckedModeBanner: false,
      home: DetailsOfProductScreen()
    );
  }
}
