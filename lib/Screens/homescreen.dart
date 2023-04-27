import 'package:flutter/material.dart'hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:collection/collection.dart';

import '../Data/menudata.dart';
import 'detailscreen.dart';
import 'navbar.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor:const  Color(0xffffffff),
        title: Row(
          children: [
            Expanded(
              child: ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: SizedBox(
                    height: 45,
                    width: 45,

                    child: Image.asset("assets/profile.jpeg",fit: BoxFit.fill,),
                  ),
                ),
                title: const Text("Hi Sergey",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
                subtitle:const  Text("All the most delicious for you",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: Color(0xff9b9b9b)),),
              ),
            ),
            Container(

              height: 40,
              width: 40,
              decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.white),
                  color: const Color(0xffefe9e9),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xffe0dfdf),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(18, 2), // changes position of shadow
                  ),
                ],
              ),
              child: Icon(Icons.menu,color: Theme.of(context).primaryColor,),
            ),
          ],
        ),

        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(20),
          child: Container(
            margin:const  EdgeInsets.only(bottom: 2),
            height: 6,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          physics:const  BouncingScrollPhysics(),
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           const  SizedBox(height: 20,),
            NavBar(),
          const   SizedBox(height: 30,),
            GridView.count(
              shrinkWrap: true,
              primary: false,

              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              childAspectRatio:1/1.5,
              crossAxisCount: 2,
              children: menuItemsList.mapIndexed((index,element)=>
                 GestureDetector(
                   onTap: (){
                     Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailsSCreen(element,index)));
                   },
                   child:  Container(
                     padding:const  EdgeInsets.all(10),
                     height: 250,
                     width: 200,
                     color: index==0||index==3? Colors.white:const Color(0xfff4f4f4),
                     child: Column(
                       children: [
                         Row(mainAxisAlignment: MainAxisAlignment.end,
                           children: [
                             Icon(Icons.favorite_border,size: 27,color: Theme.of(context).primaryColor,),

                           ],
                         ),
                         Stack(
                           children: [
                             Container(
                               height: 150,
                               width: 150,
                               decoration: const BoxDecoration(
                                 color: Colors.white,

                                 shape: BoxShape.circle,
                                 boxShadow:  [
                                   BoxShadow(
                                     color:Colors.white,
                                     // spreadRadius: 5,
                                     blurRadius: 30,
                                     offset: Offset(-28, -28),

                                   ),
                                   BoxShadow(
                                     color: Color(0xffc3c3c3),
                                     // spreadRadius: 5,
                                     blurRadius: 30,
                                     offset: Offset(18, 18),

                                   ),
                                 ],
                               ),
                             ),



                                Container(
                                 height: 150,
                                 width: 150,
                                 decoration:  BoxDecoration(
                                   color:const  Color(0xfff4f6f3),

                                   shape: BoxShape.circle,
                                   border: Border.all(color: Colors.white),
                                   boxShadow:  [
                                     BoxShadow(
                                         color: Colors.grey.withOpacity(0.3),
                                         spreadRadius: 5,
                                         blurRadius: 9,
                                         offset: const Offset(-15, -15),
                                         inset: true// changes position of shadow
                                     ),
                                     const BoxShadow(
                                         color: Color(0xffe5e2db),
                                         spreadRadius: 10,
                                         blurRadius: 10,
                                         offset: Offset(15, 15),
                                         inset: true// changes position of shadow
                                     ),
                                   ],
                                 ),

                                   child: SizedBox(
                                     height: 50,
                                     width: 50,
                                     child:  FittedBox(child: Hero(
                                         tag: "$index",
                                         child: Image.asset(element.image,))),

                                 )



                             ),

                    ],
                         ),
                         const Spacer(),
                           Text(element.name,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Color(0xff858585)),textAlign: TextAlign.center,),
                         const Spacer(),
                       ],
                     ),
                   ),
                 )


              ).toList(),




            ),


          ],
        ),
      ),

    );
  }
}
