import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomBarItem extends SalomonBottomBarItem {
  final String titleText;
  final String iconPath;

  CustomBottomBarItem({
    required this.titleText,
    required this.iconPath,
  }) : super(
          selectedColor: const Color(0xFFBFFF07),
          unselectedColor: const Color(0xFF8693A3),
          icon: Image.asset('images/$iconPath.png'),
          title: Text(
            titleText,
            style: const TextStyle(
              color: Color(0xFF29364E),
              fontWeight: FontWeight.w700,
              fontSize: 13,
            ),
          ),
        );
}
