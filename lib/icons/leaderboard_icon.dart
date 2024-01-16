import 'package:flutter/material.dart';

class LeaderboardIcon extends StatelessWidget {
  final double width;
  LeaderboardIcon({this.width = 60});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(
          width,
          (width * 1)
              .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
      painter: LeaderBoardCustomPainter(),
    );
  }
}
//Add this CustomPaint widget to the Widget Tree

//Copy this CustomPainter code to the Bottom of the File
class LeaderBoardCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.6500000, size.height * 0.9500000);
    path_0.lineTo(size.width * 0.3500000, size.height * 0.9500000);
    path_0.lineTo(size.width * 0.3500000, size.height * 0.5300000);
    path_0.cubicTo(
        size.width * 0.3500000,
        size.height * 0.5220440,
        size.width * 0.3531600,
        size.height * 0.5144120,
        size.width * 0.3587860,
        size.height * 0.5087860);
    path_0.cubicTo(
        size.width * 0.3644120,
        size.height * 0.5031600,
        size.width * 0.3720440,
        size.height * 0.5000000,
        size.width * 0.3800000,
        size.height * 0.5000000);
    path_0.lineTo(size.width * 0.6200000, size.height * 0.5000000);
    path_0.cubicTo(
        size.width * 0.6279560,
        size.height * 0.5000000,
        size.width * 0.6355880,
        size.height * 0.5031600,
        size.width * 0.6412140,
        size.height * 0.5087860);
    path_0.cubicTo(
        size.width * 0.6468400,
        size.height * 0.5144120,
        size.width * 0.6500000,
        size.height * 0.5220440,
        size.width * 0.6500000,
        size.height * 0.5300000);
    path_0.lineTo(size.width * 0.6500000, size.height * 0.9500000);
    path_0.lineTo(size.width * 0.6500000, size.height * 0.9500000);
    path_0.close();

    Paint paint_0_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.07500000;
    paint_0_stroke.color = Color(0xff6A5AE0).withOpacity(1.0);
    paint_0_stroke.strokeCap = StrokeCap.round;
    paint_0_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_0, paint_0_stroke);

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.color = Color(0xff000000).withOpacity(0);
    canvas.drawPath(path_0, paint_0_fill);

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.9200000, size.height * 0.9500000);
    path_1.lineTo(size.width * 0.6500000, size.height * 0.9500000);
    path_1.lineTo(size.width * 0.6500000, size.height * 0.8050000);
    path_1.cubicTo(
        size.width * 0.6500000,
        size.height * 0.7970440,
        size.width * 0.6531600,
        size.height * 0.7894120,
        size.width * 0.6587860,
        size.height * 0.7837860);
    path_1.cubicTo(
        size.width * 0.6644120,
        size.height * 0.7781600,
        size.width * 0.6720440,
        size.height * 0.7750000,
        size.width * 0.6800000,
        size.height * 0.7750000);
    path_1.lineTo(size.width * 0.9200000, size.height * 0.7750000);
    path_1.cubicTo(
        size.width * 0.9279560,
        size.height * 0.7750000,
        size.width * 0.9355880,
        size.height * 0.7781600,
        size.width * 0.9412140,
        size.height * 0.7837860);
    path_1.cubicTo(
        size.width * 0.9468400,
        size.height * 0.7894120,
        size.width * 0.9500000,
        size.height * 0.7970440,
        size.width * 0.9500000,
        size.height * 0.8050000);
    path_1.lineTo(size.width * 0.9500000, size.height * 0.9200000);
    path_1.cubicTo(
        size.width * 0.9500000,
        size.height * 0.9279560,
        size.width * 0.9468400,
        size.height * 0.9355880,
        size.width * 0.9412140,
        size.height * 0.9412140);
    path_1.cubicTo(
        size.width * 0.9355880,
        size.height * 0.9468400,
        size.width * 0.9279560,
        size.height * 0.9500000,
        size.width * 0.9200000,
        size.height * 0.9500000);
    path_1.lineTo(size.width * 0.9200000, size.height * 0.9500000);
    path_1.close();

    Paint paint_1_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.07500000;
    paint_1_stroke.color = Color(0xff6A5AE0).withOpacity(1.0);
    paint_1_stroke.strokeCap = StrokeCap.round;
    paint_1_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_1, paint_1_stroke);

    Paint paint_1_fill = Paint()..style = PaintingStyle.fill;
    paint_1_fill.color = Color(0xff000000).withOpacity(0);
    canvas.drawPath(path_1, paint_1_fill);

    Path path_2 = Path();
    path_2.moveTo(size.width * 0.3500000, size.height * 0.9500000);
    path_2.lineTo(size.width * 0.3500000, size.height * 0.7050000);
    path_2.cubicTo(
        size.width * 0.3500000,
        size.height * 0.6970440,
        size.width * 0.3468400,
        size.height * 0.6894120,
        size.width * 0.3412140,
        size.height * 0.6837860);
    path_2.cubicTo(
        size.width * 0.3355880,
        size.height * 0.6781600,
        size.width * 0.3279560,
        size.height * 0.6750000,
        size.width * 0.3200000,
        size.height * 0.6750000);
    path_2.lineTo(size.width * 0.08000000, size.height * 0.6750000);
    path_2.cubicTo(
        size.width * 0.07204360,
        size.height * 0.6750000,
        size.width * 0.06441280,
        size.height * 0.6781600,
        size.width * 0.05878680,
        size.height * 0.6837860);
    path_2.cubicTo(
        size.width * 0.05316080,
        size.height * 0.6894120,
        size.width * 0.05000000,
        size.height * 0.6970440,
        size.width * 0.05000000,
        size.height * 0.7050000);
    path_2.lineTo(size.width * 0.05000000, size.height * 0.9200000);
    path_2.cubicTo(
        size.width * 0.05000000,
        size.height * 0.9279560,
        size.width * 0.05316080,
        size.height * 0.9355880,
        size.width * 0.05878680,
        size.height * 0.9412140);
    path_2.cubicTo(
        size.width * 0.06441280,
        size.height * 0.9468400,
        size.width * 0.07204360,
        size.height * 0.9500000,
        size.width * 0.08000000,
        size.height * 0.9500000);
    path_2.lineTo(size.width * 0.3500000, size.height * 0.9500000);
    path_2.lineTo(size.width * 0.3500000, size.height * 0.9500000);
    path_2.close();

    Paint paint_2_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.07500000;
    paint_2_stroke.color = Color(0xff6A5AE0).withOpacity(1.0);
    paint_2_stroke.strokeCap = StrokeCap.round;
    paint_2_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_2, paint_2_stroke);

    Paint paint_2_fill = Paint()..style = PaintingStyle.fill;
    paint_2_fill.color = Color(0xff000000).withOpacity(0);
    canvas.drawPath(path_2, paint_2_fill);

    Path path_3 = Path();
    path_3.moveTo(size.width * 0.4403000, size.height * 0.1556410);
    path_3.lineTo(size.width * 0.4857500, size.height * 0.05929100);
    path_3.cubicTo(
        size.width * 0.4869760,
        size.height * 0.05653660,
        size.width * 0.4889760,
        size.height * 0.05419700,
        size.width * 0.4915040,
        size.height * 0.05255500);
    path_3.cubicTo(
        size.width * 0.4940340,
        size.height * 0.05091300,
        size.width * 0.4969840,
        size.height * 0.05003900,
        size.width * 0.5000000,
        size.height * 0.05003900);
    path_3.cubicTo(
        size.width * 0.5030160,
        size.height * 0.05003900,
        size.width * 0.5059660,
        size.height * 0.05091300,
        size.width * 0.5084940,
        size.height * 0.05255500);
    path_3.cubicTo(
        size.width * 0.5110240,
        size.height * 0.05419700,
        size.width * 0.5130220,
        size.height * 0.05653660,
        size.width * 0.5142500,
        size.height * 0.05929100);
    path_3.lineTo(size.width * 0.5597500, size.height * 0.1556410);
    path_3.lineTo(size.width * 0.6613500, size.height * 0.1711910);
    path_3.cubicTo(
        size.width * 0.6744000,
        size.height * 0.1731910,
        size.width * 0.6796000,
        size.height * 0.1899910,
        size.width * 0.6701500,
        size.height * 0.1995910);
    path_3.lineTo(size.width * 0.5966500, size.height * 0.2745920);
    path_3.lineTo(size.width * 0.6140000, size.height * 0.3804920);
    path_3.cubicTo(
        size.width * 0.6162000,
        size.height * 0.3940920,
        size.width * 0.6026000,
        size.height * 0.4044920,
        size.width * 0.5909000,
        size.height * 0.3980420);
    path_3.lineTo(size.width * 0.5000000, size.height * 0.3480420);
    path_3.lineTo(size.width * 0.4091000, size.height * 0.3980420);
    path_3.cubicTo(
        size.width * 0.3974500,
        size.height * 0.4044420,
        size.width * 0.3838000,
        size.height * 0.3940920,
        size.width * 0.3860000,
        size.height * 0.3804920);
    path_3.lineTo(size.width * 0.4033500, size.height * 0.2745920);
    path_3.lineTo(size.width * 0.3298500, size.height * 0.1995910);
    path_3.cubicTo(
        size.width * 0.3203500,
        size.height * 0.1899910,
        size.width * 0.3256000,
        size.height * 0.1731910,
        size.width * 0.3386000,
        size.height * 0.1711910);
    path_3.lineTo(size.width * 0.4403000, size.height * 0.1556910);
    path_3.lineTo(size.width * 0.4403000, size.height * 0.1556410);
    path_3.close();

    Paint paint_3_stroke = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.07500000;
    paint_3_stroke.color = Color(0xff6A5AE0).withOpacity(1.0);
    paint_3_stroke.strokeCap = StrokeCap.round;
    paint_3_stroke.strokeJoin = StrokeJoin.round;
    canvas.drawPath(path_3, paint_3_stroke);

    Paint paint_3_fill = Paint()..style = PaintingStyle.fill;
    paint_3_fill.color = Color(0xff000000).withOpacity(0);
    canvas.drawPath(path_3, paint_3_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
