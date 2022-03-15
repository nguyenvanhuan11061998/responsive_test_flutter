import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_test/%C4%91ata/model/dashboard_model.dart';
import 'package:responsive_test/%C4%91ata/repository/repository.dart';

class DashboardWidget extends StatefulWidget {
  const DashboardWidget({Key? key}) : super(key: key);

  @override
  _DashboardWidgetState createState() => _DashboardWidgetState();
}

class _DashboardWidgetState extends State<DashboardWidget> {
  late List<Dashboard> listMain;
  late List<Dashboard> listOther;

  @override
  void initState() {
    super.initState();
    listMain = Repository().getListDashboard();
    listOther = Repository().getListDashboardOther();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 242,
      padding: const EdgeInsets.all(30),
      color: const Color(0xffFAFAFA),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'WeHR',
            style: TextStyle(
                fontSize: 36, fontWeight: FontWeight.w600, color: Colors.black),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 60),
          const Text(
            'MAIN MENU',
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Color(0xff686868)),
          ),
          const SizedBox(height: 26),
          ListView(
            shrinkWrap: true,
            children: listMain.map((e) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 32),
                child: Row(
                  children: [
                    SvgPicture.asset(e.icon, width: 18, height: 18,),
                    const SizedBox(width: 27),
                    Text(e.title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                  ],
                ),
              );
            }).toList(),
          ),
          SizedBox(height: 36),
          const Text(
            'OTHER',
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Color(0xff686868)),
          ),
          const SizedBox(height: 26),
          ListView(
            shrinkWrap: true,
            children: listOther.map((e) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset(e.icon, width: 18, height: 18,),
                    const SizedBox(width: 27),
                    Text(e.title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                  ],
                ),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
