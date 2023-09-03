// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:otel_dev/constants/custom_button.dart';
import 'package:otel_dev/constants/custom_button1.dart';
import 'package:otel_dev/home_view/pages/number_page.dart';

import 'package:otel_dev/theme/app_texts.dart';
import 'package:otel_dev/theme/color_styles.dart';
import 'package:otel_dev/theme/text_styles.dart';
import 'package:otel_dev/widgets/corusel.dart';

class HomeView extends StatefulWidget {
  const HomeView({
    super.key,
  });

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grey1,
      appBar: AppBar(
        title: const Text(
          AppTexts.otel,
          style: TextStyles.otelStyle,
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              height: 450,
              width: 387,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: AppColors.white),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 16, right: 16),
                    child: CoruselWidget(
                      urls: [
                        "https://www.atorus.ru/sites/default/files/upload/image/News/56149/Club_Priv%C3%A9_by_Belek_Club_House.jpg",
                        "https://deluxe.voyage/useruploads/articles/The_Makadi_Spa_Hotel_02.jpg",
                        "https://deluxe.voyage/useruploads/articles/article_1eb0a64d00.jpg"
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 149,
                            height: 29,
                            decoration: ShapeDecoration(
                              color: AppColors.brown,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            child: const Row(
                              children: [
                                Icon(Icons.star, color: AppColors.yellow1),
                                SizedBox(width: 2),
                                Text(
                                  AppTexts.prevosxodno,
                                  style: TextStyles.prevosxodnoStyle,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            AppTexts.makadi,
                            style: TextStyles.makadi,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(AppTexts.egipet, style: TextStyles.egipet),
                          const SizedBox(
                            height: 20,
                          ),
                          const Row(
                            children: [
                              Text(AppTexts.sifra, style: TextStyles.sifraText),
                              SizedBox(
                                width: 10,
                              ),
                              Text(AppTexts.tur, style: TextStyles.turStyle),
                              SizedBox(
                                height: 15,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 380,
              width: 387,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: AppColors.white),
              child: Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(AppTexts.obOtel, style: TextStyles.makadi),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(AppTexts.liniya, style: TextStyles.turStyle),
                            SizedBox(
                              height: 10,
                            ),
                            Text(AppTexts.airopt, style: TextStyles.turStyle),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Text(AppTexts.platniy, style: TextStyles.turStyle),
                            SizedBox(
                              height: 10,
                            ),
                            Text(AppTexts.plyaj, style: TextStyles.turStyle),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(AppTexts.information,
                        style: TextStyles.information),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomButton(
                      text: AppTexts.udobstva,
                      image: Image.asset('assets/emojihappy.png'),
                    ),
                    const Divider(
                      indent: 20,
                      endIndent: 30,
                      color: Color(0xffE9EAED),
                    ),
                    CustomButton(
                      text: AppTexts.vklycheno,
                      image: Image.asset('assets/ticksquare.png'),
                    ),
                    const Divider(
                      indent: 20,
                      endIndent: 30,
                      color: Color(0xffE9EAED),
                    ),
                    CustomButton(
                      text: AppTexts.neVklycheno,
                      image: Image.asset('assets/closesquare.png'),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 80,
              width: 390,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: AppColors.white),
              child: Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  CustomButton1(
                    text: AppTexts.kvyboru,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NumberPage(),
                        ),
                      );
                    },
                    style: TextStyles.kvyboru,
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
