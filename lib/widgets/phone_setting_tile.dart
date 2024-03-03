import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PhoneSettingTile extends StatelessWidget {
  const PhoneSettingTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF5F7FA),
        borderRadius: BorderRadius.circular(18),
      ),
      alignment: Alignment.topCenter,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const _MessageTypeRow(),
            const SizedBox(height: 16),
            Container(
              width: 300,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: CustomDropDown(),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Container(
                  height: 16,
                  width: 16,
                  decoration: BoxDecoration(
                    color: const Color(0xFFBFFF07),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(Icons.check_rounded, size: 10),
                ),
                const SizedBox(width: 10),
                const Text(
                  'Show number without verification',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _MessageTypeRow extends StatefulWidget {
  const _MessageTypeRow({super.key});

  @override
  State<_MessageTypeRow> createState() => _MessageTypeRowState();
}

class _MessageTypeRowState extends State<_MessageTypeRow> {
  String currentMessageType = 'MMS';
  final settings = ['SMS', 'MMS', 'Voice'];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: settings
          .map(
            (setting) => MessageTypeWrapper(
              type: setting,
              isSelected: currentMessageType == setting,
              onTap: () {
                setState(
                  () {
                    currentMessageType = setting;
                  },
                );
              },
            ),
          )
          .toList(),
    );
  }
}

class MessageTypeWrapper extends StatelessWidget {
  const MessageTypeWrapper({
    super.key,
    required this.type,
    required this.isSelected,
    required this.onTap,
  });

  final String type;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: onTap,
      child: Container(
        height: 40,
        width: 88,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFFBFFF07) : Colors.white,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Text(
          type,
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 13,
              color: isSelected
                  ? const Color(0xff29364E)
                  : const Color(0xFF8693A3)),
        ),
      ),
    );
  }
}

class CustomDropDown extends StatelessWidget {
  CustomDropDown({super.key});

  final dropdownValues = ['Landline', 'Mobile'];

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<String>(
      dropdownMenuEntries: dropdownValues
          .map(
            (e) => DropdownMenuEntry<String>(
              label: e,
              value: e,
            ),
          )
          .toList(),
      trailingIcon: Icon(
        Icons.keyboard_arrow_down_rounded,
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            10,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(
            10,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(
            10,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(
            10,
          ),
        ),
      ),
      width: 300,
      textStyle: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 15,
      ),
      hintText: 'Landline or Mobile',
    );
  }
}
