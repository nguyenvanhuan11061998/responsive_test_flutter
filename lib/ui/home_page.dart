import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:responsive_test/ui/widget/dashboard_widget.dart';
import 'package:responsive_test/ui/widget/info_view_widget.dart';
import 'package:responsive_test/ui/widget/main_view_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.white,
      child: ListView(
        shrinkWrap: true,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (ResponsiveWrapper.of(context).isLargerThan(TABLET))
                const ResponsiveRowColumnItem(child: DashboardWidget()),
              const Expanded(
                child: MainViewWidget(),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
