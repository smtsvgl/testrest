import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restoran_app/page/home_page.dart';
import 'package:restoran_app/theme/project_widgets.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ProjectWidget()
              .menuButton("Anasayfa", () => Get.off(const HomePage())),
          ProjectWidget().menuButton("Menülerimiz", () {}),
          ProjectWidget().menuButton("Sipariş Ver!", () {}),
          ProjectWidget().menuButton("Hakkımızda", () {}),
        ],
      )),
    );
  }
}
