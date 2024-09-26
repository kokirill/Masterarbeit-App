import 'dart:ffi';
import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../widgets/common_widgets.dart';
import '../widgets/custom_display.dart';
import '../widgets/custom_navigation_bar.dart';
import '../widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class ZielortScreen extends StatefulWidget {
  @override
  _ZielortScreenState createState() => _ZielortScreenState();
}

class _ZielortScreenState extends State<ZielortScreen> {
  final FocusNode _titleFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    // Request focus on the title after the screen is built
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _titleFocusNode.requestFocus();
    });
  }

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
                  const Header(text: "Favoriten"),
                  SizedBox(height: 18.h),
                  CustomOutlinedButton(
                    text: "Nach Hause",
                    onTap: () => Navigator.pushNamed(
                        context, AppRoutes.zielortNachHause),
                  ),
                  SizedBox(height: 16.h),
                  const CustomDivider(),
                  CustomOutlinedButton(
                    text: "Arbeit",
                    onTap: () => Void,
                  ),
                  SizedBox(height: 16.h),
                  const CustomDivider(),
                  CustomOutlinedButton(
                    text: "Neue Favoriten hinzufügen",
                    onTap: () => Void,
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: CustomNavigationBar(),
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
              Semantics(
                label: "Zielort Titel",
                child: Focus(
                  focusNode: _titleFocusNode, // Assign FocusNode to title
                  child: Text(
                    "Zielort".toUpperCase(),
                    style: theme.textTheme.displaySmall,
                  ),
                ),
              ),
              Semantics(
                label:
                    "Automatische Erfassung der Position. Zur Zeit ermittelte Position:",
                child: CustomDisplayBar(
                  text: "Vogt-Kölln-Straße 30",
                  imagePath: ImageConstant.imgOrtungsIcon,
                  isEditable: false,
                ),
              ),
              SizedBox(height: 8.h),
              Semantics(
                label: "Manuelle Eingabe:",
                child: CustomDisplayBar(
                  text: "Gebe dein Zielort an",
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

  @override
  void dispose() {
    _titleFocusNode.dispose();
    super.dispose();
  }
}
