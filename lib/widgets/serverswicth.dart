import 'package:flutter/material.dart';

class CrescentMoonShape extends ShapeBorder {
  @override
  EdgeInsetsGeometry get dimensions => EdgeInsets.all(1.0);

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) {
    return getOuterPath(rect, textDirection: textDirection);
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    final path = Path();
    path.addOval(rect);

    // Calculate the radius and center of the circle to be cut out
    final double cutoutRadius = rect.width / 2 * 2 / 3; // 2/3 of the radius
    final Offset cutoutCenter =
        Offset(rect.center.dx + cutoutRadius / 2, rect.center.dy);

    path.addOval(Rect.fromCircle(center: cutoutCenter, radius: cutoutRadius));
    return path;
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {
    final paint = Paint()..color = Color(0xFFFF5C00);
    canvas.drawCircle(rect.center, rect.width / 2, paint);

    // tambal shape untuk potongan bulan sabit
    final cutPaint = Paint()..color = Color.fromARGB(255, 60, 20, 7);
    final double cutoutRadius = rect.width / 2 * 3 / 4; // 3/4 untuk bulan sabit
    final Offset cutoutCenter =
        Offset(rect.center.dx + cutoutRadius / 2, rect.center.dy);
    canvas.drawOval(
        Rect.fromCircle(center: cutoutCenter, radius: cutoutRadius), cutPaint);
  }

  @override
  ShapeBorder scale(double t) {
    return CrescentMoonShape();
  }
}

class ServerSwitchWidget extends StatefulWidget {
  @override
  _ServerSwitchWidgetState createState() => _ServerSwitchWidgetState();
}

class _ServerSwitchWidgetState extends State<ServerSwitchWidget> {
  bool isServerOn = true;

  void toggleServer() {
    setState(() {
      isServerOn = !isServerOn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggleServer,
      child: Container(
        width: 302,
        height: 46,
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: isServerOn ? Color(0x19FF5C00) : Color(0x19F2C94C),
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 2,
              color: isServerOn ? Color(0x33FF5C00) : Color(0xFFF2C94C),
            ),
            borderRadius: BorderRadius.circular(1998),
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              left: isServerOn ? 240 : 0,
              top: -2,
              child: Container(
                width: 48,
                height: 48,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 8,
                      top: 8,
                      child: Container(
                        width: 32,
                        height: 32,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(),
                        child: Stack(
                          children: [
                            Positioned(
                              left: -4,
                              top: -4,
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(),
                              ),
                            ),
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 32,
                                height: 32,
                                decoration: ShapeDecoration(
                                  color: isServerOn
                                      ? Color(0xFFFF5C00)
                                      : Color(0xFFF2C94C),
                                  shape: isServerOn
                                      ? CrescentMoonShape()
                                      : OvalBorder(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: isServerOn ? 9.86 : 40,
                      top: isServerOn ? 9.86 : 36,
                      child: Opacity(
                        opacity: 0,
                        child: Container(
                          width: 28.28,
                          height: 28.28,
                          child: Stack(
                            children: [
                              // Additional elements if needed
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: isServerOn ? 4 : 0,
                      top: isServerOn ? 24 : 0,
                      child: Opacity(
                        opacity: 0,
                        child: Transform(
                          transform: Matrix4.identity()
                            ..translate(0.0, 0.0)
                            ..rotateZ(-0.79),
                          child: Container(
                            width: 28.28,
                            height: 28.28,
                            child: Stack(
                              children: [
                                // Additional elements if needed
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    if (isServerOn)
                      Positioned(
                        left: 40,
                        top: 36,
                        child: Container(
                          width: 4,
                          height: 4,
                          decoration: ShapeDecoration(
                            color: Color(0xFFFF5C00),
                            shape: StarBorder(
                              points: 4,
                              innerRadiusRatio: 0.38,
                              pointRounding: 0,
                              valleyRounding: 0,
                              rotation: 0,
                              squash: 0,
                            ),
                          ),
                        ),
                      ),
                    if (isServerOn)
                      Positioned(
                        left: 22,
                        top: 14,
                        child: Container(
                          width: 8,
                          height: 8,
                          decoration: ShapeDecoration(
                            color: Color(0xFFFF5C00),
                            shape: StarBorder(
                              points: 4,
                              innerRadiusRatio: 0.38,
                              pointRounding: 0,
                              valleyRounding: 0,
                              rotation: 0,
                              squash: 0,
                            ),
                          ),
                        ),
                      ),
                    if (isServerOn)
                      Positioned(
                        left: 4,
                        top: 8,
                        child: Container(
                          width: 4,
                          height: 4,
                          decoration: ShapeDecoration(
                            color: Color(0xFFFF5C00),
                            shape: StarBorder(
                              points: 4,
                              innerRadiusRatio: 0.38,
                              pointRounding: 0,
                              valleyRounding: 0,
                              rotation: 0,
                              squash: 0,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: isServerOn ? 100 : 100,
              top: 12,
              child: SizedBox(
                width: 102,
                height: 26,
                child: Text(
                  isServerOn ? 'Server OFF' : 'Server ON',
                  style: TextStyle(
                    color: isServerOn ? Color(0xFF50381C) : Color(0xFFFFEFE6),
                    fontSize: 20,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
