import 'package:flutter/material.dart';
import '../core/app_export.dart';

// Here are common smaller Widgets

// Common Widget for Header
class Header extends StatelessWidget {
  final String text;

  const Header({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 22.h),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          text,
          style: theme.textTheme.headlineLarge,
        ),
      ),
    );
  }
}

// Common Widget for Divider
class CustomDivider extends StatelessWidget {
  const CustomDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 336.h,
          child: Divider(indent: 10.h),
        ),
        SizedBox(height: 20.h),
      ],
    );
  }
}
