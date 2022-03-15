import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_row_column.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

import '../../đata/model/dashboard_item.dart';
import '../../đata/model/dashboard_item2.dart';

class MainDashboardWidget extends StatelessWidget {
  const MainDashboardWidget({
    Key? key,
    required this.listDashboardItem,
    required this.listDashboardItem2
  }) : super(key: key);

  final List<DashboardItem> listDashboardItem;
  final List<DashboardItem2> listDashboardItem2;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Dashboard',
          style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: Color(0xff161E54)),
        ),
        const SizedBox(height: 16),
        ResponsiveRowColumn(
          layout: ResponsiveWrapper.of(context).isLargerThan(MOBILE)
              ? ResponsiveRowColumnType.ROW
              : ResponsiveRowColumnType.COLUMN,
          children: listDashboardItem.map((e) {
            if (ResponsiveWrapper.of(context).isLargerThan(MOBILE)) {
              return ResponsiveRowColumnItem(
                  child: Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 8),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: e.background,),
                        child: Padding(
                          padding:
                          const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                e.title,
                                style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff161E54)),
                              ),
                              const SizedBox(height: 16),
                              Text(
                                e.count,
                                style: const TextStyle(
                                    fontSize: 32,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff161E54)),
                              ),
                              const SizedBox(height: 16),
                              Text(
                                e.item,
                                style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xffFF5151)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )); } else {
              return ResponsiveRowColumnItem(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 7, vertical: 8),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: e.background,),
                      child: Padding(
                        padding:
                        const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              e.title,
                              style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff161E54)),
                            ),
                            const SizedBox(height: 16),
                            Text(
                              e.count,
                              style: const TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff161E54)),
                            ),
                            const SizedBox(height: 16),
                            Text(
                              e.item,
                              style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffFF5151)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ));
            }
          }).toList(),
        ),
        const SizedBox(
          height: 20,
        ),
        ResponsiveRowColumn(
          layout: ResponsiveWrapper.of(context).isLargerThan(MOBILE)
              ? ResponsiveRowColumnType.ROW
              : ResponsiveRowColumnType.COLUMN,
          children: listDashboardItem2
              .map((e) {
                return ResponsiveRowColumnItem(
                  child: ResponsiveWrapper.of(context).isLargerThan(MOBILE) ? Expanded(child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ItemDashboard2Widget(e: e),
                  )) : Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ItemDashboard2Widget(e: e),
                  ),
                );
          })
              .toList(),
        )
      ],
    );
  }
}

class ItemDashboard2Widget extends StatelessWidget {
  final DashboardItem2 e;

  const ItemDashboard2Widget({
    Key? key, required this.e
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), border: Border.all(width: 1, color: const Color(0xffE0E0E0))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              e.title,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xcc161E54)),
            ),
            const SizedBox(height: 22),
            Text(
              e.count,
              style: const TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.w500,
                  color: Color(0xcc161E54)),
            ),
            const SizedBox(height: 32),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        e.item1,
                        style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xcc686868)),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        e.item2,
                        style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xcc686868)),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: const Color(0xffFFEFE7)
                  ),
                  child: Text(e.notePecent, style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),),
                )
              ],
            )
          ],
        )
    );
  }
}