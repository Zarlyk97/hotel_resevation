// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:otel_dev/extractButton/custom_button.dart';
import 'package:otel_dev/extractButton/custom_button1.dart';
import 'package:otel_dev/home_view/pages/number_page.dart';
import 'package:otel_dev/models/model.dart';
import 'package:otel_dev/services/api_service.dart';
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
  Usermodel? usermodel;

  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    usermodel = await ApiService().getUsers();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: const Text(
          AppTexts.otel,
          style: TextStyles.otelStyle,
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: usermodel == null
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : SingleChildScrollView(
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
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
                                    child: Row(
                                      children: [
                                        const Icon(Icons.star,
                                            color: AppColors.yellow1),
                                        const SizedBox(width: 2),
                                        Text(
                                          usermodel!.ratingName,
                                          style: TextStyles.prevosxodnoStyle,
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    usermodel!.name,
                                    style: TextStyles.makadi,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(usermodel!.adress,
                                      style: TextStyles.egipet),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      Text(usermodel!.minimalPrice.toString(),
                                          style: TextStyles.sifraText),
                                      const SizedBox(
                                        width: 30,
                                      ),
                                      Text(usermodel!.priceForIt,
                                          style: TextStyles.turStyle),
                                      const SizedBox(
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
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: AppColors.white),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(AppTexts.obOtel,
                                style: TextStyles.makadi),
                            const SizedBox(
                              height: 10,
                            ),
                            Wrap(
                              spacing: 8,
                              runSpacing: 8,
                              children: [
                                ...usermodel!.aboutTheHotel.peculiarities.map(
                                  (e) => Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                        color: AppColors.grey1,
                                        borderRadius: BorderRadius.circular(4)),
                                    child: Text(e.toString(),
                                        style: TextStyles.turStyle),
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Text(usermodel!.aboutTheHotel.description,
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
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: AppColors.white),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 15,
                          ),
                          Center(
                            child: CustomButton1(
                              text: AppTexts.kvyboru,
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => NumberPage(
                                        title: usermodel!.name.toString()),
                                  ),
                                );
                              },
                              style: TextStyles.kvyboru,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
