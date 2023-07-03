import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:shop_app/modules/categories_screen.dart';
import 'package:shop_app/modules/profile_screen.dart';
import 'package:shop_app/modules/shoping_card_screen.dart';

class LayoutScreen extends StatefulWidget {

   LayoutScreen({Key? key}) : super(key: key);

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  List<Widget>screen=[
    CategoriesScreen(),
    ShopingCardScreen(),
    const ProfileScreen(),

  ];

  List<String>title=[
    "Categories",
    "ShopingCard",
    "Profile"
  ];

 int index=0;

void changeIndex(int value){
  setState(() {
    index=value;

  });

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        actions: const [

          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.notification_add_rounded),
          )
        ],
        centerTitle: false,
elevation: 0,
title: Text("${title[index]}"),
      ),
      body: screen[index],
      bottomNavigationBar: Container(
        height: 100,
        clipBehavior: Clip.antiAliasWithSaveLayer,

        decoration: const BoxDecoration(

          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20)

          ),
        ),
        child: GNav(selectedIndex:index ,onTabChange: (value){
changeIndex(value);
        },padding: const EdgeInsets.all(16),backgroundColor: const Color(0xff454D5A),color: Colors.white,activeColor: Colors.white,tabBackgroundColor: const Color(0xFF333742),gap: 8,tabs: const [
          GButton(icon: Icons.home,text: "Home",),
          GButton(icon: Icons.shopify,text: "ShopingCard",),
          GButton(icon: Icons.person,text: "Profile",),

        ]
        ),
      ),
    );
  }
}
