import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../widgets/custom_outlined_button.dart';
import '../widgets/custom_search_view.dart';
import '../widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ZielortNachHauseScreen extends StatelessWidget {
  ZielortNachHauseScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  TextEditingController hamburgUController = TextEditingController();

  TextEditingController hamburgUSController = TextEditingController();

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
                  SizedBox(height: 12.h),
                  Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Text(
                      "Abfahrten",
                      style: theme.textTheme.headlineLarge,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 8.h,
                      right: 10.h,
                    ),
                    child: CustomTextFormField(
                      controller: hamburgUController,
                      hintText: "281 Hamburg U Lattenkamp",
                      prefix: Container(
                        margin: EdgeInsets.fromLTRB(8.h, 16.h, 4.h, 16.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgBus,
                          height: 20.h,
                          width: 20.h,
                        ),
                      ),
                      prefixConstraints: BoxConstraints(
                        maxHeight: 56.h,
                      ),
                      contentPadding:
                          EdgeInsets.fromLTRB(8.h, 12.h, 12.h, 12.h),
                      borderDecoration:
                          TextFormFieldStyleHelper.outlinePrimaryTL8,
                      filled: false,
                    ),
                  ),
                  SizedBox(height: 12.h),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 8.h,
                      right: 28.h,
                    ),
                    child: CustomTextFormField(
                      controller: hamburgUSController,
                      hintText: "22 Hamburg S Blankenese",
                      textInputAction: TextInputAction.done,
                      prefix: Container(
                        margin: EdgeInsets.fromLTRB(8.h, 16.h, 4.h, 16.h),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgBus,
                          height: 20.h,
                          width: 20.h,
                        ),
                      ),
                      prefixConstraints: BoxConstraints(
                        maxHeight: 56.h,
                      ),
                      contentPadding:
                          EdgeInsets.fromLTRB(8.h, 12.h, 12.h, 12.h),
                      borderDecoration:
                          TextFormFieldStyleHelper.outlinePrimaryTL8,
                      filled: false,
                    ),
                  ),
                  SizedBox(height: 12.h),
                  Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Text(
                      "5 Minuten - 10:02",
                      style: theme.textTheme.headlineSmall,
                    ),
                  ),
                  SizedBox(height: 12.h),
                  Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Text(
                      "Dauer 1h 30 Minuten",
                      style: theme.textTheme.headlineSmall,
                    ),
                  ),
                  SizedBox(height: 24.h),
                  SizedBox(
                    width: 334.h,
                    child: Divider(
                      indent: 8.h,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  CustomOutlinedButton(
                    width: 276.h,
                    text: "181 U S Sternschanze",
                    margin: EdgeInsets.only(left: 8.h),
                    leftIcon: Container(
                      margin: EdgeInsets.only(right: 4.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgBus,
                        height: 20.h,
                        width: 20.h,
                      ),
                    ),
                  ),
                  SizedBox(height: 12.h),
                  Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Text(
                      "40 Minuten - 10:37",
                      style: theme.textTheme.headlineSmall,
                    ),
                  ),
                  SizedBox(height: 12.h),
                  Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Text(
                      "Dauer: 1h 25 Minuten",
                      style: theme.textTheme.headlineSmall,
                    ),
                  ),
                  SizedBox(height: 50.h),
                  SizedBox(
                    width: double.maxFinite,
                    child: Divider(),
                  ),
                  SizedBox(height: 12.h),
                  _buildNavigationBar(context),
                  SizedBox(height: 2.h),
                ],
              ),
            ),
          ),
        ),
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
              SizedBox(
                height: 96.h,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    IntrinsicHeight(
                      child: Container(
                        height: 48.h,
                        margin: EdgeInsets.only(right: 2.h),
                        padding: EdgeInsets.symmetric(
                          horizontal: 8.h,
                          vertical: 10.h,
                        ),
                        decoration: AppDecoration.outlinerPrimary1.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder12,
                        ),
                        child: Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgOrtungsIcon,
                              height: 24.h,
                              width: 24.h,
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: 12.h,
                                  top: 2.h,
                                ),
                                child: Text(
                                  "Vögt-Kölln-Straße 30",
                                  style: theme.textTheme.titleMedium,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Zielort".toUpperCase(),
                        style: theme.textTheme.displaySmall,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 16.h),
              Padding(
                padding: EdgeInsets.only(right: 2.h),
                child: CustomSearchView(
                  controller: searchController,
                  hintText: "Nach Hause",
                  contentPadding: EdgeInsets.fromLTRB(8.h, 10.h, 22.h, 10.h),
                  borderDecoration: SearchViewStyleHelper.outlinePrimary,
                  filled: true,
                  fillColor: appTheme.whiteA700.withOpacity(0.1),
                ),
              )
            ],
          ),
        ),
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

  onTapEinstellungen(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.einstellungScreen);
  }
}
