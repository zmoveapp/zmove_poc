import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:theme_provider/theme_provider.dart';

class ButtonComponent extends StatelessWidget {
  final String text;
  final Function() onPressed;
  const ButtonComponent({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        padding: const EdgeInsets.symmetric(vertical: 19),
        splashColor: Colors.transparent,
        color: ThemeProvider.themeOf(context).data.primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(text,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 15)),
        ]),
        onPressed: onPressed);
  }
}

class ButtonWhiteComponent extends StatelessWidget {
  final String text;
  final Color? colorText;
  final FontWeight? fontWeight;
  final Function() onPressed;
  const ButtonWhiteComponent(
      {Key? key,
      required this.text,
      required this.onPressed,
      this.colorText,
      this.fontWeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        padding: const EdgeInsets.symmetric(vertical: 19),
        splashColor: Colors.transparent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(text,
              style: TextStyle(
                  color: const Color(0xffBCBCBC),
                  fontWeight: fontWeight ?? FontWeight.bold,
                  fontSize: 17)),
        ]),
        onPressed: onPressed);
  }
}

class ButtonWhiteComponentOutlined extends StatelessWidget {
  final String text;
  final Color? colorText;
  final FontWeight? fontWeight;
  final bool iconState;
  final Function() onPressed;
  const ButtonWhiteComponentOutlined(
      {Key? key,
      required this.text,
      required this.onPressed,
      this.iconState = false,
      this.colorText,
      this.fontWeight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        padding: const EdgeInsets.symmetric(vertical: 19),
        splashColor: Colors.transparent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          if(iconState)
          SvgPicture.asset('assets/icons/Cross.svg',
                                  height: 20, color: Colors.red[400]),
          Text(text,
              style: TextStyle(
                  fontWeight: fontWeight ?? FontWeight.bold,
                  color: ThemeProvider.themeOf(context).data.primaryColor,
                  fontSize: 17)),
        ]),
        onPressed: onPressed);
  }
}

class ButtonOptionsComponent extends StatelessWidget {
  final String text;
  final Color? colorText;
  final Function() onPressed;
  const ButtonOptionsComponent(
      {Key? key, required this.text, required this.onPressed, this.colorText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width * 0.4,
        child: GestureDetector(
            onTap: onPressed,
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(text,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[600])),
                    Row(
                      children: [
                        const Text('Seleccionar',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.grey)),
                        Icon(
                          Icons.keyboard_arrow_down_sharp,
                          size: 35,
                          color:
                              ThemeProvider.themeOf(context).data.primaryColor,
                        )
                      ],
                    )
                  ],
                ))));
  }
}
