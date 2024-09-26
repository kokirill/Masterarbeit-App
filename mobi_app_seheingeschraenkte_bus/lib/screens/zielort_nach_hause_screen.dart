import 'dart:ffi';

import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../widgets/bus_departure_section.dart';
import '../widgets/common_widgets.dart';
import '../widgets/custom_display.dart';
import '../widgets/custom_navigation_bar.dart';

// ignore_for_file: must_be_immutable
class ZielortNachHauseScreen extends StatelessWidget {
  ZielortNachHauseScreen({Key? key})
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
                  _buildCurrentLocation(context),
                  SizedBox(height: 16.h),
                  const Header(text: "Abfahrten"),
                  BusDepartureSection(
                    buses: [
                      {'line': '281', 'destination': 'Hamburg Lattenkamp'},
                      {'line': '22', 'destination': 'S Blankenese'},
                    ],
                    time: "5 Minuten - 10:02",
                    journeyDuration: "Dauer: 1 Stunde 30 Minuten",
                    onTap: () => Void,
                  ),
                  const CustomDivider(),
                  BusDepartureSection(
                    buses: [
                      {'line': '181', 'destination': 'U S Sternschaze'},
                    ],
                    time: "40 Minuten - 10:37",
                    journeyDuration: "Dauer: 1 Stunde 25 Minuten",
                    onTap: () => Void,
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: CustomNavigationBar(
          onEinstellungPressed: () {
            Navigator.pushNamed(context, AppRoutes.einstellungScreen);
          },
        ),
      ),
    );
  }

  Widget _buildCurrentLocation(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.h),
          child: Column(
            children: [
              Text(
                "Zielort".toUpperCase(),
                style: theme.textTheme.displaySmall,
              ),
              Semantics(
                label:
                    "Automatische Erfassung der Position. Zur Zeit ermittelte Position:",
                child: CustomDisplayBar(
                  text: "Vogt-Kölln-Straße 30", // Static text
                  imagePath: ImageConstant.imgOrtungsIcon,
                  isEditable: false,
                ),
              ),
              SizedBox(height: 8.h),
              Semantics(
                label: "Ausgewählter Zielort:",
                child: CustomDisplayBar(
                  text: "Nach Hause", // Static text
                  imagePath: ImageConstant.imgSuchIcon,
                  isEditable: false,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  onTapEinstellungen(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.einstellungScreen);
  }
}
