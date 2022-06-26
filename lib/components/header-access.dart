import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HeaderAcceess extends StatelessWidget {
  final String text;
  final String? image;
  const HeaderAcceess({Key? key, required this.text, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(child: Text(text, style: const TextStyle(fontSize: 40, color: Color(0xff94BD6F), fontWeight: FontWeight.bold))),
          ],
        ),
        if (image != null)
          Center(
              child: Image.asset(
            image!,
            fit: BoxFit.cover,
            height: 200,
          )),
      ],
    );
  }
}
