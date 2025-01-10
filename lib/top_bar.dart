import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'gift_icon.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(width: 2.0, color: Colors.black12),
          ),
          color: Color(0x0ffff8f5)),
      child: const Padding(
        padding:
            EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0, bottom: 12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TopBarIcon(
              icon: "book.svg",
              number: "13",
              color: 0xff00ADFF,
            ),
            TopBarIcon(
              icon: "fire.svg",
              number: "2",
              color: 0xffFF9600,
            ),
            TopBarIcon(
              icon: "lightning.svg",
              number: "711",
              color: 0xffFFC800,
            ),
            GiftIcon(),
          ],
        ),
      ),
    );
  }
}

class TopBarIcon extends StatelessWidget {
  const TopBarIcon(
      {super.key,
      required this.icon,
      required this.number,
      required this.color});

  final String icon;
  final String number;
  final int color;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(
          'assets/icons/$icon',
          width: 30,
          height: 30,
        ),
        const SizedBox(
          width: 7,
        ),
        Text(
          number,
          style: TextStyle(
              fontWeight: FontWeight.w700, fontSize: 20, color: Color(color)),
        ),
      ],
    );
  }
}
