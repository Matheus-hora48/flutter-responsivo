import 'package:exemplo2/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Insta Hora',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      builder: (context, widget) => ResponsiveWrapper.builder(
          ClampingScrollWrapper.builder(
            context,
            const HomePage(),
          ),
          defaultScale: true,
          defaultName: MOBILE,
          minWidth: 450,
          breakpoints: [
            const ResponsiveBreakpoint.resize(450, name: MOBILE),
            const ResponsiveBreakpoint.resize(700, name: TABLET),
            const ResponsiveBreakpoint.resize(800, name: DESKTOP),
          ]),
    );
  }
}
