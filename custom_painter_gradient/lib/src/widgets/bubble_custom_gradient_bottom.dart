import 'package:flutter/material.dart';

class BubbleCustomGradientBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderWaveGradientPainter(),
      ),
    );
  }
}

class _HeaderWaveGradientPainter extends CustomPainter{
  final Color color1 = Color.fromRGBO(244, 167, 135, 1);
  final Color color2 = Color.fromRGBO(241, 88, 136, 1);

  @override
  void paint(Canvas canvas, Size size) {

    final rect = new Rect.fromCircle(
      center: Offset(20,100),
      radius: 100
    );

    final gradient = new LinearGradient(
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      colors: [
        color1,
        color2
      ],
      stops: [
        0.5,
        1.0
      ]
    );

    //La propiedad shader nos permite crear el gradiente dentro del CustomPainter
    final paint = new Paint()..shader = gradient.createShader(rect);
    paint.style = PaintingStyle.fill;

    final path = new Path();
    
    //Dibujar con el path y el lapiz
    path.moveTo(size.width*0.75, size.height);
    path.quadraticBezierTo(size.width*0.68, size.height*0.8, size.width, size.height*0.6);    
    path.lineTo(size.width, size.height);
    canvas.drawPath(path, paint);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

}