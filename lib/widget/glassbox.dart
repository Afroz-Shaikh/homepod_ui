import 'dart:ui';

import 'package:flutter/material.dart';

class GlassBox extends StatelessWidget {
  final  double height;
  final  double width;
  final child1;

  const GlassBox({
    required this.height, 
     required this.width, 
      required this.child1}) ;



  

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
        height: height,
        width: width,
        child: Stack(
          children: [
            //BLur
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Container(),
            ),
    
            //gradient
            Container(
              decoration: BoxDecoration(
                // border: Border.all(color: Colors.white.withOpacity(0.2)),
                borderRadius: BorderRadius.circular(15),
                gradient: LinearGradient(colors: [
                  Colors.white.withOpacity(0.1),
                  Colors.white.withOpacity(0.2),

                ],)
              ),
            ),
            child1,

    
            //chld
          ],
          //BLur
    
          //gradient
    
          //chld
          
        ),
      ),
    );
  }
}
