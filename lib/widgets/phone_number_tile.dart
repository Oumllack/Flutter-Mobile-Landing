import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PhoneNumberTile extends StatelessWidget {
  const PhoneNumberTile({super.key, required this.city});

  final String city;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [SvgPicture.asset('images/mobile.svg')],
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '+1 (201) 123 45 67',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF29364E),
                  ),
                ),
                const Padding(padding: EdgeInsets.only(top: 6)),
                Text(
                  city,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF8693A3),
                  ),
                ),
              ],
            ),
          ),
          const _CustomChip(text: 'S'),
          const SizedBox(width: 10),
          const _CustomChip(text: 'V')
        ],
      ),
    );
  }
}

class _CustomChip extends StatelessWidget {
  final String text;

  const _CustomChip({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: const Color(0xFFD4D9E0),
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w600,
          color: Color(
            0xFF29364E,
          ),
        ),
      ),
    );
  }
}

class CountryRow extends StatelessWidget {
  const CountryRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 24,
          width: 24,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage('images/usa.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(width: 5),
        const Text(
          'United States',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: Color(0xFF29364E),
          ),
        ),
      ],
    );
  }
}
