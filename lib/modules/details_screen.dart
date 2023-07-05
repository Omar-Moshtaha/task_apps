import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
  "assets/images/image1.png",
  "assets/images/image1.png",
  "assets/images/image1.png",
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title:
          Row(
            children:  [
              Icon(Icons.arrow_back_ios,size: 1.sh/37,),
               SizedBox(width: 10.w,),
              Text("PULSE 3D Wireless Headset",style: TextStyle(
                fontSize: 18.sp
              ),),
              const Spacer(),
              Icon(Icons.favorite_border_sharp,color: Colors.grey,size: 1.sh/35,)
            ],
          ),
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 1.sw/20),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
               SizedBox(height: 1.sw/15,),
               Text("PULSE 3D \nWireless Headset",style: TextStyle(color: Colors.white,fontSize: 18.sp,fontWeight: FontWeight.w900),),
              SizedBox(height: 1.sw/40,),

               Opacity(opacity: 0.55,child: Text("Category Name",style: TextStyle(color: Colors.white,fontSize: 17.sp,fontWeight: FontWeight.w400),)),
              SizedBox(height: 1.sw/15,),
Row(

crossAxisAlignment: CrossAxisAlignment.start,  children:  [
 Opacity(opacity: 0.55,child: Icon(Icons.remove_red_eye,color: Colors.white,size:1.sh/35,)),
  SizedBox(width: 1.sw/40,),
     Opacity(opacity: 0.55,child: Text("1.5 k",style: TextStyle(color: Colors.white,fontSize: 18.sp,fontWeight: FontWeight.w400),)),
  SizedBox(width: 1.sw/40,),

     Opacity(opacity: 0.55,child: Icon(Icons.favorite,color: Colors.white,size:1.sh/35,)),

  SizedBox(width: 1.sw/40,),
     Opacity(opacity: 0.55,child: Text("212",style: TextStyle(color: Colors.white,fontSize: 18.sp,fontWeight: FontWeight.w400),)),
  SizedBox(width: 1.sw/40,),
     Opacity(opacity: 0.55,child: Icon(Icons.lock,color: Colors.white,size: 1.sh/35,)),

     SizedBox(width: 1.sw/40,),
     Opacity(opacity: 0.55,child: Text("120",style: TextStyle(color: Colors.white,fontSize: 18.sp,fontWeight: FontWeight.w400),)),
   const Spacer(),
SizedBox(
  width: 1.sw/10,
  child:   ListView.separated(scrollDirection: Axis.vertical,shrinkWrap: true,itemBuilder: (context,index)=>Container(
    height:1.sw/10,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.r),
      border: Border.all(color: Colors.white),

      color:color[index]
    ),
  ), separatorBuilder: (context,index)=> SizedBox(height: 1.sw/20,), itemCount: 3),
),
  ],
),
SizedBox(height: 1.sw/10,),
CarouselSlider.builder(itemCount: image.length, itemBuilder: (context,index,realIndex){
  return Padding(
    padding:  EdgeInsets.symmetric(horizontal: 10.w),
    child: Image.asset(image[index],fit: BoxFit.contain,),
  );
}, options: CarouselOptions(onPageChanged: (index,e){
  setState(() {
    chanvalueOfIndex(index);

  });
},height: 1.sw/3,autoPlay: true,reverse: true,autoPlayInterval: const Duration(seconds: 2))),
              SizedBox(height: 30.h,),
              Center(
  child:   AnimatedSmoothIndicator(effect: ExpandingDotsEffect(
    activeDotColor: Colors.white,dotHeight: 1.sw/50,dotWidth:1.sw/25,
    dotColor: Colors.grey.withOpacity(0.55)
  ),activeIndex: index, count: image.length),
),
            ],
          ),
        ),
      ),
    );
  }
}
