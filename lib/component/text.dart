import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TextEdit extends StatelessWidget {
  const TextEdit(
      {super.key, required this.color, required this.size, required this.text});
  final String text;
  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width / 1.7,
      child: Text(
        overflow: TextOverflow.clip,
        text,
        style: TextStyle(color: color, fontSize: size),
      ),
    );
  }
}
