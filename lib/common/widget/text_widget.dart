import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    Key? key,
    required this.title,
    this.height,
    this.fontSize,
    this.color = Colors.black,
    this.textAlign = TextAlign.center,
    this.maxLine,
    this.fontWeight,
    this.widgetHeight,
    this.overflow,
  }) : super(key: key);
  final String title;
  final Color? color;
  final double? fontSize;
  final double? height;
  final TextAlign textAlign;
  final int? maxLine;
  final FontWeight? fontWeight;
  final double? widgetHeight;
  final TextOverflow? overflow;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widgetHeight,
      child: Text(
        title,
        textAlign: textAlign,
        maxLines: maxLine,
        softWrap: true,
        style: TextStyle(
          fontSize: fontSize,
          fontFamily: 'NotoSansKR',
          color: color,
          height: height,
          fontWeight: fontWeight,
          overflow: overflow,
        ),
      ),
    );
  }
}
