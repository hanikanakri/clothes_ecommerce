

import 'package:flutter/material.dart';


class RPSCustomPainter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    // Layer 1

    Paint paint_fill_0 = Paint()
      ..color = const Color.fromARGB(255, 254, 174, 72)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;


    Path path_0 = Path();
    path_0.moveTo(size.width*0.8102200,size.height*0.0009910);
    path_0.quadraticBezierTo(size.width*0.2020200,size.height*0.0009910,size.width*-0.0007400,size.height*0.0009910);
    path_0.quadraticBezierTo(size.width*-0.0022600,size.height*0.1728588,size.width*-0.0027600,size.height*0.2301420);
    path_0.cubicTo(size.width*0.1785200,size.height*0.2101779,size.width*0.1647600,size.height*0.1143339,size.width*0.2960400,size.height*0.0875412);
    path_0.cubicTo(size.width*0.3897400,size.height*0.0629706,size.width*0.8202000,size.height*0.0385171,size.width*0.8102200,size.height*0.0009910);
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
      ..color = const Color.fromARGB(255, 102, 201, 239)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;


    Path path_0 = Path();
    path_0.moveTo(size.width*0.9988700,size.height*0.4914400);
    path_0.cubicTo(size.width*0.6939400,size.height*0.4585000,size.width*0.6544300,size.height*0.4209000,size.width*0.4788100,size.height*0.3584000);
    path_0.quadraticBezierTo(size.width*0.3038300,size.height*0.2878400,size.width*0.1638000,size.height*0.1241600);
    path_0.quadraticBezierTo(size.width*-0.0076064,size.height*0.0521605,size.width*-0.0048202,size.height*0.0002136);
    path_0.quadraticBezierTo(size.width*0.2472093,size.height*0.0002136,size.width*1.0012714,size.height*-0.0008000);
    path_0.quadraticBezierTo(size.width*0.9988700,size.height*0.1113400,size.width*0.9988700,size.height*0.4914400);
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

class RPSCustomPainter3 extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {



    // Layer 1

    Paint paint_fill_0 = Paint()
      ..color = const Color.fromARGB(255, 79, 84, 96)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;


    Path path_0 = Path();
    path_0.moveTo(size.width*1.0016800,size.height*0.0946700);
    path_0.quadraticBezierTo(size.width*0.9995800,size.height*0.0446700,size.width*1.0008000,size.height*-0.0020800);
    path_0.lineTo(size.width*0.8484000,size.height*-0.0012800);
    path_0.lineTo(size.width*-0.0020000,size.height*0.0006000);
    path_0.lineTo(size.width*-0.0027400,size.height*0.4192100);
    path_0.quadraticBezierTo(size.width*0.1216000,size.height*0.4662000,size.width*0.2994000,size.height*0.4661400);
    path_0.cubicTo(size.width*0.4277100,size.height*0.4633100,size.width*0.5141000,size.height*0.4388200,size.width*0.5520000,size.height*0.3975100);
    path_0.cubicTo(size.width*0.5648400,size.height*0.3842900,size.width*0.5725400,size.height*0.3074800,size.width*0.5746800,size.height*0.2819800);
    path_0.cubicTo(size.width*0.5930500,size.height*0.2172600,size.width*0.6401800,size.height*0.1954700,size.width*0.7812000,size.height*0.1781100);
    path_0.cubicTo(size.width*0.8582700,size.height*0.1621200,size.width*0.8658500,size.height*0.1587600,size.width*0.9117200,size.height*0.1280500);
    path_0.cubicTo(size.width*0.9578100,size.height*0.1051400,size.width*0.9786900,size.height*0.0951800,size.width*1.0016800,size.height*0.0946700);
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
















































