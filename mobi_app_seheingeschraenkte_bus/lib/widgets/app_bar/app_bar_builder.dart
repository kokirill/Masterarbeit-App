import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import '../../core/app_export.dart';
import 'apppbar_leading_image.dart';
import 'custom_app_bar.dart';

PreferredSizeWidget buildAppBar({
  required BuildContext context,
  required String titleText,
}) {
  return CustomAppBar(
    leadingWidth: 35.h,
    leading: Semantics(
      label: "Zurück",
      button: true,
      child: ApppbarLeadingImage(
        imagePath: ImageConstant.imgZurueckKnopf,
        margin: EdgeInsets.only(left: 11.h, top: 15.h, bottom: 16.h),
      ),
    ),
    centerTitle: true,
    title: Text(
      titleText,
      style: theme.textTheme.headlineSmall,
    ),
  );
}
