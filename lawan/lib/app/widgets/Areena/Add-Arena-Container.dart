import 'package:flutter/material.dart';
import 'package:lawan/app/utils/colors.dart';

import '../../utils/images.dart';

// Define the custom widget
class CustomCard extends StatelessWidget {
  final String count;
  final String text;
  final bool showline;
  final Color textcolor;
  final FontWeight fontWeight;
  final Color countcolor;
  final Color color;
  CustomCard({
    required this.count,
    required this.text,
    required this.color,
    required this.showline,
    required this.countcolor,
    required this.textcolor,
    required this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 70,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: ShapeDecoration(
                  color: color,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80),
                  ),
                ),
                child: Center(
                  child: Text(
                    count,
                    style: TextStyle(
                      color: countcolor,
                      fontSize: 16,
                      fontFamily: 'Lufga',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 16,
              ),
              if (showline) Image.asset(Images.line),
            ],
          ),
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.only(left: 6),
            child: Text(
              text,
              style: TextStyle(
                color: textcolor,
                fontSize: 14,
                fontFamily: 'Lufga',
                fontWeight: fontWeight,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
