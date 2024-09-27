import 'dart:ffi';
import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../widgets/common_widgets.dart';
import '../widgets/custom_navigation_bar.dart';
import '../widgets/custom_outlined_button.dart';
import 'sprachansagen_screen.dart';

class EinstellungenScreen extends StatefulWidget {
  const EinstellungenScreen({Key? key}) : super(key: key);

  @override
  _EinstellungenScreenState createState() => _EinstellungenScreenState();
}

class _EinstellungenScreenState extends State<EinstellungenScreen> {
  final FocusNode _titleFocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    // Request focus on the title after the screen is built
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(Duration(milliseconds: 300), () {
        _titleFocusNode.requestFocus();
      });
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
                  _buildEinstellungenColumn(context),
                  SizedBox(height: 40.h),
                  CustomOutlinedButton(
                      text: "Sprachansagen", onTap: () => Void),
                  SizedBox(height: 16.h),
                  const CustomDivider(),
                  CustomOutlinedButton(
                      text: "Vibrationsfeedback", onTap: () => Void),
                  SizedBox(height: 16.h),
                  const CustomDivider(),
                  CustomOutlinedButton(
                    text: "Schriftgröße",
                    onTap: () => Void,
                  ),
                  SizedBox(height: 16.h),
                  const CustomDivider(),
                  CustomOutlinedButton(text: "Farbschema", onTap: () => Void),
                  SizedBox(height: 16.h),
                  const CustomDivider(),
                  CustomOutlinedButton(
                      text: "Störungsmelder", onTap: () => Void),
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
              Semantics(
                label: "Einstellung Titel",
                child: Focus(
                  focusNode: _titleFocusNode,
                  child: Text(
                    "Einstellung".toUpperCase(),
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                ),
              ),
              SizedBox(height: 16.h),
            ],
          ),
        ),
      ),
    );
  }
}
