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
      body:
      
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
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
                        child: Text(items[index],style: const TextStyle(
                            color: Colors.white
                        ),),
                      ),
                    ],
                  ),
                ), separatorBuilder: (context,index)=>const SizedBox(width: 60,), itemCount: items.length),
              ),
              const SizedBox(height: 30,),
              GridView.count(physics: BouncingScrollPhysics(),scrollDirection: Axis.vertical,childAspectRatio: 1/1.5,crossAxisSpacing: 10,mainAxisSpacing: 10,crossAxisCount: 2,shrinkWrap: true,children: List.generate(20, (index) =>
                  Stack(
                alignment: Alignment.centerLeft,
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: 200,
decoration: BoxDecoration(
  borderRadius: BorderRadius.circular(15),
  color: const Color(0xFF454d5a),

),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
  children: [
          Container(
      height: 170,
      width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xFF474f5c),

            borderRadius: BorderRadius.only(topRight: Radius.circular(15),topLeft: Radius.circular(15)),
          ),
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(height: 21,width: 39,decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFF343743)
            ),child:  Center(child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: const [
                    Text("4.6",style: TextStyle(
                        color:Colors.white
                    ),),
                    Icon(Icons.star_rounded,color: Colors.yellow,size: 13,),
                  ],
            )),),
          const Spacer(),
const Icon(Icons.favorite_border_sharp,color: Colors.white,),
          ],
          ),
      ),
    ),
    Padding(
      padding: const EdgeInsets.only(left: 12,top: 30),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text("wwswssw",style: TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),),
          SizedBox(height: 5,),
          Row(
            children: const [
              Text("\$179.95",style: TextStyle(
                  color: Colors.white,fontWeight: FontWeight.w900,
                  fontSize:16
              ),),
              SizedBox(width: 10,),
              Text("\$180.95",style: TextStyle(
                  color: Colors.white,fontWeight: FontWeight.w500,
                  fontSize:12
              ),),

            ],
          ),

          ],
      ),
    ),

  ],
),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Image.network("https://gmedia.playstation.com/is/image/SIEPDC/console-left_@1x?fmt=png-alpha&scl=1",height: 159,width: 100,),
                  ),
Padding(
  padding: const EdgeInsets.only(right: 10,top: 100),
  child:   Align(
    alignment: Alignment.centerRight,
    child:   Container(child: Icon(Icons.shopping_bag_outlined,color: Colors.white,),width: 39,height: 40,decoration: BoxDecoration(
      color: Color(0xFF333742),
      borderRadius: BorderRadius.circular(10),
    ),),
  ),
),
                ],
              )),),
            ],
          ),
        ),
      ),
    );
  }
}
