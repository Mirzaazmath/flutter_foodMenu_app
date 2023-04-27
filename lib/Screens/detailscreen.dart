import 'package:flutter/material.dart'hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:foodmenu/Data/menudata.dart';
import 'package:foodmenu/Screens/starclipper.dart';
class DetailsSCreen extends StatelessWidget {
  Item item;
  int index;
  DetailsSCreen(this.item,this.index);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 70,

        elevation: 0,
        backgroundColor: Colors.transparent,
        leading:  InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Container(
            margin: const EdgeInsets.only(left: 20),

            height: 30,
            width: 40,
            decoration: BoxDecoration(

              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.white),
              color: const Color(0xffefe9e9),
              boxShadow: const [

                BoxShadow(
                  color: Color(0xffced0cd),

                  blurRadius: 15,
                  offset: Offset(6, 10), // changes position of shadow
                ),
              ],
            ),
            child: Icon(Icons.arrow_back,color: Theme.of(context).primaryColor,),
          ),
        ),
        actions: [
          InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
              margin: const EdgeInsets.only(right: 20),

              height: 30,
              width: 50,
              decoration: BoxDecoration(

                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.white),
                color: const Color(0xffefe9e9),
                boxShadow: const [

                  BoxShadow(
                    color: Color(0xffced0cd),

                    blurRadius: 15,
                    offset: Offset(6, 10), // changes position of shadow
                  ),
                ],
              ),
              child: Icon(Icons.more_vert,color: Theme.of(context).primaryColor,),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              flex: 6,
                child: Stack(
                  children: [
                    SizedBox(

                      child: Text(item.name,style: const TextStyle(fontWeight: FontWeight.w900,fontSize: 70,color: Color(0xff212933)),textAlign: TextAlign.center,),
                    ),
                    Center(
                      child:  Hero(
                        tag: "$index",
                        child: Container(
                            height: 250,
                            width: 250,
                            decoration:const   BoxDecoration(


                              shape: BoxShape.circle,

                            ),

                            child: SizedBox(
                              height: 50,
                              width: 50,
                              child:  FittedBox(child: Image.asset(item.image)),

                            )


                        ),
                      ),
                    )
                  ],
                )),
            Expanded(
              flex: 5,
                child: Container(
                  padding:const  EdgeInsets.all(15),
                  width: double.infinity,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                             Row(
                                children:const [
                                  Icon(Icons.outdoor_grill,color: Color(0xffc3c3c3) ,),
                                  SizedBox(width: 10,),
                                  Text("25 M",style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xffc3c3c3),fontSize: 17),),


                                ]



                            ),


                             Row(
                                children:const [
                                  Icon(Icons.local_fire_department,color: Color(0xffc3c3c3) ,),
                                  SizedBox(width: 10,),
                                  Text("200 cal",style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xffc3c3c3),fontSize: 17),),


                                ]



                            ),


                          Row(
                                children:const [
                                  Icon(Icons.scale,color: Color(0xffc3c3c3) ,),
                                  SizedBox(width: 10,),
                                  Text("240 g",style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xffc3c3c3),fontSize: 17),),


                                ]




                          ),

                        ],
                      ),
                      Divider(color: Theme.of(context).primaryColor,thickness: 2,),
                      const SizedBox(height: 10,),
                    const   Text("Sweet is the perfect end to any meal,the perfect addition to  tea and coffee.an incredible pleasure!",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Color(0xffc3c3c3)),),
                      const SizedBox(height: 10,),
                     const  Spacer(),
                      Row(
                        children: [
                          for(int i=0;i<5;i++)...[ ClipPath(
                            clipper: StarClipper(),
                            child: Container(
                              color:const  Color(0xfff2cf25),
                              width: 20,
                              height: 20,
                            ),
                          )],
                       const    SizedBox(width: 10,),
                         const  Text("5.0",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 17,color: Color(0xff7e7e7e)),)



                        ],
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [

                          Text("\$12",

                            style: TextStyle(fontSize: 26,fontWeight: FontWeight.w900,color: Color(0xff9c9c9c),),),
                          SizedBox(width: 20,)
                        ],
                      ),
                      const    SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(right: 15),
                                height: 25,
                                width: 25,
                                color:const  Color(0xffebebeb),
                                child: Icon(Icons.remove,color: Theme.of(context).primaryColor,),
                              ),
                              const  Text("1",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 27,color: Color(0xff7e7e7e)),),
                              Container(
                                margin: const EdgeInsets.only(left: 15),
                                height: 25,
                                width: 25,
                                color:const  Color(0xffebebeb),
                                child: Icon(Icons.add,color: Theme.of(context).primaryColor,),
                              )
                            ],
                          ),
                          Container(
                            height: 60,
                            width: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.white,width: 2),
                            color:const  Color(0xffebebeb),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                offset:const Offset(10,10),
                                blurRadius: 20,


                              )
                            ]
                          ),
                            alignment: Alignment.center,
                            child: Icon(Icons.shopping_cart,color: Theme.of(context).primaryColor,),
                          )
                        ],
                      )
                    ],

                  ),

                )),
          ],
        ),
      ),
    );
  }
}
