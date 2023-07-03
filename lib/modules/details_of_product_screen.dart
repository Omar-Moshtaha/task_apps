import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DetailsOfProductScreen extends StatefulWidget {
  const DetailsOfProductScreen({Key? key}) : super(key: key);

  @override
  State<DetailsOfProductScreen> createState() => _DetailsOfProductScreenState();
}

class _DetailsOfProductScreenState extends State<DetailsOfProductScreen> {
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
        body:SafeArea(
          child: Container(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                SingleChildScrollView(
                  physics: const NeverScrollableScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
Container(height: 200,width: double.infinity,color:  const Color(0xFF333742),child: Padding(
  padding: const EdgeInsets.only(top: 10,left: 20),
  child:   Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [

      Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Row(
          children: const [
            Icon(Icons.arrow_back_ios,color: Colors.white,size: 17,),
            SizedBox(width: 10,),
            Text("PS5",style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.w400),),
            Spacer(),
            Icon(Icons.share,color: Colors.white,size: 17,)

          ],
        ),
      ),
      const SizedBox(height: 30,),

      const Text("PULSE 3D \nWireless Headset",style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w900),),

    ],
  ),
),),
                    Container(
                      height: MediaQuery.of(context).size.height,
                      decoration: const BoxDecoration(

                        color: Color(0xFF454D5A),

                        borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 50),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
                          Row(
                            children: [
                              const Opacity(opacity: 0.55,child: Icon(Icons.remove_red_eye,color: Colors.white,)),
                              Spacer(),
                              Container(height: 29,width: 53,decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: const Color(0xFF343743)
                              ),child:  Center(child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,

                                children: [
                                  Text("4.6",style: TextStyle(
                                      color:Colors.white
                                  ),),
                                  Icon(Icons.star_rounded,color: Colors.yellow,size: 18,),
                                ],
                              )),),
                            ],
                          ),
                          const SizedBox(height: 10,),
                          const Opacity(opacity: 0.55,child: Text("1.5 k",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w400),)),
                          const SizedBox(height: 10,),

                          const Opacity(opacity: 0.55,child: Icon(Icons.favorite,color: Colors.white,)),

                          const SizedBox(height: 10,),
                          const Opacity(opacity: 0.55,child: Text("212",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w400),)),
                          const SizedBox(height: 10,),
                          const Opacity(opacity: 0.55,child: Icon(Icons.lock,color: Colors.white,)),

                          const SizedBox(height: 10,),
                          const Opacity(opacity: 0.55,child: Text("120",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w400),)),
             const SizedBox(height: 60,),
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              const Text("\$180.95",style: TextStyle(
                                  color: Colors.white,fontWeight: FontWeight.w500,
                                  fontSize:12
                              ),),
                              Container(width: 50,height: 2,color: Colors.white,),
                            ],
                          ),
                          const SizedBox(height: 5,),

                          Row(
                            children: [
                              const Text("\$179.95",style: TextStyle(
                                  color: Colors.white,fontWeight: FontWeight.w900,
                                  fontSize:16
                              ),),
                              const Spacer(),
                              Container(height: 29,width: 53,decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xFF343743)
                              ),child: const Center(child: Text("24%",style: TextStyle(
                                color: Color(0Xff6AED8A)
                              ),)),),
                            ],
                          ),
                          const SizedBox(height: 15,),

                          Row(children: const [
                            Opacity(opacity: 0.55,child: Icon(Icons.bus_alert,color: Colors.white,)),
                            SizedBox(width:10,),

                            Opacity(opacity: 0.55,child: Text("Prices ind. VAT.",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w400),)),
                            SizedBox(width:10,),

                            Opacity(opacity: 0.55,child: Text("plus shipping costs",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w400),)),

                          ],),
                          const Opacity(
                            opacity: 0.55,
                            child:   Text("Lorem ipsum dolor sit amet ,consectetuer adipiscing elit\nAenean commodo ligula eget dolor, Aenean massa.",style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,

                            ),),
                          ),
                          const SizedBox(height: 20,),

                          const Text("Choose Color",style: TextStyle(
                              color: Colors.white,fontWeight: FontWeight.w900,
                              fontSize:16
                          ),),
                          const SizedBox(height: 10,),
                          Container(
                            height: 30,
                            child:   ListView.separated(scrollDirection: Axis.horizontal,shrinkWrap: true,itemBuilder: (context,index)=>Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.white),

                                  color:color[index]
                              ),
                            ), separatorBuilder: (context,index)=>const SizedBox(width: 10,), itemCount: 3),
                          ),
                        ],),
                      ),
                    ),

                    const SizedBox(height:  10,)


                    ],
                  ),
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(height: 150,),

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
                    const SizedBox(height: 20,),

                    Center(
                      child:   AnimatedSmoothIndicator(effect: ExpandingDotsEffect(
                          activeDotColor: Colors.white,dotHeight: 5,dotWidth:12,
                          dotColor: Colors.grey.withOpacity(0.55)
                      ),activeIndex: index, count: image.length),
                    ),

                  ],
                ),

              ],
            ),
          ),
        ),
        bottomSheet:
        Container(
          height: 100,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xFF333742),

            borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20),),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [

                Container(height: 50,width: 50,decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFF454D5A)
                ),child: const Icon(Icons.favorite_outline_rounded,color: Colors.white,),),
                const SizedBox(width: 10,),
                Expanded(
                  child: Container(height: 50,width: 50,decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFF454D5A)
                  ),child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.card_giftcard,color: Colors.white,),
                      SizedBox(width: 10,),
                      Text("ADD TO CART",style: TextStyle(
                        color: Colors.white,
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

