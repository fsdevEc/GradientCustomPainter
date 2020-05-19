import 'package:custom_painter_gradient/src/widgets/bubble_custom_gradient.dart';
import 'package:custom_painter_gradient/src/widgets/bubble_custom_gradient_bottom.dart';
import 'package:custom_painter_gradient/src/widgets/image_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(
          children: <Widget>[
            BubbleCustomGradient(),
            BubbleCustomGradientBottom(),
            SafeArea(
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[                  
                    SizedBox(height: 160,),
                    ImageCircularWidget(height: 200, widht: 200, pathImage: 'assets/img/gorillaz.jpg',),
                    SizedBox(height: 20,),
                    Text('Gorillaz', style: TextStyle(fontSize: 35, color: Color.fromRGBO(241, 88, 136, 1), fontWeight: FontWeight.bold),),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 20),
                      child: Text('Minim incididunt commodo quis deserunt qui nulla commodo irure. Amet exercitation id in eu eu exercitation cupidatat ex veniam ullamco.', style: TextStyle(fontSize: 15), textAlign: TextAlign.center,),
                    ),
                  ],
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}