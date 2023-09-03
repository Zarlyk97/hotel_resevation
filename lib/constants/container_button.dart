import 'package:flutter/material.dart';
import 'package:otel_dev/theme/color_styles.dart';
import 'package:otel_dev/theme/text_styles.dart';

class ContainerButton extends StatelessWidget {
  const ContainerButton({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: AppColors.white3,
        ),
        width: 123,
        height: 29,
        child: Text(
          text,
          style: TextStyles.turStyle,
        ),
      ),
    );
  }
}
