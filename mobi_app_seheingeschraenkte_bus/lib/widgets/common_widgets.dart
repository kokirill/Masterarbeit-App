import 'package:flutter/material.dart';
import '../core/app_export.dart';

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

// Common Widget for Bus Departure Section
class BusDepartureSection extends StatelessWidget {
  final String busStop;
  final String time;
  final VoidCallback? onTap;

  const BusDepartureSection({
    Key? key,
    required this.busStop,
    required this.time,
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
              child: Row(
                children: [
                  // Bus Icon inside the border
                  CustomImageView(
                    imagePath: ImageConstant.imgBus,
                    height: 20.h,
                    width: 20.h,
                    margin: EdgeInsets.only(right: 8.h),
                  ),
                  // Bus Stop Name inside the border
                  Text(
                    busStop,
                    style: theme.textTheme.headlineSmall,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 12.h),
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: Text(
              time,
              style: theme.textTheme.headlineSmall,
            ),
          ),
          SizedBox(height: 24.h),
        ],
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

/// Reusable widget that can either display a static bus stop name or act as a text input field
class CustomNearestBusStop extends StatelessWidget {
  final String text;
  final String imagePath;
  final bool isEditable;
  final TextEditingController? controller;

  const CustomNearestBusStop({
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
        border: Border.all(color: Colors.black),
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
