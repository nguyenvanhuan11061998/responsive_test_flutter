


import 'dart:ui';

import 'package:responsive_test/%C4%91ata/model/dashboard_item.dart';
import 'package:responsive_test/gen/assets.gen.dart';

import '../model/dashboard_item2.dart';
import '../model/dashboard_model.dart';

class Repository {
  List<Dashboard> getListDashboard() {
    List<Dashboard> list = [
      Dashboard(Assets.icons.icDashboard, 'Dashboard'),
      Dashboard(Assets.icons.icRecruitment, 'Recruitment'),
      Dashboard(Assets.icons.icSchedule, 'Schedule'),
      Dashboard(Assets.icons.icEmployee, 'Employee'),
      Dashboard(Assets.icons.icDepartment, 'Department'),
    ];
    return list;
  }

  List<Dashboard> getListDashboardOther() {
    List<Dashboard> list = [
      Dashboard(Assets.icons.icSupport, 'Support'),
      Dashboard(Assets.icons.icSetting, 'Settings'),
    ];
    return list;
  }
  
  List<DashboardItem> getListDashboardItem() {
    List<DashboardItem> list = [
      DashboardItem('Available Position', '24', '4 Urgently needed', const Color(0xffFFEFE7)),
      DashboardItem('Job Open', '10', '4 Active hiring', const Color(0xffE8F0FB)),
      DashboardItem('New Employees', '24', '4 Department', const Color(0xffFDEBF9))
    ];
    return list;
  }

  List<DashboardItem2> getListDashboardItem2() {
    List<DashboardItem2> list = [
      DashboardItem2('Total Employees', '216', '120 Men', '96 Women', '+2% Past month'),
      DashboardItem2('Talent Request', '16', '10 Women', '6 Men', '+5% Past month'),
    ];
    return list;
  }
}