import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_test/ui/widget/recent_activity_widget.dart';
import 'package:responsive_test/ui/widget/upcoming_schedule_widget.dart';

class InfoViewWidget extends StatefulWidget {
  const InfoViewWidget({Key? key}) : super(key: key);

  @override
  _InfoViewWidgetState createState() => _InfoViewWidgetState();
}

class _InfoViewWidgetState extends State<InfoViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ResponsiveRowColumn(
          rowCrossAxisAlignment: CrossAxisAlignment.start,
          layout:
          (ResponsiveWrapper.of(context).isTablet)
              ? ResponsiveRowColumnType.ROW
              : ResponsiveRowColumnType.COLUMN,
          children: [
            ResponsiveRowColumnItem(child: (ResponsiveWrapper.of(context).isDesktop) ? const SizedBox(height: 50) : Container()),
            ResponsiveRowColumnItem(
                child: (!ResponsiveWrapper.of(context).isTablet) ? const RecentActivityWidget() : const Flexible(
                  flex: 2,
                    child: RecentActivityWidget())),
            ResponsiveRowColumnItem(child: (ResponsiveWrapper.of(context).isTablet) ? const SizedBox(width: 16) : const SizedBox(height: 16,)),
            ResponsiveRowColumnItem(child: (!ResponsiveWrapper.of(context).isTablet) ? const UpcomingSchedleWidget() : const Flexible(
              flex: 3,
                child: UpcomingSchedleWidget()))
          ],
        )
      // child: RecentActivityWidget(),
    );
  }
}
