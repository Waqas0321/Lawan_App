import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:adaptive_sizer/adaptive_sizer.dart';
import 'package:lawan/app/utils/images.dart';

import '../utils/ScreenDimensions.dart';
import '../utils/colors.dart';
import '../widgets/Areena/AddArena1.dart';
import '../widgets/Areena/circularContainer.dart';

class HomeScreen extends StatelessWidget {
  void _openBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isDismissible: true,
      enableDrag: true,
      isScrollControlled: true, // Allows the bottom sheet to use full screen height
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return AddAreena1();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AappColor.gainsboro,
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(Images.game),
                Spacer(),
                Image.asset(Images.Profile),
              ],
            ),
            SizedBox(
              height: 10.h, // 4% of screen height
            ),
            Container(
              width:361.w,
              height: 151.h,
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 2, color: Colors.white),
                  borderRadius: BorderRadius.circular(32),
                ),
              ),
              child:Column(
                children: [

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
