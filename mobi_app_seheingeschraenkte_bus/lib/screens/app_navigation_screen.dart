import 'package:flutter/material.dart';
import 'package:mobi_app_seheingeschraenkte_bus/widgets/custom_search_view.dart';
import '../core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color(0XFFFFFFF),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 10.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.h),
                      child: Text(
                        "App Navigation",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0XFFFFFFF),
                          fontSize: 20.fSize,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Padding(
                      padding: EdgeInsets.only(left: 20.h),
                      child: Text(
                        "Check your apps's UI from the bewlo emo screns of your app",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0XFFFFFFF),
                          fontSize: 16.fSize,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Divider(
                      height: 1.h,
                      thickness: 1.h,
                      color: Color(0XFFFFFFF),
                    )
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Radar",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.radarScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Bus ausgewählt",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.busAusgewaehltScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Haltestelle ausgewählt",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.haltestelleAusgewaehltScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Zielort",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.zielortScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Zielort nach Hause",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.zielortNachHause),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Einstellung",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.einstellungScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sprachansagen",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.busAusgewaehltScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Vibtrationsfeedback",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.vibrationsFeedbackScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Störungsmelder",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.stoerungsmelderScreen),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle?.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                screenTitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 10.h),
            SizedBox(height: 5.h),
            Divider(
              height: 1.h,
              thickness: 1.h,
              color: Color(0XFF0000000),
            )
          ],
        ),
      ),
    );
  }

  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
