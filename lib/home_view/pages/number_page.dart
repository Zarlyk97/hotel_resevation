// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:otel_dev/constants/number_page1.dart';
import 'package:otel_dev/theme/app_texts.dart';
import 'package:otel_dev/theme/color_styles.dart';
import 'package:otel_dev/theme/text_styles.dart';

class NumberPage extends StatefulWidget {
  const NumberPage({super.key});

  @override
  State<NumberPage> createState() => _NumberPageState();
}

class _NumberPageState extends State<NumberPage> {
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
        title: const Text(
          AppTexts.makadi,
          style: TextStyles.otelStyle,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Container(
              height: 550,
              width: 380,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: AppColors.white),
              child: const NumberPage1()),
          const SizedBox(
            height: 10,
          ),
          Container(
              height: 550,
              width: 380,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: AppColors.white),
              child: const NumberPage1()),
        ],
      )),
    );
  }
}
