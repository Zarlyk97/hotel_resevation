import 'package:flutter/material.dart';
import 'package:otel_dev/constants/textfield_button.dart';
import 'package:otel_dev/theme/app_texts.dart';

class VisibilityWidget extends StatelessWidget {
  const VisibilityWidget({
    super.key,
    required this.isVisible,
    required this.isVisibles,
  });

  final bool isVisible;
  final bool isVisibles;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isVisible,
      child: Container(
        width: 375,
        height: 400,
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
              TextFormField1(
                labelText: AppTexts.name,
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField1(
                labelText: AppTexts.surename,
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField1(
                labelText: AppTexts.datarojdeniya,
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField1(
                labelText: AppTexts.grajdanstvo,
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField1(
                labelText: AppTexts.numberPasswort,
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField1(
                labelText: AppTexts.srok,
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
