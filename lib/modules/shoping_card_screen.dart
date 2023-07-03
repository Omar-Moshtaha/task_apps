import 'package:flutter/material.dart';

class ShopingCardScreen extends StatefulWidget {
   ShopingCardScreen({Key? key}) : super(key: key);

  @override
  State<ShopingCardScreen> createState() => _ShopingCardScreenState();
}

class _ShopingCardScreenState extends State<ShopingCardScreen> {
  List<String>items=[
    "All",
    "PS5",
    "PS4",
    "Xbox one",

  ];

   int index=0;

   void changeValueOfIndex(int value){
     setState(() {
       index=value;

     });
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 30,
                child: ListView.separated(shrinkWrap: true,scrollDirection: Axis.horizontal,itemBuilder: (context,index)=>GestureDetector(
                  onTap: (){
                    changeValueOfIndex(index);
                  },
                  child: Stack(
                    alignment: Alignment.topLeft,
                    clipBehavior: Clip.none,
                    children: [

                      this.index==index? const Positioned(top: 1,child: CircleAvatar(radius: 3,backgroundColor: Colors.white,)):Container(),

                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text("${items[index]}",style: const TextStyle(
                            color: Colors.white
                        ),),
                      ),
                    ],
                  ),
                ), separatorBuilder: (context,index)=>const SizedBox(width: 60,), itemCount: items.length),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
