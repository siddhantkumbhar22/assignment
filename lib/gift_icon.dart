import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:badges/badges.dart' as badges;

class GiftIcon extends StatefulWidget {
  const GiftIcon({super.key});

  @override
  State<GiftIcon> createState() => _GiftIconState();
}

class _GiftIconState extends State<GiftIcon> {
  bool view = false;

  @override
  void initState() {
    view = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          view = true;
        });
        showDialog(
          context: context,
          builder: (context) => const DialogBox(),
        );
      },
      child: badges.Badge(
        showBadge: !view,
        badgeStyle: const badges.BadgeStyle(
            badgeColor: Colors.white,
            elevation: 20.0,
            borderSide: BorderSide(
              width: 0.1,
              color: Colors.grey,
            )),
        badgeContent: const Text(
          "1",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        child: SvgPicture.asset(
          'assets/icons/gift.svg',
          width: 30,
          height: 30,
        ),
      ),
    );
  }
}

class DialogBox extends StatelessWidget {
  const DialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14.0),
      ),
      elevation: 5.0,
      backgroundColor: Colors.white,
      child: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              'assets/icons/dialog_gift.svg',
              width: 260,
              height: 241,
            ),
            const SizedBox(
              height: 10,
            ),
            Text("Here is a special gift just for you!",
                textAlign: TextAlign.center,
                overflow: TextOverflow.visible,
                style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 400,
                height: 50,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  border: Border(
                    top: BorderSide(width: 1.0, color: Colors.black12),
                    left: BorderSide(width: 1.0, color: Colors.black12),
                    right: BorderSide(width: 1.0, color: Colors.black12),
                    bottom: BorderSide(width: 3.0, color: Colors.black12),
                  ),
                  color: Color(0xff7D50FF),
                ),
                child: const Center(
                  child: Text(
                    "SHOW ME",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 20,
                        color: Color(0xffFFFFFF)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
