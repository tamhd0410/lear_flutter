import 'package:flutter/material.dart';

class JobItem extends StatelessWidget {
  final String title;
  final String company;
  final String location;
  final String time;
  final String startDate;
  final String endDate;
  final IconData icon;

  JobItem({
    required this.title,
    required this.company,
    required this.location,
    required this.time,
    required this.startDate,
    required this.endDate,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(0xFFFFFFFF),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  time,
                  style: TextStyle(fontSize: 14),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Text(startDate),
                    Container(
                      margin: EdgeInsets.only(left: 16, right: 16),
                      child: Icon(
                        icon,
                        size: 14,
                      ),
                    ),
                    Text(endDate),
                  ],
                ),
                SizedBox(height: 8),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      location,
                      style: TextStyle(fontSize: 12),
                    ),
                    Icon(Icons.broken_image_outlined)
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
