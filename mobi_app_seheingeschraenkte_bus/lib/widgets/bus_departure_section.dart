// Common Widget for Bus Departure Section
import 'package:flutter/material.dart';
import '../core/app_export.dart';
import 'custom_image_view.dart';

class BusDepartureSection extends StatelessWidget {
  final List<Map<String, String>>
      buses; // List of buses with line and destination
  final String time;
  final String? journeyDuration; // Optional journey duration text
  final VoidCallback? onTap;

  const BusDepartureSection({
    Key? key,
    required this.buses,
    required this.time,
    this.journeyDuration,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (var bus in buses) ...[
            Padding(
              padding: EdgeInsets.only(left: 5.h),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 12.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.h),
                  border: Border.all(
                    color: Colors.black,
                    width: 3.0,
                  ),
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgBus,
                      height: 20.h,
                      width: 20.h,
                      margin: EdgeInsets.only(right: 8.h),
                    ),
                    Text(
                      "${bus['line']} ${bus['destination']}",
                      style: theme.textTheme.headlineSmall,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 12.h),
          ],
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: Semantics(
              label: "Ankunftszeit",
              child: Text(
                time,
                style: theme.textTheme.headlineSmall,
              ),
            ),
          ),
          if (journeyDuration != null) ...[
            SizedBox(height: 8.h),
            Padding(
              padding: EdgeInsets.only(left: 10.h),
              child: Text(
                journeyDuration!,
                style: theme.textTheme.headlineSmall,
              ),
            ),
          ],
          SizedBox(height: 24.h),
        ],
      ),
    );
  }
}
