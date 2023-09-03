import 'package:flutter/material.dart';
import 'package:otel_dev/home_view/home_view.dart';
import 'package:otel_dev/theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      debugShowCheckedModeBanner: false,
      home: const HomeView(),
    );
  }
}
