import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:responsive_framework/responsive_row_column.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:responsive_test/%C4%91ata/model/dashboard_item.dart';
import 'package:responsive_test/%C4%91ata/repository/repository.dart';
import 'package:responsive_test/ui/widget/info_view_widget.dart';

import '../../đata/model/dashboard_item2.dart';
import 'main_dashboard_widget.dart';

class MainViewWidget extends StatefulWidget {
  const MainViewWidget({Key? key}) : super(key: key);

  @override
  _MainViewWidgetState createState() => _MainViewWidgetState();
}

class _MainViewWidgetState extends State<MainViewWidget> {
  late List<DashboardItem> listDashboardItem;
  late List<DashboardItem2> listDashboardItem2;

  @override
  void initState() {
    super.initState();
    listDashboardItem = Repository().getListDashboardItem();
    listDashboardItem2 = Repository().getListDashboardItem2();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(
            horizontal:
                (ResponsiveWrapper.of(context).isLargerThan(MOBILE) ? 52 : 16),
            vertical: 26),
        child: ResponsiveRowColumn(
          rowMainAxisSize: MainAxisSize.min,
          rowCrossAxisAlignment: CrossAxisAlignment.start,
          layout: ResponsiveWrapper.of(context).isLargerThan(TABLET)
              ? ResponsiveRowColumnType.ROW
              : ResponsiveRowColumnType.COLUMN,
          children: [
            ResponsiveRowColumnItem(
                child: (ResponsiveWrapper.of(context).isLargerThan(TABLET))
                    ? Flexible(
                        flex: 2,
                        child: MainDashboardWidget(
                            listDashboardItem: listDashboardItem, listDashboardItem2: listDashboardItem2),
                      )
                    : MainDashboardWidget(
                        listDashboardItem: listDashboardItem, listDashboardItem2 : listDashboardItem2)),
            (ResponsiveWrapper.of(context).isLargerThan(TABLET))
                ? const ResponsiveRowColumnItem(child: SizedBox(width: 20))
                : const ResponsiveRowColumnItem(child: SizedBox(height: 20)),
            ResponsiveRowColumnItem(
                child: (ResponsiveWrapper.of(context).isLargerThan(TABLET))
                    ? const Flexible(flex: 1, child: InfoViewWidget())
                    : const InfoViewWidget())
          ],
        ));
  }
}
