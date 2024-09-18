import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../widgets/app_bar/apppbar_leading_image.dart';
import '../widgets/app_bar/appbar_title.dart';
import '../widgets/app_bar/custom_app_bar.dart';
import '../widgets/custom_switch.dart';

// ignore_for_file: must_be_immutable
class FarbschemaScreen extends StatelessWidget {
  FarbschemaScreen({Key? key})
      : super(
          key: key,
        );

  bool isSelectedSwitchWB = false;

  bool isSelctedSwitchBW = false;

  bool isSelctedSwitchBY = false;

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
              _buildColorSchemeWB(context),
              SizedBox(height: 10.h),
              _buildDivider(context),
              SizedBox(height: 28.h),
              _buildColorSchemeBW(context),
              SizedBox(height: 14.h),
              _buildDivider(context),
              SizedBox(height: 28.h),
              _buildColorSchemeBY(context),
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
        text: "Farbschema".toUpperCase(),
      ),
    );
  }

  Widget _buildDivider(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 22.h),
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Divider(),
          )
        ],
      ),
    );
  }

  Widget _buildColorSchemeWB(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Weiß und Schwarz",
            style: theme.textTheme.headlineLarge,
          ),
          SizedBox(width: 18.h),
          CustomSwitch(
            value: isSelctedSwitchBY,
            onChanged: (value) {
              isSelctedSwitchBY = value;
            },
          )
        ],
      ),
    );
  }

  Widget _buildColorSchemeBW(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Schwarz und Weiß",
            style: theme.textTheme.headlineLarge,
          ),
          SizedBox(width: 18.h),
          CustomSwitch(
            value: isSelctedSwitchBY,
            onChanged: (value) {
              isSelctedSwitchBY = value;
            },
          )
        ],
      ),
    );
  }

  Widget _buildColorSchemeBY(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Schwarz und Gelb",
            style: theme.textTheme.headlineLarge,
          ),
          SizedBox(width: 18.h),
          CustomSwitch(
            value: isSelctedSwitchBY,
            onChanged: (value) {
              isSelctedSwitchBY = value;
            },
          )
        ],
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

  onTapBackarrow(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.einstellungScreen);
  }
}
