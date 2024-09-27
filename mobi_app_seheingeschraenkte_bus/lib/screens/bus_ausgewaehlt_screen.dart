import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import '../core/app_export.dart';
import '../widgets/app_bar_builder.dart';
import '../widgets/custom_navigation_bar.dart';
import '../widgets/common_widgets.dart';

// ignore_for_file: must_be_immutable
class BusAusgewaehltScreen extends StatelessWidget {
  BusAusgewaehltScreen({Key? key}) : super(key: key);

  // Define all schedule times
  final List<Map<String, String>> scheduleTimes = [
    {"time": "10:56", "stop": "Informatikum"},
    {"time": "10:58", "stop": "Deelwisch"},
    {"time": "11:01", "stop": "Hamburg U Hagenbeck\nTierpark"},
    {"time": "11:02", "stop": "Schillingsbekweg"},
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: const CustomAppBar(
          titleText: '281 S Krupunder', // Pass your title
        ),
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 16.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Semantics(
                    label: "Dieser Bus fährt noch",
                    child: const Header(text: "5 Haltestellen"),
                  ),
                  SizedBox(height: 2.h),
                  _buildDisruptionInfo(),
                  SizedBox(height: 20.h),
                  _buildLinieSchedule(context),
                  SizedBox(height: 24.h),
                  _buildBoardingOptions(context),
                  SizedBox(height: 12.h),
                  SizedBox(height: 4.h)
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: const CustomNavigationBar(),
      ),
    );
  }

  Widget _buildDisruptionInfo() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      child: Container(
        padding: EdgeInsets.all(8.h),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 3.h,
          ),
          borderRadius: BorderRadius.circular(4.h),
          color: appTheme.whiteA700.withOpacity(0.1),
        ),
        child: Text(
          "Störungsmeldung: Von Dienstag bis Freitag wird die Haltestelle Deelwisch aufgrund von Bauarbeiten nicht bedient",
          style: theme.textTheme.titleMedium!.copyWith(
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  Widget _buildLinieSchedule(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.only(left: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...scheduleTimes.map((entry) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 20.h),
                  child: GestureDetector(
                    onTap: () {
                      if (entry["stop"] == "Schillingsbekweg") {
                        onTapSchillingsbekweg(context);
                      } else {
                        Void;
                      }
                    },
                    child: Text(
                      "${entry["time"]} ${entry["stop"]}",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: entry["stop"] == "Schillingsbekweg"
                          ? TextAlign.center
                          : TextAlign.start,
                      style: theme.textTheme.headlineSmall,
                    ),
                  ),
                ),
                const CustomDivider(),
              ],
            );
          }).toList(),
        ],
      ),
    );
  }

  Widget _buildBoardingOptions(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 4.h),
      child: Row(
        children: [
          // Einstiegswunsch button
          GestureDetector(
            onTap: () {},
            child: Semantics(
              button: true,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 24.h),
                decoration: AppDecoration.outlinePrimary.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder8,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Einstiegswunsch",
                      style: theme.textTheme.titleLarge,
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Ausstiegswunsch button
          Expanded(
            child: GestureDetector(
              onTap: () {},
              child: Semantics(
                button: true,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 24.h),
                  decoration: AppDecoration.outlinePrimary.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Ausstiegswunsch",
                        style: theme.textTheme.titleLarge,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void onTapSchillingsbekweg(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.haltestelleAusgewaehltScreen);
  }
}
