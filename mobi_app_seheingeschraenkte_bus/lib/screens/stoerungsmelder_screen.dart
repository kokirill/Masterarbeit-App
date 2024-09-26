import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../widgets/app_bar_builder.dart';
import '../widgets/custom_navigation_bar.dart';
import '../widgets/custom_switch.dart';

// ignore_for_file: must_be_immutable
class StoerungsmelderScreen extends StatefulWidget {
  StoerungsmelderScreen({Key? key})
      : super(
          key: key,
        );

  @override
  _StoerungsmelderScreenState createState() => _StoerungsmelderScreenState();
}

class _StoerungsmelderScreenState extends State<StoerungsmelderScreen> {
  bool isSelectedSwitch = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: const CustomAppBar(
          titleText: 'Störungsmelder',
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
                  _buildPush(context),
                  SizedBox(height: 32.h),
                  _buildClickableBox(
                    context,
                    "Bestimmung des Zeitraums, in dem Störungen relevant sind",
                  ),
                  SizedBox(height: 16.h),
                  _buildClickableBox(
                    context,
                    "Störungsmelder für bevorzugte Routen anzeigen",
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

  Widget _buildPush(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 22.h),
      child: Column(
        children: [
          CustomSwitch(
            label: "Push-Benachrichtigung für bevorzugte Routen",
            value: isSelectedSwitch,
            onChanged: (value) {
              setState(() {
                isSelectedSwitch = value;
              });
            },
          ),
        ],
      ),
    );
  }

  Widget _buildClickableBox(BuildContext context, String text) {
    return GestureDetector(
      onTap: () {},
      child: FractionallySizedBox(
        widthFactor: 0.9, // Use 80% of the parent's width
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.black, width: 2),
          ),
          padding: EdgeInsets.all(16.0),
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
      ),
    );
  }
}
