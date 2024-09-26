import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../widgets/app_bar_builder.dart';
import '../widgets/custom_drop_down.dart';
import '../widgets/custom_navigation_bar.dart';
import '../widgets/custom_switch.dart';

// ignore_for_fiel: must_be_immutable
class VibrationsFeedbackScreen extends StatefulWidget {
  VibrationsFeedbackScreen({Key? key})
      : super(
          key: key,
        );

  @override
  _VibrationsFeedbackScreenState createState() =>
      _VibrationsFeedbackScreenState();
}

class _VibrationsFeedbackScreenState extends State<VibrationsFeedbackScreen> {
  bool switchVibtraion = false;

  bool switchNaechsteBushalte = false;

  bool switchZielhaltestelle = false;

  bool switchAnkommenderBus = false;

  List<String> dropdownItemList = [
    "3 Minuten vor Ankunft",
    "1 Minute vor Ankunft",
    "bei Ankunft"
  ];

  String selectedDropdownValue = "3 Minuten vor Ankunft";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: const CustomAppBar(
          titleText: 'Vibrations Feedback',
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
            label: "Nächste Bushaltestelle",
            value: switchNaechsteBushalte,
            onChanged: (value) {
              setState(() {
                switchNaechsteBushalte = value;
              });
            },
          ),
          SizedBox(height: 32.h),
          Divider(),
          SizedBox(height: 32.h),
          CustomSwitch(
            label: "Zielhaltestelle",
            value: switchZielhaltestelle,
            onChanged: (value) {
              setState(() {
                switchZielhaltestelle = value;
              });
            },
          ),
          SizedBox(height: 32.h),
          Divider(),
          SizedBox(height: 32.h),
          CustomSwitch(
            label: "Ankommender Bus",
            value: switchAnkommenderBus,
            onChanged: (value) {
              setState(() {
                switchAnkommenderBus = value;
              });
            },
          ),
          CustomDropdown(
            dropdownItemList: dropdownItemList,
            selectedValue: selectedDropdownValue,
            onChanged: (newValue) {
              setState(() {
                selectedDropdownValue = newValue;
              });
            },
          ),
        ],
      ),
    );
  }
}
