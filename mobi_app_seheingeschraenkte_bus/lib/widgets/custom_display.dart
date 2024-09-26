import 'package:flutter/material.dart';
import 'package:mobi_app_seheingeschraenkte_bus/core/app_export.dart';

/// Reusable widget that can either display a static bus stop name or act as a text input field
class CustomDisplayBar extends StatelessWidget {
  final String text;
  final String imagePath;
  final bool isEditable;
  final TextEditingController? controller;

  const CustomDisplayBar({
    Key? key,
    required this.text,
    required this.imagePath,
    this.isEditable = false, // By default, it is a static text display
    this.controller, // If editable, a controller is required
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.h),
        border: Border.all(
          color: Colors.black, // Border color
          width: 3.0, // Border width
        ),
      ),
      child: Row(
        children: [
          ExcludeSemantics(
            child: Image.asset(
              imagePath,
              height: 22.h,
              width: 24.h,
            ),
          ),
          SizedBox(width: 12.h),
          Expanded(
            child: isEditable
                ? TextFormField(
                    controller: controller,
                    decoration: InputDecoration(
                      hintText: text,
                      hintStyle: theme.textTheme.titleMedium,
                      border: InputBorder.none, // No border inside the field
                    ),
                    autofocus: false,
                  )
                : Text(
                    text,
                    style: theme.textTheme.titleMedium,
                  ),
          ),
        ],
      ),
    );
  }
}
