import 'package:flutter/material.dart';
class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int index =1;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        GestureDetector(
          onTap: (){
            setState(() {
              index=0;
            });
          },
          child: Container(
            height: index == 0? 70 :50,width: index ==0?140:100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.white,width: 1.5),
                color: const Color(0xffebebeb),
            boxShadow:  index==0? const [
                BoxShadow(
                  color: Color(0xffc3c3c3),
                  spreadRadius: 5,
                  blurRadius: 20,
                  offset: Offset(10, 10), // changes position of shadow
                ),
              ]:[],
            ),
            alignment: Alignment.center,
            child:  Text("NEW",style: TextStyle(fontSize:index==0?20: 16,fontWeight: FontWeight.bold,color:index==0?Theme.of(context).primaryColor: const Color(0xff565656)),),
          ),
        ),
        GestureDetector(
          onTap: (){
            setState(() {
              index=1;
            });
          },

          child: Container(
            margin:const  EdgeInsets.symmetric(horizontal: 10),
            height: index == 1? 70 :50,width: index ==1?140:110,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.white,width: 1.5),
              color: const Color(0xffebebeb),
              boxShadow:  index==1? const [
                BoxShadow(
                  color: Color(0xffc3c3c3),
                  spreadRadius: 5,
                  blurRadius: 20,
                  offset: Offset(10, 10), // changes position of shadow
                ),
              ]:[],

            ),
            alignment: Alignment.center,
            child:  Text("SEASONAL",style: TextStyle(fontSize:index==1?20: 16,fontWeight: FontWeight.bold,color:index==1?Theme.of(context).primaryColor: const Color(0xff565656)),),


          ),
        ),
        GestureDetector(
          onTap: (){
            setState(() {
              index=2;
            });
          },
          child: Container(
            height: index == 2? 70 :50,width: index ==2?140:100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.white,width: 1.5),
                color: const Color(0xffebebeb),
    boxShadow:  index==2? const [
    BoxShadow(
    color: Color(0xffc3c3c3),
    spreadRadius: 5,
    blurRadius: 20,
    offset: Offset(10, 10), // changes position of shadow
    ),
    ]:[],
            ),
            alignment: Alignment.center,
            child:  Text("POPULAR",style: TextStyle(fontSize:index==2?20: 16,fontWeight: FontWeight.bold,color:index==2?Theme.of(context).primaryColor: const Color(0xff565656)),),

          ),
        )
      ],
    );
  }
}
