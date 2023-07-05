import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';

class ShopingCardScreen extends StatefulWidget {
   const ShopingCardScreen({Key? key}) : super(key: key);

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
        padding:  EdgeInsets.symmetric(horizontal: 1.sw/22,vertical: 1.sh/50),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 1.sh/25,
                child: ListView.separated(shrinkWrap: true,scrollDirection: Axis.horizontal,itemBuilder: (context,index)=>GestureDetector(
                  onTap: (){
                    changeValueOfIndex(index);
                  },
                  child: Stack(
                    alignment: Alignment.topLeft,
                    clipBehavior: Clip.none,
                    children: [

                      this.index==index? CircleAvatar(radius: 1.sw/150,backgroundColor: Colors.white,):Container(),

                      Padding(
                        padding:  EdgeInsets.only(top: 10.h),
                        child: Text(items[index],style:  TextStyle(
                            color: Colors.white,
                          fontSize: 16.sp
                        ),),
                      ),
                    ],
                  ),
                ), separatorBuilder: (context,index)=> SizedBox(width: 1.sw/9,), itemCount: items.length),
              ),
              SizedBox(height: 1.sh/45,),

              ResponsiveGridList(
listViewBuilderOptions: ListViewBuilderOptions(
  physics: BouncingScrollPhysics()
      
),
                shrinkWrap: true,

                horizontalGridSpacing: 10.w, // Horizontal space between grid items
                verticalGridSpacing: 10.h, // Vertical space between grid items
                minItemWidth: double.infinity, // The minim
                // um item width (can be smaller, if the layout constraints are smaller)
                minItemsPerRow: 2, // The minimum items to show in a single row. Takes precedence over minItemWidth
                children: List.generate(10, (index) =>Container(height: 1.sh/3,width: double.infinity,decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
color: const Color(0xFF454d5a),

                ),child: Stack(

                  children: [
                    Column(
                      children: [
                        Container(
                          height: 1.sh/5,width: double.infinity,decoration: BoxDecoration(
color: const Color(0xFF474f5c),
                          borderRadius: BorderRadius.only(topRight:  Radius.circular(12.r),topLeft: Radius.circular(12.r))
                        ),child:  Padding(
                          padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h),
                          child: Row(
crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

Container(height: 1.sw/14,width: 1.sw/10
,decoration: BoxDecoration(
borderRadius: BorderRadius.circular(10.r),
color: const Color(0xFF343743)
),child:   Center(child: Row(
mainAxisAlignment: MainAxisAlignment.center,

children: [
Text("4.6",style: TextStyle(
color:Colors.white,
fontSize: 12.sp
),),
Icon(Icons.star_rounded,color: Colors.yellow,size: 1.sw/30,),
],
)),),
const Spacer(),
Icon(Icons.favorite_border_sharp,color: Colors.white,size: 0.1.sh/2.9,),

                            ],
                          ),
                        ),),
                  Padding(
padding: EdgeInsets.only(left: 20.w,top: 40.h),
child: Column(crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text("PS5",style: TextStyle(
color: Colors.white,
fontSize: 15.sp,
),),
Row(
children: [
Text("\$179.95",style: TextStyle(
color: Colors.white,fontWeight: FontWeight.w900,
fontSize:17.sp
),),
SizedBox(width: 2.w,),
Text("\$180.95",style: TextStyle(
color: Colors.white,fontWeight: FontWeight.w500,
fontSize:15.sp
),
),])
                  ]),
                  )
                      ],
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                      Padding(
padding:  EdgeInsets.only(left: 10.w),
child: Image.asset("assets/images/image1.png",height: 1.sw/4,width: 1.sw/4,fit: BoxFit.contain,),
),
Padding(
padding:  EdgeInsets.only(right: 10.w,top: 50.h),
child:   Align(
alignment: Alignment.centerRight,
child:   Container(width: 1.sw/10,height: 1.sw/10,decoration: BoxDecoration(
color: const Color(0xFF333742),
borderRadius: BorderRadius.circular(10.r),
),child:  Icon(Icons.shopping_bag_outlined,color: Colors.white,size: 1.sw/23,),),
),
),
                    ],)
                  ],
                ),)) ,
                  ),
            ],
          ),
        ),
      ),
    );
  }
}


//
// Stack(
// alignment: Alignment.centerLeft,
// clipBehavior: Clip.none,
// children: [
// Container(
// width: double.infinity,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(15),
// color: const Color(0xFF454d5a),
//
// ),
//
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Container(
// height: 0.24.sh,
// width: double.infinity,
// decoration: const BoxDecoration(
// color: Color(0xFF474f5c),
//
// borderRadius: BorderRadius.only(topRight: Radius.circular(15),topLeft: Radius.circular(15)),
// ),
// child: Padding(
// padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h),
// child: Row(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Container(height: 1.sw/14,width: 1.sw/10
// ,decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(10.r),
// color: const Color(0xFF343743)
// ),child:   Center(child: Row(
// mainAxisAlignment: MainAxisAlignment.center,
//
// children: [
// Text("4.6",style: TextStyle(
// color:Colors.white,
// fontSize: 12.sp
// ),),
// Icon(Icons.star_rounded,color: Colors.yellow,size: 1.sw/30,),
// ],
// )),),
// const Spacer(),
// Icon(Icons.favorite_border_sharp,color: Colors.white,size: 0.1.sh/2.9,),
// ],
// ),
// ),
// ),
// Padding(
// padding: EdgeInsets.only(left: 20.w,top: 30.h),
// child: Column(crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Text("PS5",style: TextStyle(
// color: Colors.white,
// fontSize: 15.sp,
// ),),
// Row(
// children: [
// Text("\$179.95",style: TextStyle(
// color: Colors.white,fontWeight: FontWeight.w900,
// fontSize:17.sp
// ),),
// SizedBox(width: 2.w,),
// Text("\$180.95",style: TextStyle(
// color: Colors.white,fontWeight: FontWeight.w500,
// fontSize:15.sp
// ),),
//
// ],
// ),
//
// ],
// ),
// ),
//
// ],
// ),
// ),
// Padding(
// padding:  EdgeInsets.only(left: 10.w),
// child: Image.asset("assets/images/image1.png",height: 1.sw/4,width: 1.sw/4,fit: BoxFit.contain,),
// ),
// Padding(
// padding:  EdgeInsets.only(right: 10.w,top: 100.h),
// child:   Align(
// alignment: Alignment.centerRight,
// child:   Container(width: 1.sw/10,height: 1.sw/10,decoration: BoxDecoration(
// color: const Color(0xFF333742),
// borderRadius: BorderRadius.circular(10.r),
// ),child: const Icon(Icons.shopping_bag_outlined,color: Colors.white,),),
// ),
// ),
// ],
// )