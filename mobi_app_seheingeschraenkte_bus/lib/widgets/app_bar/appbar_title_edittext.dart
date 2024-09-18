import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../custom_text_form_field.dart';

class AppbarTitleEdittext extends StatelessWidget {
  AppbarTitleEdittext({Key? key, this.hintText, this.controller, this.margin})
      : super(
          key: key,
        );

  final String? hintText;

  final TextEditingController? controller;

  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: SizedBox(
        width: double.maxFinite,
        child: CustomTextFormField(
          controller: controller,
          hintText: "281 Hamburg U LattenKamp",
          prefix: Container(
            margin: EdgeInsets.fromLTRB(8.h, 10.h, 10.h, 10.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgBus,
              height: 22.h,
              width: 20.h,
            ),
          ),
          prefixConstraints: BoxConstraints(
            maxHeight: 50.h,
          ),
          contentPadding: EdgeInsets.fromLTRB(8.h, 10.h, 22.h, 10.h),
          borderDecoration: TextFormFieldStyleHelper.outlinePrimaryTL8,
          filled: false,
        ),
      ),
    );
  }
}
