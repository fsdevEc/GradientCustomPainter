import 'package:flutter/material.dart';

class ImageCircularWidget extends StatelessWidget {
  final String pathImage;
  final double widht;
  final double height;

  ImageCircularWidget({this.pathImage, this.widht, this.height});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widht,
      height: height,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.red,
        boxShadow: [
          BoxShadow(
            color: Colors.black45, 
            spreadRadius: 5, 
            blurRadius: 10
          ),                        
        ],
        image: DecorationImage(
          image: AssetImage(pathImage), 
          fit: BoxFit.fill
        )
      ),            
    );
  }
}