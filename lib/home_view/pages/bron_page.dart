import 'package:flutter/material.dart';
import 'package:otel_dev/constants/custom_button1.dart';
import 'package:otel_dev/constants/pay_container.dart';
import 'package:otel_dev/constants/table_widget.dart';
import 'package:otel_dev/constants/textfield_button.dart';
import 'package:otel_dev/constants/visibility_widget.dart';
import 'package:otel_dev/home_view/pages/payment_page.dart';
import 'package:otel_dev/theme/app_texts.dart';
import 'package:otel_dev/theme/color_styles.dart';
import 'package:otel_dev/theme/text_styles.dart';

class BronPage extends StatefulWidget {
  const BronPage({super.key});

  @override
  State<BronPage> createState() => _BronPageState();
}

class _BronPageState extends State<BronPage> {
  bool isVisible = false;
  bool isVisibles = false;

  @override
  Widget build(BuildContext context) {
    //  var theme = Theme.of(context);

    return Scaffold(
      backgroundColor: AppColors.white1,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.keyboard_arrow_left),
        ),
        title: const Text(
          AppTexts.brontext,
          style: TextStyles.otelStyle,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 380,
              height: 147,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: AppColors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 25,
                    ),
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
                      height: 15,
                    ),
                    const Text(AppTexts.egipet, style: TextStyles.egipet),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                width: 380,
                height: 280,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColors.white,
                ),
                child: const TableWidget(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 375,
              height: 232,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 16, right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(AppTexts.information1, style: TextStyles.makadi),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField1(
                      labelText: 'Номер телефона',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextFormField1(
                      labelText: 'Почта',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(AppTexts.text, style: TextStyles.neobxodimoStyle)
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 375,
              height: 58,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: AppColors.white),
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(AppTexts.pervyiturist, style: TextStyles.makadi),
                    InkWell(
                      onTap: () {
                        isVisible = !isVisible;
                        setState(() {});
                      },
                      child: Container(
                        width: 32,
                        height: 32,
                        decoration: ShapeDecoration(
                          color: const Color(0x190D72FF),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6)),
                        ),
                        child: Icon(isVisible
                            ? Icons.keyboard_arrow_up
                            : Icons.keyboard_arrow_down),
                      ),
                    )
                  ],
                ),
              ),
            ),
            VisibilityWidget(
              isVisible: isVisible,
              isVisibles: isVisible,
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 375,
              height: 58,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: AppColors.white),
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(AppTexts.vtoroyturist, style: TextStyles.makadi),
                    InkWell(
                      onTap: () {
                        isVisibles = !isVisibles;
                        setState(() {});
                      },
                      child: Container(
                        width: 32,
                        height: 32,
                        decoration: ShapeDecoration(
                          color: const Color(0x190D72FF),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6)),
                        ),
                        child: Icon(isVisibles
                            ? Icons.keyboard_arrow_up
                            : Icons.keyboard_arrow_down),
                      ),
                    )
                  ],
                ),
              ),
            ),
            VisibilityWidget(
              isVisibles: isVisibles,
              isVisible: isVisibles,
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 58,
              width: 375,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.white),
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      AppTexts.dobavit,
                      style: TextStyles.makadi,
                    ),
                    const SizedBox(
                      width: 110,
                    ),
                    Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: AppColors.blue),
                      child: const Icon(
                        Icons.add,
                        color: AppColors.white,
                      ),
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
            const PayContainer(),
            const SizedBox(
              height: 10,
            ),
            CustomButton1(
              text: AppTexts.oplatit,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PaymentPage(),
                  ),
                );
              },
              style: TextStyles.kvyboru,
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
