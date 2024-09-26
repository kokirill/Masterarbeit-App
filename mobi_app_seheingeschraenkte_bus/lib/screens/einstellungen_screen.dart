import 'dart:ffi';
import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../widgets/common_widgets.dart';
import '../widgets/custom_navigation_bar.dart';
import '../widgets/custom_outlined_button.dart';
import 'sprachansagen_screen.dart';

class EinstellungenScreen extends StatelessWidget {
  const EinstellungenScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(vertical: 12.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildEinstellungenColumn(context),
                  SizedBox(height: 40.h),
                  CustomOutlinedButton(
                    text: "Sprachansagen",
                    onTap: () {
                      print("Navigating to SprachansagenScreen");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SprachansagenScreen(),
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 16.h),
                  const CustomDivider(),
                  CustomOutlinedButton(
                    text: "Vibrationsfeedback",
                    onTap: () => Navigator.pushNamed(
                        context, AppRoutes.vibrationsFeedbackScreen),
                  ),
                  SizedBox(height: 16.h),
                  const CustomDivider(),
                  CustomOutlinedButton(
                    text: "Schriftgröße",
                    onTap: () => Void,
                  ),
                  SizedBox(height: 16.h),
                  const CustomDivider(),
                  CustomOutlinedButton(
                    text: "Farbschema",
                    onTap: () => Navigator.pushNamed(
                        context, AppRoutes.farbschemaScreen),
                  ),
                  SizedBox(height: 16.h),
                  const CustomDivider(),
                  CustomOutlinedButton(
                    text: "Störungsmelder",
                    onTap: () => Navigator.pushNamed(
                        context, AppRoutes.stoerungsmelderScreen),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: const CustomNavigationBar(),
      ),
    );
  }

  Widget _buildEinstellungenColumn(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: Column(
            children: [
              Text(
                "Einstellung".toUpperCase(),
                style:
                    theme.textTheme.displaySmall, // Use the same style as Radar
              ),
              SizedBox(height: 16.h),
            ],
          ),
        ),
      ),
    );
  }
}
