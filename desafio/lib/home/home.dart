import 'package:desafio/home/widgets/app_bar/mobile_app_bar.dart';
import 'package:desafio/home/widgets/app_bar/web_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        appBar: constraints.maxWidth < 800
            ? const PreferredSize(
                preferredSize: Size(double.infinity, 56),
                child: MobileAppBar(),
              )
            : const PreferredSize(
                preferredSize: Size(double.infinity, 72),
                child: WebAppBar(),
              ),
        drawer: const Drawer(),
      );
    });
  }
}
