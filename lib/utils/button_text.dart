import 'package:flutter/cupertino.dart';

class ButtonAndText extends StatelessWidget {
  final double sizeWidth;
  final double sizeHeight;
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final double radius;
  final Color color, textColor;
  final int? maxLine;
  final VoidCallback onTap;
  const ButtonAndText({
    Key? key,
    this.sizeWidth = double.maxFinite,
    required this.sizeHeight,
    required this.text,
    required this.color,
    required this.textColor,
    required this.onTap,
    this.fontSize = 20,
    this.maxLine,
    this.radius = 15,
    this.fontWeight = FontWeight.w600,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: sizeWidth,
        height: sizeHeight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: color,
        ),
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            maxLines: maxLine,
            style: TextStyle(
                color: textColor, fontSize: fontSize, fontWeight: fontWeight),
          ),
        ),
      ),
    );
  }
}
