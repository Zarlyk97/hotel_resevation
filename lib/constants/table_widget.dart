import 'package:flutter/material.dart';
import 'package:otel_dev/theme/app_texts.dart';
import 'package:otel_dev/theme/text_styles.dart';

class TableWidget extends StatelessWidget {
  const TableWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 10, right: 5),
      child: Table(
        children: const [
          TableRow(
            children: [
              TableCell(
                child: Text(
                  AppTexts.vylet,
                  style: TextStyles.turStyle,
                ),
              ),
              TableCell(
                child: Text(
                  'Санк питербурга',
                  style: TextStyles.information,
                ),
              ),
            ],
          ),
          TableRow(
            children: [
              // Add space between rows
              SizedBox(height: 10.0),
              SizedBox(height: 10.0)
            ],
          ),
          TableRow(
            children: [
              TableCell(
                child: Text(
                  AppTexts.gorod,
                  style: TextStyles.turStyle,
                ),
              ),
              TableCell(
                child: Text(
                  'Египет, Хургада',
                  style: TextStyles.information,
                ),
              ),
            ],
          ),
          TableRow(
            children: [
              // Add space between rows
              SizedBox(height: 10.0),
              SizedBox(height: 10.0)
            ],
          ),
          TableRow(
            children: [
              TableCell(
                child: Text(
                  AppTexts.data,
                  style: TextStyles.turStyle,
                ),
              ),
              TableCell(
                child: Text(
                  '19.09.2023',
                  style: TextStyles.information,
                ),
              ),
            ],
          ),
          TableRow(
            children: [
              // Add space between rows
              SizedBox(height: 10.0),
              SizedBox(height: 10.0)
            ],
          ),
          TableRow(
            children: [
              TableCell(
                child: Text(
                  AppTexts.noch,
                  style: TextStyles.turStyle,
                ),
              ),
              TableCell(
                child: Text(
                  '7 ночей',
                  style: TextStyles.information,
                ),
              ),
            ],
          ),
          TableRow(
            children: [
              // Add space between rows
              SizedBox(height: 10.0),
              SizedBox(height: 10.0)
            ],
          ),
          TableRow(
            children: [
              // Add space between rows
              SizedBox(height: 10.0),
              SizedBox(height: 10.0)
            ],
          ),
          TableRow(
            children: [
              TableCell(
                child: Text(
                  AppTexts.otel,
                  style: TextStyles.turStyle,
                ),
              ),
              TableCell(
                child: Text(
                  'Steigenberger Makadi',
                  style: TextStyles.information,
                ),
              ),
            ],
          ),
          TableRow(
            children: [
              // Add space between rows
              SizedBox(height: 10.0),
              SizedBox(height: 10.0)
            ],
          ),
          TableRow(
            children: [
              TableCell(
                child: Text(
                  AppTexts.nomer,
                  style: TextStyles.turStyle,
                ),
              ),
              TableCell(
                child: Text(
                  '89973809658',
                  style: TextStyles.information,
                ),
              ),
            ],
          ),
          TableRow(
            children: [
              // Add space between rows
              SizedBox(height: 10.0),
              SizedBox(height: 10.0)
            ],
          ),
          TableRow(
            children: [
              TableCell(
                child: Text(
                  AppTexts.pitaniya,
                  style: TextStyles.turStyle,
                ),
              ),
              TableCell(
                child: Text(
                  'Стандартный с видом на бассейн или сад',
                  style: TextStyles.information,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
