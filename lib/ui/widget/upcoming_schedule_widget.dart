import 'package:flutter/cupertino.dart';

class UpcomingSchedleWidget extends StatefulWidget {
  const UpcomingSchedleWidget({Key? key}) : super(key: key);

  @override
  _UpcomingSchedleWidgetState createState() => _UpcomingSchedleWidgetState();
}

class _UpcomingSchedleWidgetState extends State<UpcomingSchedleWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(21),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 1, color: const Color(0xffE0E0E0))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Expanded(
                flex: 2,
                child: Text('Upcoming Schedule',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xcc161E54),
                    )),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border:
                          Border.all(width: 1, color: const Color(0xffEFEFEF))),
                  child: const Text(
                    'Today, 13 Sep 2021',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xcc686868),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          const Text(
            'Priority',
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color(0xcc686868)),
          ),
          const SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                border: Border.all(
                  width: 1,
                  color: const Color(0xcc686868),
                ),
                color: const Color(0xccd4d4d4)),
            child: Column(
              children: const [
                Text(
                  'Review candidate applications',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xcc303030),
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  'Today - 11.30 AM',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Color(0xcc686868),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Other',
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color(0xcc686868)),
          ),
          const SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                border: Border.all(
                  width: 1,
                  color: const Color(0xcc686868),
                ),
                color: const Color(0xccd4d4d4)),
            child: Column(
              children: const [
                Text(
                  'Interview with candidates',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xcc303030),
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  'Today - 11.30 AM',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Color(0xcc686868),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                border: Border.all(
                  width: 1,
                  color: const Color(0xcc686868),
                ),
                color: const Color(0xccd4d4d4)),
            child: Column(
              children: const [
                Text(
                  'Short meeting with product designer from IT Departement',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xcc303030),
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 6),
                Text(
                  'Today - 11.30 AM',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Color(0xcc686868),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
