import 'package:flutter/material.dart';
import 'package:otel_dev/extractButton/custom_button1.dart';
import 'package:otel_dev/home_view/pages/bron_page.dart';
import 'package:otel_dev/models/rooms_model.dart';
import 'package:otel_dev/services/api_service.dart';
import 'package:otel_dev/theme/app_texts.dart';
import 'package:otel_dev/theme/color_styles.dart';
import 'package:otel_dev/theme/text_styles.dart';
import 'package:otel_dev/widgets/corusel.dart';

class NumberPage extends StatefulWidget {
  final String title;
  const NumberPage({super.key, required this.title});

  @override
  State<NumberPage> createState() => _NumberPageState();
}

class _NumberPageState extends State<NumberPage> {
  List<Room?> rooms = [];

  @override
  void initState() {
    super.initState();
    getData1();
  }

  void getData1() async {
    rooms = (await ApiService().getUsers1())!;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grey1,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.keyboard_arrow_left),
        ),
        title: Text(
          widget.title,
          style: TextStyles.otelStyle,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ...rooms.map(
              (room) => Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: AppColors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 16, top: 10, right: 16),
                      child: CoruselWidget(urls: room!.imageUrls),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(room.name, style: TextStyles.makadi),
                          const SizedBox(
                            height: 10,
                          ),
                          Wrap(
                            spacing: 8,
                            runSpacing: 8,
                            children: [
                              ...room.peculiarities.map(
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
                            height: 10,
                          ),
                          GestureDetector(
                            child: Container(
                              width: 192,
                              height: 29,
                              decoration: ShapeDecoration(
                                color: const Color(0x190D72FF),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                              child: const Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 6),
                                    child: Center(
                                      child: Text(AppTexts.onomere,
                                          style: TextStyles.onomere),
                                    ),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_right,
                                    color: Color(0xFF0D72FF),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Text("${room.price} ₽",
                                  style: TextStyles.sifraText),
                              const SizedBox(
                                width: 20,
                              ),
                              Text(room.pricePer.toString(),
                                  style: TextStyles.turStyle),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          CustomButton1(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const BronPage(),
                                ),
                              );
                            },
                            text: AppTexts.vybratnomer,
                            style: TextStyles.kvyboru,
                          ),
                          const SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
