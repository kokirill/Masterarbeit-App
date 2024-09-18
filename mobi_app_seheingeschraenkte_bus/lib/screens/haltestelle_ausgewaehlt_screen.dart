import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import '../core/app_export.dart';
import '../widgets/app_bar/app_bar_builder.dart';
import '../widgets/custom_navigation_bar.dart';
import '../widgets/common_widgets.dart';

// ignore_for_file: must_be_immutable
class HaltestelleAusgewaehltScreen extends StatelessWidget {
  HaltestelleAusgewaehltScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 16.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Header(text: "Abfahrten"),
                  SizedBox(height: 20.h),
                  BusDepartureSection(
                    busStop: "392 Hamburg U S Ohlsdorf",
                    time: "10 Minuten - 11:02",
                    onTap: () => Void,
                  ),
                  const CustomDivider(),
                  BusDepartureSection(
                    busStop: "22 Hamburg U Kelling",
                    time: "12 Minuten - 11:04",
                    onTap: () => Void,
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

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return buildAppBar(
      context: context,
      titleText: "Schillingsbekweg",
    );
  }

  void onTapZielortKnopf(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.zielortScreen);
  }
}
