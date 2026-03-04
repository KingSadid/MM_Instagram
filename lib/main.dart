import 'package:flutter/material.dart';
import 'package:instagram/utils/app_theme.dart';
import 'package:instagram/screens/main_wrapper.dart';

void main() {
  runApp(const InstagramApp());
}

class InstagramApp extends StatelessWidget {
  const InstagramApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram Clone',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: const MainWrapper(),
    );
  }
}
