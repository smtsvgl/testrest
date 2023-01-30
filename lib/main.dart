import 'package:flutter/material.dart';
import 'package:restoran_app/page/home_page.dart';
import 'package:get/get.dart';
import 'package:restoran_app/page/sidemenu_page.dart';

void main() {
  runApp(const smtRes());
}

class smtRes extends StatelessWidget {
  const smtRes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SMTRest Restaurant',
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 252, 249, 240),
        body: HomePage(),
      ),
    );
  }
}
