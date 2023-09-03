import 'package:flutter/material.dart';
import 'package:otel_dev/theme/app_texts.dart';
import 'package:otel_dev/theme/text_styles.dart';

class PayContainer extends StatelessWidget {
  const PayContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 156,
      padding: const EdgeInsets.all(16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppTexts.tur1,
                style: TextStyles.turStyle,
              ),
              SizedBox(
                height: 14,
              ),
              Text(AppTexts.sbor, style: TextStyles.turStyle),
              SizedBox(
                height: 14,
              ),
              Text(AppTexts.serviceSbor, style: TextStyles.turStyle),
              SizedBox(
                height: 14,
              ),
              Text(AppTexts.oplata, style: TextStyles.turStyle),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(AppTexts.izmenit1, style: TextStyles.information),
              SizedBox(
                height: 10,
              ),
              Text(AppTexts.izmenit2, style: TextStyles.information),
              SizedBox(
                height: 10,
              ),
              Text(AppTexts.izmenit3, style: TextStyles.information),
              SizedBox(
                height: 10,
              ),
              Text(AppTexts.izmenit4, style: TextStyles.information),
            ],
          ),
        ],
      ),
    );
  }
}
