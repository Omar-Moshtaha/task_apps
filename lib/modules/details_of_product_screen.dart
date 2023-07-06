import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DetailsOfProductScreen extends StatefulWidget {
  const DetailsOfProductScreen({Key? key}) : super(key: key);

  @override
  State<DetailsOfProductScreen> createState() => _DetailsOfProductScreenState();
}

class _DetailsOfProductScreenState extends State<DetailsOfProductScreen> {
  List <Color>color=[
    const Color(0xff0ff333742),
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
        body:SafeArea(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
Container(height: 0.15.sh,width: double.infinity,color:   const Color(0xFF333742),child: Padding(
  padding:   EdgeInsets.only(top: 10.h,left: 20.w),
  child:   Column(
    crossAxisAlignment: CrossAxisAlignment.start,

    children: [

      Padding(
        padding:  const EdgeInsets.only(right: 20),
        child: Row(
          children:  [
          Icon(Icons.arrow_back_ios,color: Colors.white,size:1.sh/37,),
          const SizedBox(width: 10,),
          Text("PS5",style: TextStyle(color: Colors.white,fontSize: 18.sp,fontWeight: FontWeight.w400),),
          const Spacer(),
          Icon(Icons.share,color: Colors.white,size:1.sh/37,)

          ],
        ),
      ),
       SizedBox(height: 1.sw/30,),

       Text("PULSE 3D \nWireless Headset",style: TextStyle(color: Colors.white,fontSize: 15.sp,fontWeight: FontWeight.w900),),

    ],
  ),
),),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 1.sh,
                    decoration:  BoxDecoration(

                      color: Color(0xFF454D5A),

                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20.r),topRight: Radius.circular(20.r)),
                    ),
                    child: Padding(
                      padding:  EdgeInsets.only(left: 30.w,right:  30.w,top: 50.h),
                      child: SingleChildScrollView(
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                          Row(
                            children: [
                               Opacity(opacity: 0.55,child: Icon(Icons.remove_red_eye,size: 1.sh/35,color: Colors.white,)),
                              const Spacer(),
                              Container(height: 1.sw/13,width: 1.sw/8,decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.r),
                                  color: const Color(0xFF343743)
                              ),child:  Center(child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,

                                children:  [
                                  Text("4.6",style: TextStyle(
                                      color:Colors.white,
                                    fontSize: 12.sp
                                  ),),
                                  Icon(Icons.star_rounded,color: Colors.yellow,size: 1.sw/20,),
                                ],
                              )),),
                            ],
                          ),
                          SizedBox(height: 10.h,),
                           Opacity(opacity: 0.55,child: Text("1.5 k",style: TextStyle(color: Colors.white,fontSize: 18.sp,fontWeight: FontWeight.w400),)),
                          SizedBox(height: 10.h,),

                           Opacity(opacity: 0.55,child: Icon(Icons.favorite,size:1.sh/35,color: Colors.white,)),

                          SizedBox(height: 10.h,),
                           Opacity(opacity: 0.55,child: Text("212",style: TextStyle(color: Colors.white,fontSize: 18.sp,fontWeight: FontWeight.w400),)),
                          SizedBox(height: 10.h,),
                           Opacity(opacity: 0.55,child: Icon(Icons.lock,color: Colors.white,size: 1.sh/35,)),

                          SizedBox(height: 10.h,),
                           Opacity(opacity: 0.55,child: Text("120",style: TextStyle(color: Colors.white,fontSize: 18.sp,fontWeight: FontWeight.w400),)),
            SizedBox(height: 1.sh/8,),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                               Text("\$180.95",style: TextStyle(
                                  color: Colors.white,fontWeight: FontWeight.w500,
                                  fontSize:12.sp
                              ),),
                              Container(width: 50,height: 2,color: Colors.white,),
                            ],
                          ),
                           SizedBox(height: 3.h,),

                          Row(
                            children: [
                               Text("\$179.95",style: TextStyle(
                                  color: Colors.white,fontWeight: FontWeight.w900,
                                  fontSize:16.sp
                              ),),
                              const Spacer(),
                              Container(height: 1.sw/13,width: 1.sw/10,decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.r),
                                color: const Color(0xFF343743)
                              ),child:  Center(child: Text("24%",style: TextStyle(
                                fontSize: 12.sp,
                                color: Color(0Xff6AED8A)
                              ),)),),
                            ],
                          ),
                          const SizedBox(height: 15,),

                          Row(children:  [
                            const Opacity(opacity: 0.55,child: Icon(Icons.bus_alert,color: Colors.white,)),
                            const SizedBox(width:10,),

                            Opacity(opacity: 0.55,child: Text("Prices ind. VAT.",style: TextStyle(color: Colors.white,fontSize: 15.sp,fontWeight: FontWeight.w400),)),
                            const SizedBox(width:10,),

                            Opacity(opacity: 0.55,child: Text("plus shipping costs",style: TextStyle(color: Colors.white,fontSize: 15.sp,fontWeight: FontWeight.w400),)),

                          ],),
                           Opacity(
                            opacity: 0.55,
                            child:   Text("Lorem ipsum dolor sit amet ,consectetuer adipiscing elit\nAenean commodo ligula eget dolor, Aenean massa.",style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.sp,

                            ),),
                          ),
                          SizedBox(height: 10.h,),

                           Text("Choose Color",style: TextStyle(
                              color: Colors.white,fontWeight: FontWeight.w900,
                              fontSize:13.sp
                          ),),
                           SizedBox(height: 10.h,),
                          Container(
                            height: 1.sw/12,
                            child:   ListView.separated(scrollDirection: Axis.horizontal,shrinkWrap: true,itemBuilder: (context,index)=>Container(
                              width: 1.sw/12,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.r),
                                  border: Border.all(color: Colors.white),

                                  color:color[index]
                              ),
                            ), separatorBuilder: (context,index)=>const SizedBox(width: 10,), itemCount: 3),
                          ),
                        ],),
                      ),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(top: 20.h),
                    child: Column(
                      children: [

                        CarouselSlider.builder(itemCount: image.length, itemBuilder: (context,index,realIndex){
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 40),
                            child: Image.asset(image[index]),
                          );
                        }, options: CarouselOptions(onPageChanged: (index,e){
                          setState(() {
                            chanvalueOfIndex(index);

                          });
                        },height: 1.sw/1.7,autoPlay: true,reverse: true,autoPlayInterval: const Duration(seconds: 2))),
                        const SizedBox(height: 20,),

                        Center(
                          child:   AnimatedSmoothIndicator(effect: ExpandingDotsEffect(
                              activeDotColor: Colors.white,dotHeight: 1.sw/50,dotWidth:1.sw/25,
                              dotColor: Colors.grey.withOpacity(0.55)
                          ),activeIndex: index, count: image.length),
                        ),

                      ],
                    ),
                  ),

                ],
              ),

              const SizedBox(height:  10,)


              ],
            ),
          ),
        ),
        bottomSheet:
        Container(
          height: 1.sh/9,
          width: double.infinity,
          decoration:  BoxDecoration(
            color: Color(0Xff333742),

            borderRadius: BorderRadius.only(topRight: Radius.circular(20.r),topLeft: Radius.circular(20.r),),
          ),
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 10.w),
            child: Row(
              children: [

                Container(height: 1.sh/16,width: 1.sh/16,decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: const Color(0xFF454D5A)
                ),child:  Icon(Icons.favorite_outline_rounded,color: Colors.white,size: 1.sw/20,),),
                 SizedBox(width: 10.w,),
                Expanded(
                  child: Container(height: 1.sh/16,decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: const Color(0xFF454D5A)
                  ),child:  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.card_giftcard,color: Colors.white,size: 1.sw/20,),
                      SizedBox(width: 2.w,),
                      Text("ADD TO CART",style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.sp
                      ),),
                    ],
                  ),),
                ),

              ],
            ),
          ),
        ),
      );
    }
  }

