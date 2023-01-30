import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:restoran_app/page/sidemenu_page.dart';
import 'package:restoran_app/theme/project_color.dart';
import 'package:restoran_app/theme/project_widgets.dart';
import 'package:restoran_app/assets/project_image.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth > 850) {
          return homePageDesktop(constraints);
        } else {
          return homePageMobile(constraints);
        }
      }),
    );
  }

  Widget homePageMobile(constraints) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(constraints.maxWidth.toString()),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: InkWell(
                    onTap: () => Get.off(const SideMenu()),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.menu_book,
                        color: ProjectColor().darkColor,
                        size: 20,
                      ),
                    ),
                  ),
                ),
                Text(
                  "SMTRest",
                  style: GoogleFonts.itim(
                    color: ProjectColor().darkColor,
                    fontSize: 30,
                  ),
                ),
              ],
            ),
            _imageAndText(
              ProjectImage().balik,
              "Yeminime taptaze illa kurra",
              "En iyi kalite, üstün performans, 2jz motor, yarı yolda bırakmaz. Bizi tercih etmemeniz için bir sebep yok Ezbırçime.  Since 1998. (ง •_•)ง",
            ),
            _imageAndText(
              ProjectImage().kirmiziet,
              "Yeminime taptaze illa kurra",
              "En iyi kalite, üstün performans, 2jz motor, yarı yolda bırakmaz. Bizi tercih etmemeniz için bir sebep yok Ezbırçime.  Since 1998. (ง •_•)ง",
            ),
            _veganMenu(),
          ],
        ),
      ),
    );
  }

  Widget homePageDesktop(constraints) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(constraints.maxWidth.toString()),
            _topMenu(),
            _imageAndText(
              ProjectImage().balik,
              "Yeminime taptaze illa kurra",
              "En iyi kalite, üstün performans, 2jz motor, yarı yolda bırakmaz. Bizi tercih etmemeniz için bir sebep yok Ezbırçime.  Since 1998. (ง •_•)ง",
            ),
            _imageAndText(
              ProjectImage().kirmiziet,
              "Yeminime taptaze illa kurra",
              "En iyi kalite, üstün performans, 2jz motor, yarı yolda bırakmaz. Bizi tercih etmemeniz için bir sebep yok Ezbırçime.  Since 1998. (ง •_•)ง",
            ),
            _veganMenu(),
          ],
        ),
      ),
    );
  }

  Column _veganMenu() {
    return Column(
      children: [
        Image.network(
          ProjectImage().vegan,
          width: Get.width,
          height: 400,
        ),
        Column(
          children: [
            Text(
              "Veganlara Yerimiz Vardır!",
              style: GoogleFonts.varelaRound(
                color: ProjectColor().darkColor,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Hiçbir canlıya zarar verilmemiştir. Etlerimizi ayrı mutfakta hazırlıyoruz. yitecekleriniz et yüzü görmüyor.(ʘ ͜ʖ ʘ)",
              textAlign: TextAlign.left,
              style: GoogleFonts.varelaRound(
                color: ProjectColor().darkColor,
                fontSize: 18,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        ProjectWidget().menuButton("Hemen Sipariş Ver!", () {})
      ],
    );
  }

  Row _imageAndText(image, title, subtitle) {
    return Row(
      children: [
        Image.network(
          image,
          width: 300,
          height: 300,
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.varelaRound(
                  color: ProjectColor().darkColor,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                subtitle,
                textAlign: TextAlign.left,
                style: GoogleFonts.varelaRound(
                  color: ProjectColor().darkColor,
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ProjectWidget().menuButton("Hemen Sipariş Ver!", () {})
            ],
          ),
        ),
      ],
    );
  }

  Padding _topMenu() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "SMTRest",
            style: GoogleFonts.itim(
              color: ProjectColor().darkColor,
              fontSize: 50,
            ),
          ),
          Row(
            children: [
              ProjectWidget().menuButton("Ana Sayfa", () {}),
              ProjectWidget().menuButton("Menülerimiz", () {}),
              ProjectWidget().menuButton("Sipariş Ver!", () {}),
              ProjectWidget().menuButton("Hakkımızda", () {})
            ],
          )
        ],
      ),
    );
  }
}
