import 'package:flutter/material.dart';

class CategoriesScreen extends StatefulWidget {
   CategoriesScreen({Key? key}) : super(key: key);

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
List<String>items=[
  "All",
  "PS5",
  "PS4",
  "Xbox one",

];
List<Color>colors=[
   const Color(0xFF333742),
  const Color(0xFFFFFFFF),
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
  child:   Column(
    crossAxisAlignment: CrossAxisAlignment.start,
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
      const SizedBox(height: 20,),
      Row(
        children: [
          Container(width: 280,height: 50,decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0Xff454D5A),
          ),child: TextFormField(decoration: const InputDecoration(
            hintText: "Search Products",
            contentPadding: EdgeInsets.only(top: 15,left: 10),
            hintStyle: TextStyle(
              color: Colors.white,
              fontSize: 15

            ),
            suffixIcon: Icon(Icons.search,color: Colors.white,),
            border: InputBorder.none,


          ),)),
          const SizedBox(width: 10,),
          Container(height: 50,width: 50,decoration: BoxDecoration(
            color: const Color(0Xff454D5A),

            borderRadius: BorderRadius.circular(10),
          ),child: const Icon(Icons.flatware_outlined,color: Colors.white,),),
        ],
      ),
      const SizedBox(height: 40,),
Container(
  height: 455,

  child:   ListView.separated(shrinkWrap: true,scrollDirection: Axis.horizontal,itemBuilder: (context,index)=>Container(
    width: 284,
    decoration: BoxDecoration(
      color: const Color(0Xff454D5A),
      borderRadius: BorderRadius.circular(30),

    ),
    child: Padding(
      padding: const EdgeInsets.only(top: 30,left: 20,right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              Text("Sony",style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),),
              Spacer(),
              Icon(Icons.favorite_border_sharp,color: Colors.white,),

            ],
          ),
          const Text("Playstation 5",style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),),
          const SizedBox(height: 40,),
          Image.network("https://gmedia.playstation.com/is/image/SIEPDC/console-left_@1x?fmt=png-alpha&scl=1",height: 200,width: 200,),
          const SizedBox(height: 40,),

          Row(
            children: [
              Container(
                width: 30,
                child:   ListView.separated(scrollDirection: Axis.vertical,shrinkWrap: true,itemBuilder: (context,index)=>Container(height: 30,width: 40,decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: colors[index],
                ),), separatorBuilder:(context,index) =>const SizedBox(height: 10,), itemCount: colors.length),
              ),
              const Spacer(),
              Container(width: 150,height: 45,decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0Xff707070),

              ),child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("\$890.00",style: TextStyle(
                        color: Colors.white,fontWeight: FontWeight.w700,
                        fontSize:16
                    ),),

                    Stack(
                      alignment: Alignment.center,
                      children: [
                        const Text("\$920.00",style: TextStyle(
                            color: Colors.white,fontWeight: FontWeight.w500,
                            fontSize:12
                        ),),
                        Container(width: 50,height: 2,color: Colors.white,),
                      ],
                    ),

                  ],
                ),
              ),),
            ],
          ),

        ],
      ),
    ),

  ), separatorBuilder: (context,index)=>SizedBox(width: 30,), itemCount: 2),
),
    ],
  ),
),
    );
  }
}
