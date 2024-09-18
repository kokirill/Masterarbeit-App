import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../widgets/app_bar/apppbar_leading_image.dart';
import '../widgets/app_bar/appbar_title.dart';
import '../widgets/app_bar/custom_app_bar.dart';
import '../widgets/custom_drop_down.dart';
import '../widgets/custom_switch.dart';

// ignore_for_file: must_be_immutable
class SprachansagenScreen extends StatelessWidget {
  SprachansagenScreen({Key? key})
      : super(
          key: key,
        );

  bool isSelctedVorlesen = false;

  bool isSelectedAnkommenderBus = false;

  List<String> dropdownItemList = [
    "3 Minuten vor Ankunfg",
    "1 Minute vor Ankunft",
    "bei Ankunft"
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 16.h),
          child: Column(
            children: [
              SizedBox(height: 28.h),
              _buildReadingFunction(context),
              Spacer(),
              SizedBox(
                width: double.maxFinite,
                child: Divider(),
              ),
              SizedBox(height: 12.h),
              _buildNavigationBar(context)
            ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 35.h,
      leading: ApppbarLeadingImage(
        imagePath: ImageConstant.imgZurueckKnopf,
        margin: EdgeInsets.only(
          left: 11.h,
          top: 16.h,
          bottom: 16.h,
        ),
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "Sprachansagen".toUpperCase(),
      ),
    );
  }

  Widget _buildNavigationBar(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 6.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRadarKnopf,
                height: 50.h,
                width: 54.h,
                margin: EdgeInsets.only(left: 2.h),
              ),
              Text(
                "Radar",
                style: theme.textTheme.headlineSmall,
              )
            ],
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(left: 10.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgZielOrtKnopf,
                    height: 54.h,
                    width: 54.h,
                    margin: EdgeInsets.only(right: 10.h),
                  ),
                  Text(
                    "Zielort",
                    style: theme.textTheme.headlineSmall,
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 10.h),
              child: Column(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEinstellungsKnopf,
                    height: 52.h,
                    width: 54.h,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child:
                        Text("Einstellung", style: theme.textTheme.titleLarge),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildReadingFunction(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 22.h),
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Vorlese Funktion",
                  style: theme.textTheme.headlineLarge,
                ),
                SizedBox(width: 12.h),
                CustomSwitch(
                  value: isSelctedVorlesen,
                  onChanged: (value) {
                    isSelctedVorlesen = value;
                  },
                )
              ],
            ),
          ),
          SizedBox(height: 32.h),
          SizedBox(
            width: double.maxFinite,
            child: Divider(
              endIndent: 2.h,
            ),
          ),
          SizedBox(height: 32.h),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Ankommender Bus",
                  style: theme.textTheme.headlineLarge,
                ),
                SizedBox(width: 14.h),
                CustomSwitch(
                  value: isSelectedAnkommenderBus,
                  onChanged: (value) {
                    isSelectedAnkommenderBus = value;
                  },
                )
              ],
            ),
          ),
          SizedBox(height: 32.h),
          Padding(
            padding: EdgeInsets.only(right: 6.h),
            child: CustomDropDown(
              icon: Container(
                margin: EdgeInsets.only(left: 16.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgAufklappKnopf,
                  height: 20.h,
                  width: 24.h,
                ),
              ),
              iconSize: 20.h,
              hintText: "Auswahlmöglichkeiten",
              items: dropdownItemList,
              contentPadding: EdgeInsets.fromLTRB(8.h, 12.h, 12.h, 12.h),
            ),
          )
        ],
      ),
    );
  }

  onTapZurueck(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.einstellungScreen);
  }
}
