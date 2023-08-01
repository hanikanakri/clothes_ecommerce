import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    // Layer 1

    Paint paint_fill_0 = Paint()
      ..color = const Color.fromARGB(255, 81, 86, 96)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;


    Path path_0 = Path();
    path_0.moveTo(size.width*1.0010000,0);
    path_0.lineTo(size.width*1.0022700,size.height*0.2679279);
    path_0.quadraticBezierTo(size.width*0.9233900,size.height*0.3675148,size.width*0.5038000,size.height*0.3990820);
    path_0.quadraticBezierTo(size.width*0.1814600,size.height*0.4211672,size.width*-0.0001300,size.height*0.5910820);
    path_0.lineTo(0,size.height*0.0006557);
    path_0.lineTo(size.width*1.0010000,0);
    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);


    // Layer 1

    Paint paint_stroke_0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;



    canvas.drawPath(path_0, paint_stroke_0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}


class RPSCustomPainter1 extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    // Layer 1

    Paint paint_fill_0 = Paint()
      ..color = const Color.fromARGB(255, 105, 203, 241)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;


    Path path_0 = Path();
    path_0.moveTo(size.width*1.0038000,0);
    path_0.quadraticBezierTo(size.width*1.0000500,size.height*0.4970500,size.width*1.0004000,size.height*0.6478000);
    path_0.cubicTo(size.width*0.9311000,size.height*0.8311500,size.width*0.5749000,size.height*0.7802500,size.width*0.5248000,size.height*1.0004000);
    path_0.quadraticBezierTo(size.width*0.3995000,size.height*1.0006000,size.width*-0.0020000,size.height*0.9980000);
    path_0.lineTo(size.width*-0.0060000,size.height*-0.0066000);
    path_0.lineTo(size.width*1.0038000,0);
    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);


    // Layer 1

    Paint paint_stroke_0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;



    canvas.drawPath(path_0, paint_stroke_0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}






