import 'package:flutter/material.dart';

class BubbleCustomGradient extends StatelessWidget {
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
    //Esta propiedad nos permite definir la forma en como se va a mostrar el gradiente
    final rect = new Rect.fromCircle(
      center: Offset(5, 20),
      radius: 120
    );

    //Propiedades del gradiente
    final gradient = new LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color.fromRGBO(244, 167, 135, 1),
        Color.fromRGBO(241, 88, 136, 1),
      ],
      stops: [
        0.5,
        0.9
      ]
    );

    //La propiedad shader nos permite crear el gradiente dentro del CustomPainter
    final paint = new Paint();
    paint.style = PaintingStyle.fill;
    paint.shader = gradient.createShader(rect);

    final path = new Path();
    
    //Dibujar con el path y el lapiz
    path.lineTo(0, size.height*0.25);
    path.quadraticBezierTo(size.width*0.45, size.height*0.22, size.width*0.4, 0);    
    canvas.drawPath(path, paint);

  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }

}