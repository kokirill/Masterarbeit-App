import 'package:flutter/material.dart';
import '../core/app_export.dart';

class CustomNavigationBar extends StatelessWidget {
  final Function()? onZielortPressed;
  final Function()? onEinstellungPressed;

  const CustomNavigationBar({
    Key? key,
    this.onZielortPressed,
    this.onEinstellungPressed, // Function to handle Zielort button press
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.h,
            offset: Offset(0, -1),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildNavButton(
            context,
            iconPath: ImageConstant.imgRadarKnopf, // Radar icon
            label: 'Radar',
          ),
          _buildNavButton(
            context,
            iconPath: ImageConstant.imgZielOrtKnopf, // Zielort icon
            label: 'Zielort',
            onPressed: onZielortPressed, // Add the onPressed behavior here
          ),
          _buildNavButton(
            context,
            iconPath: ImageConstant.imgEinstellungsKnopf, // Settings icon
            label: 'Einstellung',
            onPressed: onEinstellungPressed,
          ),
        ],
      ),
    );
  }

  Widget _buildNavButton(BuildContext context,
      {required String iconPath,
      required String label,
      Function()? onPressed}) {
    return GestureDetector(
      onTap:
          onPressed ?? () {}, // Use onPressed if provided, otherwise no action
      child: Semantics(
        label:
            'Untere Navigationsleiste, $label ausgewählt', // Describes lower nav and button selected
        button: true,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              iconPath,
              height: 50.h,
              width: 50.h,
              excludeFromSemantics: true,
            ),
            SizedBox(height: 4.h),
            Text(
              label,
              style: theme.textTheme.headlineSmall,
            ),
          ],
        ),
      ),
    );
  }
}
