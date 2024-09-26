import 'package:flutter/material.dart';
import 'package:mobi_app_seheingeschraenkte_bus/core/app_export.dart';

class CustomOutlinedButton extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;

  const CustomOutlinedButton({
    Key? key,
    required this.text,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 5.h),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 12.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.h), // Rounded Borders
                border: Border.all(
                  color: Colors.black, // Border color
                  width: 3.0, // Border width
                ),
              ),
              child: Text(
                text,
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall, // Using the app's text theme
              ),
            ),
          ),
        ],
      ),
    );
  }
}
