import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../widgets/app_bar/appbar_title.dart';
import '../widgets/app_bar/apppbar_leading_image.dart';
import '../widgets/app_bar/appbar_subtitle.dart';
import '../widgets/app_bar/custom_app_bar.dart';
import '../widgets/custom_switch.dart';

// ignore_for_file: must_be_immutable
class StoerungsmelderScreen extends StatelessWidget {
  StoerungsmelderScreen({Key? key})
      : super(
          key: key,
        );

  bool isSelectedSwitch = false;

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
              SizedBox(height: 26.h),
              _buildPushNotificaton(context),
              SizedBox(height: 26.h),
              _buildRelevantPeriod(context),
              SizedBox(height: 28.h),
              _buildPreferredRoutes(context),
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

  Widget _buildPushNotificaton(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 10.h,
        right: 16.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              "Push-Benachrichtigung \nfür bevurzugte Routen",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyle.titleLarge22,
            ),
          ),
          SizedBox(width: 16.h),
          CustomSwitch(
            margin: EdgeInsets.only(top: 6.h),
            value: isSelectedSwitch,
            onChanged: (value) {
              isSelectedSwitch = value;
            },
          )
        ],
      ),
    );
  }

  Widget _buildRelevantPeriod(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 10.h,
        right: 14.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 6.h,
      ),
      decoration: AppDecoration.outlinerPrimary1.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.h),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 4.h),
            padding: EdgeInsets.symmetric(horizontal: 14.h),
            child: Column(
              children: [
                Text(
                  "Bestimmung des Zeitraums, in dem Störungen relevant sind",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyle.titleMedium18,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildPreferredRoutes(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 10.h,
        right: 14.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 6.h,
      ),
      decoration: AppDecoration.outlinerPrimary1.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.h),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 4.h),
            padding: EdgeInsets.symmetric(horizontal: 14.h),
            child: Column(
              children: [
                Text(
                  "Störungsmelder für bevorzugte Routen anzeigen",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyle.titleMedium18,
                )
              ],
            ),
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
}
