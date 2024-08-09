import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:lawan/app/utils/colors.dart';
import 'package:lawan/app/utils/text.dart';
import 'package:lawan/app/widgets/Areena/ar-in-out-button.dart';
import 'package:lawan/app/widgets/Areena/areenaButton.dart';

import '../../utils/images.dart';
import 'Add-Arena-Container.dart';
import 'AddAreena2.dart';
import 'custom-Arena-textform.dart';

class AddAreena1 extends StatefulWidget {
  @override
  State<AddAreena1> createState() => _AddAreena1State();
}

class _AddAreena1State extends State<AddAreena1> {
  String _selectedButton = 'Indoor'; // Track the selected button

  void _onButtonPressed(String buttonText) {
    setState(() {
      _selectedButton = buttonText; // Update the selected button
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 377,
      height: 715,
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: AappColor.gainsboro,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 0,
            offset: Offset(0, -0.50),
            spreadRadius: 0,
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 45, top: 16),
              child: Row(
                children: [
                  CustomCard(
                    count: '1',
                    text: Apptext.details,
                    color: AappColor.bluee,
                    showline: true,
                    countcolor: AappColor.white,
                    textcolor: AappColor.bluee,
                    fontWeight: FontWeight.w500,
                  ),
                  CustomCard(
                    count: '2',
                    text: Apptext.hour,
                    color: AappColor.silver,
                    showline: true,
                    countcolor: AappColor.dark_grey,
                    textcolor: AappColor.mid_grey,
                    fontWeight: FontWeight.w400,
                  ),
                  CustomCard(
                    count: '3',
                    text: Apptext.rate,
                    color: AappColor.silver,
                    showline: false,
                    countcolor: AappColor.dark_grey,
                    textcolor: AappColor.mid_grey,
                    fontWeight: FontWeight.w400,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              Apptext.add_arena_details,
              style: TextStyle(
                color: AappColor.black,
                fontSize: 16,
                fontFamily: 'Lufga',
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              Apptext.add_photos_name_and_location,
              style: TextStyle(
                color: AappColor.mid_grey,
                fontSize: 12,
                fontFamily: 'Lufga',
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              width: 160,
              height: 120,
              padding: const EdgeInsets.all(24),
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: Color(0xFFE9EAF0)),
                  borderRadius: BorderRadius.circular(32),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 24,
                    height: 24,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(),
                    child: Image.asset(Images.gallery),
                  ),
                  SizedBox(height: 8),
                  Text(
                    Apptext.add_picture,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AappColor.mid_grey,
                      fontSize: 14,
                      fontFamily: 'Lufga',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            CustomTextFormField(
                hintText: Apptext.location, icon: Images.location),
            SizedBox(
              height: 8,
            ),
            CustomTextFormField(
              hintText: Apptext.enter_arena_name,
            ),
            SizedBox(
              height: 8,
            ),
            CustomTextFormField(
              hintText: Apptext.enter_court_name,
              text: Apptext.optional,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ArenaINOutButton(
                  text: 'Indoor',
                  isSelected: _selectedButton == 'Indoor',
                  onPressed: () => _onButtonPressed('Indoor'),
                ),
                SizedBox(width: 6),
                ArenaINOutButton(
                  text: 'Outdoor',
                  isSelected: _selectedButton == 'Outdoor',
                  onPressed: () => _onButtonPressed('Outdoor'),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 345,
              child: Text(
                Apptext.flooring,
                style: TextStyle(
                  color: Color(0xFF545F71),
                  fontSize: 14,
                  fontFamily: 'Lufga',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                ArenaINOutButton(
                  text: 'Court Turf',
                  isSelected: _selectedButton == 'Court Turf',
                  onPressed: () => _onButtonPressed('Court Turf'),
                ),
                SizedBox(width: 6),
                ArenaINOutButton(
                  text: 'Court Grass',
                  isSelected: _selectedButton == 'Court Grass',
                  onPressed: () => _onButtonPressed('Court Grass'),
                ),
                SizedBox(width: 6),
                ArenaINOutButton(
                  text: 'Cement',
                  isSelected: _selectedButton == 'Cement',
                  onPressed: () => _onButtonPressed('Cement'),
                ),
              ],
            ),
            SizedBox(
              height: 32,
            ),
            Row(
              crossAxisAlignment:CrossAxisAlignment.center,
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: [
                CustomAreenaButton(
                  text: Apptext.cancel,
                  color: AappColor.white,
                  borderColor: Color(0xFFE9EAF0),
                  textColor: Colors.black, onTap: () {
                  Get.back();
                },
                ),
                CustomAreenaButton(
                  text: Apptext.next,
                  color: AappColor.black,
                  borderColor: Color(0xFFE9EAF0),
                  textColor:AappColor.white, onTap: () async{
                     Navigator.pop(context);
                     _openBottomSheet(context);
                },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
  void _openBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isDismissible: true,
      enableDrag: true,
      isScrollControlled: true, // Allows the bottom sheet to use full screen height
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return AddAreena2();
      },
    );
  }

}
