import 'dart:ffi';
import 'package:flutter/material.dart';
import '../widgets/bus_departure_section.dart';
import '../widgets/common_widgets.dart';
import '../core/app_export.dart';
import '../widgets/custom_display.dart';
import '../widgets/custom_navigation_bar.dart';

// ignore_for_file: must_be_immutable
class RadarScreen extends StatelessWidget {
  RadarScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

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
                  _buildRadarColumn(context),
                  SizedBox(height: 22.h),
                  BusDepartureSection(
                    buses: [
                      {'line': '281', 'destination': 'Hamburg Lattenkamp'},
                    ],
                    time: "5 Minuten - 10:02",
                    onTap: () => onTap281HamburgULattenkamp(context),
                  ),
                  const CustomDivider(),
                  BusDepartureSection(
                    buses: [
                      {'line': '181', 'destination': 'Jaarsmoor'},
                    ],
                    time: "8 Minuten - 10:05",
                    onTap: () => Void,
                  ),
                  const CustomDivider(),
                  BusDepartureSection(
                    buses: [
                      {'line': '281 S', 'destination': 'Krupunder'},
                    ],
                    time: "12 Minuten - 10:09",
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

  Widget _buildRadarColumn(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.h),
          child: Column(
            children: [
              Text(
                "Radar".toUpperCase(),
                style: theme.textTheme.displaySmall,
              ),
              Semantics(
                label:
                    "Automatische Erfassung der nächst gelegenen Bushaltestelle. Zur Zeit ermittelte Haltestelle:",
                child: CustomDisplayBar(
                  text: "Informatikum", // Static text
                  imagePath: ImageConstant.imgOrtungsIcon,
                  isEditable: false,
                ),
              ),
              SizedBox(height: 4.h),
              Semantics(
                label: "Alternative zur automatischen Erfassung",
                child: TextFormField(
                  controller: searchController,
                  decoration: InputDecoration(
                    hintText: "Manuelle Suche nach Haltestellen",
                    hintStyle: theme.textTheme.titleMedium,
                    contentPadding: EdgeInsets.fromLTRB(8.h, 4.h, 32.h, 4.h),
                    prefixIcon: ExcludeSemantics(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.h),
                        child: Image.asset(
                          ImageConstant.imgBus,
                          height: 24.h,
                          width: 24.h,
                        ),
                      ),
                    ),
                    prefixIconConstraints: BoxConstraints(
                      maxHeight: 36.h,
                      minWidth: 36.h,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.h),
                      borderSide: BorderSide(
                        color: theme.colorScheme.primary,
                        width: 3,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.h),
                      borderSide: BorderSide(
                        color: theme.colorScheme.primary,
                        width: 3,
                      ),
                    ),
                    fillColor: appTheme.whiteA700.withOpacity(0.1),
                    filled: true,
                  ),
                  autofocus: false,
                  keyboardType: TextInputType.text,
                  enableInteractiveSelection: false,
                ),
              ),
              SizedBox(height: 16.h),
              const Header(text: "Abfahrten"),
            ],
          ),
        ),
      ),
    );
  }

  onTap281HamburgULattenkamp(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.busAusgewaehltScreen);
  }
}
