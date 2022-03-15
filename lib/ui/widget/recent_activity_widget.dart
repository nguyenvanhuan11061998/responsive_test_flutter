import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class RecentActivityWidget extends StatefulWidget {
  const RecentActivityWidget({Key? key}) : super(key: key);

  @override
  _RecentActivityWidgetState createState() => _RecentActivityWidgetState();
}

class _RecentActivityWidgetState extends State<RecentActivityWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(24, 0, 24, 24),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Color(0xff161E54)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 10, top: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xff1B204A)),
            child: const Text(
              'Recently Activity',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  fontSize: 18),
            ),
          ),
          const SizedBox(height: 26),
          const Text(
            '10.40 AM, Fri 10 Sept 2021',
            style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w500,
                color: Color(0xccffffff)),
          ),
          const SizedBox(height: 10),
          const Text(
            'You Posted a New Job',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white),
          ),
          const SizedBox(height: 10),
          const Text(
            'Kindly check the requirements and terms of work and make sure everything is right.',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xccffffff)),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 28),
          ResponsiveRowColumn(
            columnCrossAxisAlignment: CrossAxisAlignment.start,
            layout: ResponsiveWrapper.of(context).isDesktop
                ? ResponsiveRowColumnType.ROW
                : ResponsiveRowColumnType.COLUMN,
            children: [
              ResponsiveRowColumnItem(
                  child: ResponsiveWrapper.of(context).isDesktop
                      ? const Expanded(
                          child: Text(
                          'Today you makes 12 Activity',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.white),
                        ))
                      : const Text('Today you makes 12 Activity',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: Colors.white))),
              ResponsiveRowColumnItem(
                child: ResponsiveWrapper.of(context).isDesktop
                    ? const SizedBox(width: 8)
                    : const SizedBox(height: 16,),
              ),
              ResponsiveRowColumnItem(
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'See All Activity',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      primary: const Color(0xffFF5151)),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
