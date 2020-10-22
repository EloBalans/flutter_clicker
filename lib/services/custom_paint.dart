import 'package:flutter/material.dart';

class FaceOutlinePainter extends CustomPainter {
  
  void paint(Canvas canvas,Size size) {
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4.0
      ..color = Colors.black;
      canvas.drawLine(
        Offset(125.0, 365.0), Offset(175.0, 410.0), paint
      );
      canvas.drawLine(
        Offset(235.0, 365.0), Offset(195.0, 400.0), paint
      );
       canvas.drawLine(
        Offset(252.0, 305.0), Offset(252.0, 330.0), paint
      );
      canvas.drawLine(
        Offset(108.0, 308.0), Offset(108.0, 330.0), paint
      );
      canvas.drawLine(
        Offset(108.0, 308.0), Offset(108.0, 330.0), paint
      );
       canvas.drawLine(
        Offset(47.0, 300.0), Offset(88.0, 334.0), paint
      );
       canvas.drawLine(
        Offset(37.0, 220.0), Offset(37.0, 270.0), paint
      );
       canvas.drawLine(
        Offset(160.0, 235.0), Offset(110.0, 280.0), paint
      );
      canvas.drawLine(
        Offset(200.0, 238.0), Offset(240.0, 280.0), paint
      );
       canvas.drawLine(
        Offset(310.0, 235.0), Offset(265.0, 280.0), paint
      );
      canvas.drawLine(
        Offset(325.0, 180.0), Offset(325.0, 210.0), paint
      );
      canvas.drawLine(
        Offset(325.0, 115.0), Offset(325.0, 145.0), paint
      );
       canvas.drawLine(
        Offset(163.0, 208.0), Offset(125.0, 170.0), paint
      );
       canvas.drawLine(
        Offset(55.0, 208.0), Offset(90.0, 175.0), paint
      );
        canvas.drawLine(
        Offset(163.0, 107.0), Offset(125.0, 147.0), paint
      );
        canvas.drawLine(
        Offset(40.0, 100.0), Offset(90.0, 150.0), paint
      );
         canvas.drawLine(
        Offset(55.0, 78.0), Offset(160.0, 40.0), paint
      );
      canvas.drawLine(
        Offset(305, 78.0), Offset(200.0, 40.0), paint
      );
       canvas.drawLine(
        Offset(180.0, 50.0), Offset(180.0, 75.0), paint
      );
     
  }


  
  
  bool shouldRepaint(FaceOutlinePainter oldDelegate) => false;
}