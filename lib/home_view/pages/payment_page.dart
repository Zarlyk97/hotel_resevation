import 'package:flutter/material.dart';
import 'package:otel_dev/constants/custom_button1.dart';
import 'package:otel_dev/theme/app_texts.dart';
import 'package:otel_dev/theme/color_styles.dart';
import 'package:otel_dev/theme/text_styles.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.keyboard_arrow_left),
        ),
        title: const Text(
          AppTexts.zakaz,
          style: TextStyles.otelStyle,
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Center(
              child: Container(
                height: 94,
                width: 94,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1000),
                    color: AppColors.grey1),
                child: Image.asset(
                  'assets/priz.png',
                  width: 88,
                  height: 88,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Center(
            child: Padding(
              padding: EdgeInsets.only(left: 20, right: 10),
              child: Column(
                children: [
                  Text(
                    AppTexts.zakazPrinit,
                    style: TextStyles.makadi,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    AppTexts.informatsiya,
                    style: TextStyles.turStyle,
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 235,
          ),
          CustomButton1(
            text: AppTexts.super1,
            onTap: () {},
            style: TextStyles.kvyboru,
          ),
        ],
      ),
    );
  }
}
