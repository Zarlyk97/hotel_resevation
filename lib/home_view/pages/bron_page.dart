import 'package:flutter/material.dart';
import 'package:otel_dev/extractButton/custom_button1.dart';
import 'package:otel_dev/extractButton/textfield_button.dart';
import 'package:otel_dev/extractButton/visibility_widget.dart';
import 'package:otel_dev/home_view/pages/payment_page.dart';
import 'package:otel_dev/models/register_model.dart';
import 'package:otel_dev/services/api_service.dart';
import 'package:otel_dev/theme/app_texts.dart';
import 'package:otel_dev/theme/color_styles.dart';
import 'package:otel_dev/theme/text_styles.dart';

class BronPage extends StatefulWidget {
  const BronPage({super.key});

  @override
  State<BronPage> createState() => _BronPageState();
}

class _BronPageState extends State<BronPage> {
  RegisterModel? registermodel;
  @override
  void initState() {
    super.initState();
    getData2();
  }

  void getData2() async {
    registermodel = await ApiService().getUsers2();
    setState(() {});
  }

  bool isVisible = false;
  bool isVisibles = false;

  @override
  Widget build(BuildContext context) {
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
      body: registermodel == null
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: Column(children: [
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppColors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16),
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
                            child: Row(
                              children: [
                                const Icon(Icons.star,
                                    color: AppColors.yellow1),
                                const SizedBox(width: 2),
                                Text(
                                  registermodel!.ratingName,
                                  style: TextStyles.prevosxodnoStyle,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            registermodel!.hotelAdress,
                            style: TextStyles.makadi,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(registermodel!.hotelAdress,
                              style: TextStyles.egipet),
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
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.white,
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 16, top: 10, right: 5),
                        child: Table(
                          columnWidths: const <int, TableColumnWidth>{
                            0: FixedColumnWidth(140),
                            1: FlexColumnWidth(),
                          },
                          defaultVerticalAlignment:
                              TableCellVerticalAlignment.top,
                          children: <TableRow>[
                            TableRow(
                              children: <Widget>[
                                const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 8),
                                  child: Text(AppTexts.vylet,
                                      style: TextStyles.turStyle),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8),
                                  child: Text(registermodel!.departure,
                                      style: TextStyles.information),
                                ),
                              ],
                            ),
                            TableRow(
                              children: <Widget>[
                                const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 8),
                                  child: Text(AppTexts.gorod,
                                      style: TextStyles.turStyle),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8),
                                  child: Text(registermodel!.arrivalCountry,
                                      style: TextStyles.information),
                                ),
                              ],
                            ),
                            TableRow(
                              children: <Widget>[
                                const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 8),
                                  child: Text(AppTexts.data,
                                      style: TextStyles.turStyle),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8),
                                  child: Text(
                                      '${registermodel!.tourDateStart} – ${registermodel!.tourDateStop}',
                                      style: TextStyles.information),
                                ),
                              ],
                            ),
                            TableRow(
                              children: <Widget>[
                                const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 8),
                                  child: Text(AppTexts.noch,
                                      style: TextStyles.turStyle),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8),
                                  child: Text(
                                      '${registermodel!.numberOfNights}',
                                      style: TextStyles.information),
                                ),
                              ],
                            ),
                            TableRow(
                              children: <Widget>[
                                const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 8),
                                  child: Text(AppTexts.otel,
                                      style: TextStyles.turStyle),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8),
                                  child: Text(registermodel!.hotelName,
                                      style: TextStyles.information),
                                ),
                              ],
                            ),
                            TableRow(
                              children: <Widget>[
                                const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 8),
                                  child: Text(AppTexts.nomer,
                                      style: TextStyles.turStyle),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8),
                                  child: Text(registermodel!.room,
                                      style: TextStyles.information),
                                ),
                              ],
                            ),
                            TableRow(
                              children: <Widget>[
                                const Padding(
                                  padding: EdgeInsets.symmetric(vertical: 8),
                                  child: Text(AppTexts.pitaniya,
                                      style: TextStyles.turStyle),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8),
                                  child: Text(registermodel!.nutrition,
                                      style: TextStyles.information),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
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
                            labelText: AppTexts.numberphone,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextFormField1(
                            labelText: AppTexts.pochta,
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
                          const Text(AppTexts.pervyiturist,
                              style: TextStyles.makadi),
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
                          const Text(AppTexts.vtoroyturist,
                              style: TextStyles.makadi),
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
                  Container(
                    width: 375,
                    height: 156,
                    padding: const EdgeInsets.all(16),
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Container(
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(AppTexts.tur1,
                                  style: TextStyles.turStyle),
                              Text("${registermodel!.tourPrice} ₽",
                                  style: TextStyles.information),
                            ],
                          ),
                          const SizedBox(height: 12),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(AppTexts.sbor,
                                  style: TextStyles.turStyle),
                              Text("${registermodel!.fuelCharge} ₽",
                                  style: TextStyles.information),
                            ],
                          ),
                          const SizedBox(height: 12),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(AppTexts.serviceSbor,
                                  style: TextStyles.turStyle),
                              Text(
                                "${registermodel!.serviceCharge} ₽",
                                style: TextStyles.information,
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(AppTexts.oplata,
                                  style: TextStyles.turStyle),
                              Text(
                                  "${(registermodel!.tourPrice + registermodel!.fuelCharge + registermodel!.serviceCharge)} ₽",
                                  style: TextStyles.onomere),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
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
                ]),
              ),
            ),
    );
  }
}
