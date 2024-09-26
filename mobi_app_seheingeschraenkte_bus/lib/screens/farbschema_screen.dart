import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../widgets/app_bar_builder.dart';
import '../widgets/custom_navigation_bar.dart';
import '../widgets/custom_switch.dart';

// ignore_for_file: must_be_immutable
class FarbschemaScreen extends StatefulWidget {
  FarbschemaScreen({Key? key})
      : super(
          key: key,
        );

  @override
  _FarbschemaScreenState createState() => _FarbschemaScreenState();
}

class _FarbschemaScreenState extends State<FarbschemaScreen> {
  bool isSelectedSwitchWB = false;

  bool isSelctedSwitchBW = false;

  bool isSelctedSwitchBY = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: const CustomAppBar(
          titleText: 'Farbschema',
        ),
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 10.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  _buildFunction(context),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: const CustomNavigationBar(),
      ),
    );
  }

  Widget _buildFunction(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 22.h),
      child: Column(
        children: [
          CustomSwitch(
            label: "Weiß und Schwarz",
            value: isSelectedSwitchWB,
            onChanged: (value) {
              setState(() {
                isSelectedSwitchWB = value;
              });
            },
          ),
          SizedBox(height: 32.h),
          Divider(),
          SizedBox(height: 32.h),
          CustomSwitch(
            label: "Schwarz und Weiß",
            value: isSelctedSwitchBW,
            onChanged: (value) {
              setState(() {
                isSelctedSwitchBW = value;
              });
            },
          ),
          SizedBox(height: 32.h),
          Divider(),
          SizedBox(height: 32.h),
          CustomSwitch(
            label: "Schwarz und Gelb",
            value: isSelctedSwitchBY,
            onChanged: (value) {
              setState(() {
                isSelctedSwitchBY = value;
              });
            },
          ),
        ],
      ),
    );
  }

  onTapBackarrow(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.einstellungScreen);
  }
}
