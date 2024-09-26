import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import '../core/app_export.dart';
import '../widgets/app_bar_builder.dart';
import '../widgets/custom_drop_down.dart';
import '../widgets/custom_navigation_bar.dart';
import '../widgets/custom_switch.dart';

class SprachansagenScreen extends StatefulWidget {
  SprachansagenScreen({Key? key}) : super(key: key);

  @override
  _SprachansagenScreenState createState() => _SprachansagenScreenState();
}

class _SprachansagenScreenState extends State<SprachansagenScreen> {
  bool isSelectedVorlesen = false;
  bool isSelectedAnkommenderBus = false;

  List<String> dropdownItemList = [
    "3 Minuten vor Ankunft",
    "1 Minute vor Ankunft",
    "bei Ankunft"
  ];

  // Track the selected value
  String selectedDropdownValue = "3 Minuten vor Ankunft";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: const CustomAppBar(
          titleText: 'Spracheinstellungen',
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
                  _buildReadingFunction(context),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: const CustomNavigationBar(),
      ),
    );
  }

  Widget _buildReadingFunction(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 22.h),
      child: Column(
        children: [
          CustomSwitch(
            label: "Vorlese Funktion",
            value: isSelectedVorlesen,
            onChanged: (value) {
              setState(() {
                isSelectedVorlesen = value;
              });
            },
          ),
          SizedBox(height: 32.h),
          Divider(),
          SizedBox(height: 32.h),
          CustomSwitch(
            label: "Ankommender Bus",
            value: isSelectedAnkommenderBus,
            onChanged: (value) {
              setState(() {
                isSelectedAnkommenderBus = value;
              });
            },
          ),
          SizedBox(height: 32.h),
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

  onTapZurueck(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.einstellungScreen);
  }
}
