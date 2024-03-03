import 'package:flutter/material.dart';
import 'package:my_app/widgets/bottom_bar_item.dart';
import 'package:my_app/widgets/icon_wrapper.dart';
import 'package:my_app/widgets/phone_number_tile.dart';
import 'package:my_app/widgets/phone_setting_tile.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leadingWidth: 60,
        leading: Row(
          children: [
            const SizedBox(width: 10),
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: const Color(0xFFF5F7FA),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'images/menu.svg',
                  ),
                ],
              ),
            ),
            const SizedBox(width: 10),
          ],
        ),
        title: const Text(
          '+12021234567',
          style: TextStyle(
              color: Color(0xFF29364E),
              fontSize: 16,
              fontWeight: FontWeight.w600),
        ),
        actions: const [
          IconWrapper(iconPath: 'cart'),
          SizedBox(
            width: 5,
          ),
          IconWrapper(iconPath: 'message'),
          SizedBox(
            width: 5,
          ),
          IconWrapper(iconPath: 'bell'),
          SizedBox(
            width: 5,
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
        child: Column(
          children: [
            PhoneSettingTile(),
            _CallLog(),
            _CallLog(),
          ],
        ),
      ),
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: currentIndex,
        items: [
          CustomBottomBarItem(
            iconPath: 'home',
            titleText: 'Home',
          ),
          CustomBottomBarItem(
            iconPath: 'phone',
            titleText: 'Calls',
          ),
          CustomBottomBarItem(
            iconPath: 'chat_2',
            titleText: 'Messages',
          ),
          CustomBottomBarItem(
            iconPath: 'user',
            titleText: 'Contacts',
          ),
        ],
        onTap: (index) => setState(() => currentIndex = index),
      ),
    );
  }
}

class _CallLog extends StatefulWidget {
  const _CallLog({super.key});

  @override
  State<_CallLog> createState() => _CallLogState();
}

class _CallLogState extends State<_CallLog> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16),
        const CountryRow(),
        const SizedBox(height: 16),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
          decoration: BoxDecoration(
            color: const Color(0xFFF5F7FA),
            borderRadius: BorderRadius.circular(18),
          ),
          child: const Column(
            children: [
              PhoneNumberTile(city: 'New Jersey'),
              PhoneNumberTile(city: 'Washington'),
              PhoneNumberTile(city: 'New Jersey'),
            ],
          ),
        ),
      ],
    );
  }
}
