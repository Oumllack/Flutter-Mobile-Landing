import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconWrapper extends StatelessWidget {
  final String iconPath;

  const IconWrapper({super.key, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xFFF5F7FA),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [SvgPicture.asset('images/$iconPath.svg')],
      ),
    );
  }
}
