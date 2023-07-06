import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesScreen extends StatefulWidget {
   const CategoriesScreen({Key? key}) : super(key: key);

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  final ScrollController _scrollController = ScrollController();

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
  int ?currentIndex;

void changeValueOfIndex(int value){
  setState(() {
    index=value;

  });
}

  @override
  Widget build(BuildContext context) {
    _scrollController.addListener(() {
      // Calculate the index based on the scroll offset and the item height.
      double itemHeight = 1.2.sw;
      setState(() {
        currentIndex = (_scrollController.offset / itemHeight).ceil();
        print('Current index: $currentIndex');

      });

      // Use the currentIndex as desired.
    });

    return Scaffold(

body: Padding(
  padding:  EdgeInsets.symmetric(horizontal: 1.sw/22,vertical: 1.sh/50),
  child:   SingleChildScrollView(
    physics: const BouncingScrollPhysics(),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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
                    fontSize: 16.sp,
                  ),),
                ),
              ],
            ),
          ), separatorBuilder: (context,index)=> SizedBox(width: 1.sw/9,), itemCount: items.length),
        ),
         SizedBox(height: 1.sh/45,),
        Row(
          children: [
            Expanded(
              child: Container(height: 1.sh/18,decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: const Color(0Xff454D5A),
              ),child:
              Center(
                child: TextFormField(  textAlign: TextAlign.start,
            decoration:  InputDecoration(
                  hintText: "Search Products",

                  contentPadding: EdgeInsets.only(top:  3,left: 10.w),
                  hintStyle: TextStyle(

                    color: Colors.white,
                    fontSize: 15.sp

                  ),
                  suffixIcon: Padding(
                    padding:  EdgeInsets.only(top: 3.h,right: 3.w),
                    child: Icon(Icons.search,size: 1.sh/30,color: Colors.white,),
                  ),
                  border: InputBorder.none,


                ),),
              )),
            ),
            SizedBox(width: 10.w,),
            Container(height: 1.sh/18,width: 1.sw/9,decoration: BoxDecoration(
              color: const Color(0Xff454D5A),

              borderRadius: BorderRadius.circular(10.r),
            ),child:  Icon(Icons.flatware_outlined,size: 1.sh/30,color: Colors.white,),),
          ],
        ),
         SizedBox(height: 1.sh/30,),
SizedBox(
height:1.3.sw,
    child:   ListView.separated(physics: const BouncingScrollPhysics(),controller: _scrollController,shrinkWrap: true,scrollDirection: Axis.horizontal,itemBuilder: (context,index)=>Column(
      children: [
        Container(
          height:index==currentIndex?1.3.sw:1.2.sw,
          width: index==currentIndex?1.sw/1.2:1.sw/1.3,
          // height: index== currentIndex?1000:100,

          decoration: BoxDecoration(
            color: const Color(0Xff454D5A),
            borderRadius: BorderRadius.circular(30.r),

          ),
          child: Padding(
            padding:  EdgeInsets.only(top: 30.h,left: 30.w,right: 30.w,bottom: 10.h),
            child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children:  [
                    Text("Sony",style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                    ),),
                    const Spacer(),
                    Icon(Icons.favorite_border_sharp,size: 1.sw/16,color: Colors.white,),

                  ],
                ),
                 Text("Playstation 5",style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                ),),
                 SizedBox(height: 1.sw/14,),
                Center(child: Image.asset("assets/images/image1.png",height: index==currentIndex? 1.sw/1.5:1.sw/1.7,width: double.infinity,fit: BoxFit.contain,)),
                 SizedBox(height:index==currentIndex? 1.sw/19:1.sw/25),

                Row(
                  children: [
                    SizedBox(
                      width: 1.sw/10,
                      child:   ListView.separated(physics: const NeverScrollableScrollPhysics(),scrollDirection: Axis.vertical,shrinkWrap: true,itemBuilder: (context,index)=>Container(height: 1.sw/10,width:  1.sw/10,decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: colors[index],
                      ),), separatorBuilder:(context,index) => SizedBox(height: 1.sw/30,), itemCount: colors.length),
                    ),
                    SizedBox(width: 1.sw/20,),
                    Expanded(
                      child: Container(height: 1.sh/11,decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: const Color(0Xff707070),

                      ),child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                             Text("\$890.00",style: TextStyle(
                                color: Colors.white,fontWeight: FontWeight.w700,

                                fontSize:16.sp
                            ),),

                            Stack(
                              alignment: Alignment.center,
                              children: [
                                 Text("\$920.00",style: TextStyle(
                                    color: Colors.white,fontWeight: FontWeight.w500,
                                    fontSize:12.sp
                                ),),
                                Container(width: 50,height: 2,color: Colors.white,),
                              ],
                            ),

                          ],
                        ),
                      ),),
                    ),
                  ],
                ),

              ],
            ),
          ),

        ),
      ],
    ), separatorBuilder: (context,index)=>SizedBox(width: 5.w,), itemCount: 5),
),

      ],
    ),
  ),
),
    );
  }
}
