import 'package:flutter/material.dart';
import 'package:theme_provider/theme_provider.dart';

AppTheme lightTheme = AppTheme.light().copyWith(
    id: 'light',
    data: ThemeData(
      primarySwatch: Colors.green,
      appBarTheme: const AppBarTheme(backgroundColor: Colors.white),
      textTheme: ThemeData.light().textTheme.apply(
            fontFamily: 'Nova',
          ),
      primaryTextTheme: ThemeData.light().textTheme.apply(
            fontFamily: 'Nova',
          ),
      dialogBackgroundColor: const Color(0xfff2f2f2),
      primaryColor: const Color(0xff94BD6F),
      scaffoldBackgroundColor: const Color(0xfff2f2f2),
    ));

AppTheme darkTheme = AppTheme.dark().copyWith(
    id: 'dark',
    data: ThemeData(
      primarySwatch: Colors.green,
      textTheme: ThemeData.dark().textTheme.apply(
            bodyColor: Colors.white,
            fontFamily: 'Nova',
          ),
      primaryTextTheme: ThemeData.light().textTheme.apply(
            fontFamily: 'Nova',
          ),
      dialogBackgroundColor: const Color(0xff21232A),
      primaryColor: const Color(0xff94BD6F),
      scaffoldBackgroundColor: const Color(0xff21232A),
    ));
