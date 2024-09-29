import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import '../core/app_export.dart';
import '../widgets/app_bar_builder.dart';
import '../widgets/bus_departure_section.dart';
import '../widgets/custom_navigation_bar.dart';
import '../widgets/common_widgets.dart';
import 'zielort_screen.dart';

// ignore_for_file: must_be_immutable
class HaltestelleAusgewaehltScreen extends StatelessWidget {
  HaltestelleAusgewaehltScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: const CustomAppBar(
          titleText: 'Schillingsbekweg',
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
                  const Header(text: "Abfahrten"),
                  SizedBox(height: 20.h),
                  BusDepartureSection(
                    buses: [
                      {'line': '392', 'destination': 'Hamburg U S Ohlsdorf'},
                    ],
                    time: "10 Minuten - 11:02",
                    onTap: () => Void,
                  ),
                  const CustomDivider(),
                  BusDepartureSection(
                    buses: [
                      {'line': '22', 'destination': 'Hamburg U Kelling'},
                    ],
                    time: "12 Minuten - 11:04",
                    onTap: () => Void,
                  ),
                  const CustomDivider(),
                  BusDepartureSection(
                    buses: [
                      {'line': '281', 'destination': 'U Kellinghusenstraße'},
                    ],
                    time: "15 Minuten - 11:07",
                    onTap: () => Void,
                  ),
                  const CustomDivider(),
                  BusDepartureSection(
                    buses: [
                      {'line': '391', 'destination': 'U Niendorf Markt'},
                    ],
                    time: "18 Minuten - 11:10",
                    onTap: () => Void,
                  ),
                  const CustomDivider(),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: CustomNavigationBar(
          onZielortPressed: () {
            Navigator.pushNamed(context, AppRoutes.zielortScreen);
          },
        ),
      ),
    );
  }

  void onTapZielortKnopf(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.zielortScreen);
  }
}
