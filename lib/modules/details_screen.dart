import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class DetailsScreen extends StatefulWidget {
   DetailsScreen({Key? key}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
List <Color>color=[
  const Color(0Xff0FF333742),
  const Color(0xFFFFFFFF),
  const Color(0xFFED5454),

];

int index=0;

chanvalueOfIndex(int value){
  setState(() {
    index=value;

  });

}
PageController pageController=PageController();

List<String>image=[
  "https://gmedia.playstation.com/is/image/SIEPDC/console-left_@1x?fmt=png-alpha&scl=1",
  "https://gmedia.playstation.com/is/image/SIEPDC/console-left_@1x?fmt=png-alpha&scl=1",
  "https://gmedia.playstation.com/is/image/SIEPDC/console-left_@1x?fmt=png-alpha&scl=1",
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title:
          Row(
            children: const [
              Icon(Icons.arrow_back_ios,size: 20,),
              SizedBox(width: 10,),
              Text("PULSE 3D Wireless Headset"),
              Spacer(),
              Icon(Icons.favorite_border_sharp,color: Colors.grey,)
            ],
          ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            const SizedBox(height: 40,),
            const Text("PULSE 3D \nWireless Headset",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w900),),
            const SizedBox(height: 20,),

            const Opacity(opacity: 0.55,child: Text("Category Name",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w400),)),
const SizedBox(height: 20,),
Row(
crossAxisAlignment: CrossAxisAlignment.start,  children:  [
const Opacity(opacity: 0.55,child: Icon(Icons.remove_red_eye,color: Colors.white,)),
    const SizedBox(width: 10,),
    const Opacity(opacity: 0.55,child: Text("1.5 k",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w400),)),
    const SizedBox(width: 40,),

    const Opacity(opacity: 0.55,child: Icon(Icons.favorite,color: Colors.white,)),

    const SizedBox(width: 10,),
    const Opacity(opacity: 0.55,child: Text("212",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w400),)),
    const SizedBox(width: 40,),
    const Opacity(opacity: 0.55,child: Icon(Icons.lock,color: Colors.white,)),

    const SizedBox(width: 10,),
    const Opacity(opacity: 0.55,child: Text("120",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w400),)),
  const Spacer(),
Container(
  width: 30,
  child:   ListView.separated(scrollDirection: Axis.vertical,shrinkWrap: true,itemBuilder: (context,index)=>Container(
    height: 30,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: Colors.white),

      color:color[index]
    ),
  ), separatorBuilder: (context,index)=>const SizedBox(height: 10,), itemCount: 3),
),
  ],
),
CarouselSlider.builder(itemCount: image.length, itemBuilder: (context,index,realIndex){
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 40),
    child: Image.network("${image[index]}"),
  );
}, options: CarouselOptions(onPageChanged: (index,e){
  setState(() {
    chanvalueOfIndex(index);

  });
},height: 284,autoPlay: true,reverse: true,autoPlayInterval: const Duration(seconds: 2))),
SizedBox(height:  10,),
            Center(
  child:   AnimatedSmoothIndicator(effect: ExpandingDotsEffect(
    activeDotColor: Colors.white,dotHeight: 5,dotWidth:12,
    dotColor: Colors.grey.withOpacity(0.55)
  ),activeIndex: index, count: image.length),
),
          ],
        ),
      ),
    );
  }
}
