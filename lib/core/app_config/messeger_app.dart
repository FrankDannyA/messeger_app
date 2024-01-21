import 'package:flutter/material.dart';
import 'package:messeger_app/core/ui_kits/app_theme.dart';
import 'package:messeger_app/features/register_screen/view/register_screen.dart';

class MessegerApp extends StatelessWidget {
  const MessegerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      home: RegisterScreen(),
    );
  }
}
