import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../widgets/custom_outlined_button.dart';

class EinstellungenScreen extends StatelessWidget {
  const EinstellungenScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(vertical: 14.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.symmetric(horizontal: 22.h),
                    child: Column(
                      children: [
                        Text(
                          "Einstellungen".toUpperCase(),
                          style: CustomTextStyle.headlineLargeOrbitron,
                        ),
                        SizedBox(height: 28.h),
                        SizedBox(
                          width: double.maxFinite,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _buildAudioAnnouncementsButton(context),
                              SizedBox(height: 22.h),
                              SizedBox(
                                width: double.maxFinite,
                                child: Divider(),
                              ),
                              SizedBox(height: 22.h),
                              _buildVibrationFeedbackButton(context),
                              SizedBox(height: 22.h),
                              SizedBox(
                                width: double.maxFinite,
                                child: Divider(),
                              ),
                              SizedBox(height: 22.h),
                              _buildFontSizeButton(context),
                              SizedBox(height: 22.h),
                              SizedBox(
                                width: double.maxFinite,
                                child: Divider(),
                              ),
                              SizedBox(height: 22.h),
                              _buildColorSchemeButton(context),
                              SizedBox(height: 22.h),
                              SizedBox(
                                width: double.maxFinite,
                                child: Divider(),
                              ),
                              SizedBox(height: 22.h),
                              _buildDisturbanceReportButton(context)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 128.h),
                  SizedBox(
                    width: double.maxFinite,
                    child: Divider(),
                  ),
                  SizedBox(height: 12.h),
                  _buildNavigationBar(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAudioAnnouncementsButton(BuildContext context) {
    return CustomOutlinedButton(
      width: 204.h,
      text: "Sprachansagen",
      onPressed: () {},
    );
  }

  Widget _buildVibrationFeedbackButton(BuildContext context) {
    return CustomOutlinedButton(
      width: 234.h,
      text: "Vibrationsfeedback",
      onPressed: () {},
    );
  }

  Widget _buildFontSizeButton(BuildContext context) {
    return CustomOutlinedButton(
      width: 158.h,
      text: "Schriftgröße",
    );
  }

  Widget _buildColorSchemeButton(BuildContext context) {
    return CustomOutlinedButton(
      width: 156.h,
      text: "Farbschema",
      onPressed: () {},
    );
  }

  Widget _buildDisturbanceReportButton(BuildContext context) {
    return CustomOutlinedButton(
      width: 200.h,
      text: "Störungsmelder",
      onPressed: () {},
    );
  }

  _buildNavigationBar(BuildContext context) {
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

  onTapAudioAnnouncementsButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.sprachansagenScreen);
  }

  onTapVibrationFeedbackButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.vibrationsFeedbackScreen);
  }

  onTapColorSchemeButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.farbschemaScreen);
  }

  onTapDisturbanceReportButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.stoerungsmelderScreen);
  }
}
