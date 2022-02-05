import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:homepod/widget/glassbox.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
            height: MediaQuery.of(context).size.height,
            // print(height);
            width: MediaQuery.of(context).size.width,
            child: Stack(
              // fit: BoxFit.cover,
              children: [
                Container(
    height: MediaQuery.of(context).size.height,
    width: MediaQuery.of(context).size.width,
    // color: Colors.amber,
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        
        
        // Row(
        // children: [
       
        // )
         InkWell(
           onTap: (){
             Navigator.pop(context);
           },
           child: Icon(Icons.navigate_before,color: Colors.white,size: 55,)),
         SizedBox(height: 25,),
        // CircleAvatar(
          
        //   child: Image.network('https://avatars.githubusercontent.com/u/50929682?v=4',fit: BoxFit.fill,),
        //   radius: 10,
        //   ),
        // Image.asset(
        //     'asset/afroz.png',
        //     fit: BoxFit.cover,
           
        // ),
        Text('Hi, Afroz ',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
        Text('Today 25 June 2020',style: TextStyle(color: Colors.white,fontSize: 15),),
        SizedBox(height: 30,),
        // ],
        Row(
          children: [
            GlassBox(height: 370, width: 170, child1: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Home Temperature ',style: TextStyle(color: Colors.grey,fontSize: 25,fontWeight: FontWeight.bold),),
                ),
                SizedBox(height: 50,),
                Text('102 F',style: TextStyle(color: Colors.white,fontSize: 65,fontWeight: FontWeight.bold),)
              ],),
            )),
            SizedBox(width: 20,),
            GlassBox(height: 370, width: 170, child1: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Home Humidity ',style: TextStyle(color: Colors.grey,fontSize: 25,fontWeight: FontWeight.bold),),
                ),
                SizedBox(height: 45,),
                Text('40%',style: TextStyle(color: Colors.white,fontSize: 65,fontWeight: FontWeight.bold),)
              ],),
            ))
          ],
        ),
        SizedBox(height:50),
        GlassBox(height: 180, width: 350, child1: Container(

child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 60),
                  child: Text('Electricity Usage ',style: TextStyle(color: Colors.grey,fontSize: 25,fontWeight: FontWeight.bold),),
                ),
                SizedBox(height: 15,),
                Text('70%',style: TextStyle(color: Colors.white,fontSize: 65,fontWeight: FontWeight.bold),)
              ],),

        ))
      ],
      
      
      ),
    ),
                ),
    
                ColorFiltered(
      colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.6), BlendMode.dstATop),
      child: Image.asset('assets/back.png',fit: BoxFit.cover,),
    ) ,
    Align(
                  alignment: Alignment(-1, 0),
                  child: Image.asset(
                    'assets/blue.png',
                    filterQuality: FilterQuality.low,
                  ),
                ),
                Align(
                  alignment: Alignment(1, -1),
                  child: Image.asset('assets/green.png'),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Image.asset(
                    'assets/pink.png',
                  ),
                )
            
    
              ],
            ),),
      ),
    );
  }
}