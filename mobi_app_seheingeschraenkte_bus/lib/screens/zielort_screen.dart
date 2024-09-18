import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../widgets/custom_outlined_button.dart';
import '../widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class ZielortScreen extends StatelessWidget {
  ZielortScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Expanded(
                child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(vertical: 12.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildCurrentLocation(context),
                      SizedBox(height: 16.h),
                      CustomOutlinedButton(
                        width: 150.h,
                        text: "Nach Hause",
                        margin: EdgeInsets.only(left: 10.h),
                        onPressed: () {},
                      ),
                      SizedBox(height: 24.h),
                      SizedBox(
                        width: 336.h,
                        child: Divider(
                          indent: 10.h,
                        ),
                      ),
                      SizedBox(height: 20.h),
                      Container(
                        margin: EdgeInsets.only(left: 10.h),
                        padding: EdgeInsets.symmetric(
                          horizontal: 4.h,
                          vertical: 8.h,
                        ),
                        decoration: AppDecoration.outlinePrimary.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder8,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Arbeit",
                              style: theme.textTheme.headlineSmall,
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 24.h),
                      SizedBox(
                        width: 336.h,
                        child: Divider(
                          indent: 10.h,
                        ),
                      ),
                      SizedBox(height: 20.h),
                      CustomOutlinedButton(
                        width: 318.h,
                        text: "Neue Favoriten hinzufügen",
                        margin: EdgeInsets.only(left: 10.h),
                      ),
                      Spacer(),
                      SizedBox(
                        width: double.maxFinite,
                        child: Divider(),
                      ),
                      SizedBox(height: 12.h),
                      _buildNavigationBar(context),
                      SizedBox(height: 2.h)
                    ],
                  ),
                ),
              )
            ],
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
                                  "Vogt-Kölln-Straße 30",
                                  style: theme.textTheme.titleMedium,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
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
                  hintText: "Wohing möchtest du?",
                  contentPadding: EdgeInsets.fromLTRB(8.h, 10.h, 22.h, 10.h),
                  borderDecoration: SearchViewStyleHelper.outlinePrimary,
                  filled: true,
                  fillColor: appTheme.whiteA700.withOpacity(0.1),
                ),
              ),
              SizedBox(height: 30.h),
              Text("Favoriten", style: CustomTextStyle.displaySmallExo)
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

  onTapNachHause(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.zielortNachHause);
  }
}
