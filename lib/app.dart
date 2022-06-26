import 'package:flutter/material.dart';
import 'package:theme_provider/theme_provider.dart';
import './themes/main_theme.dart';
import 'screens/view.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
        themes: [lightTheme, darkTheme],
        child: ThemeConsumer(
            child: Builder(
                builder: (themeContext) => MaterialApp(
                        debugShowCheckedModeBanner: false,
                        theme: ThemeProvider.themeOf(themeContext).data,
                        title: 'ZMove',
                        initialRoute: 'login',
                        routes: {
                          'login': (_) => const ScreenLogin(),
                        }))));
  }
}
