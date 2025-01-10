import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'data/page_data.dart';

class Stories extends StatelessWidget {
  const Stories({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Learn through Stories",
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.getFont('Nunito',
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: const Color(0xff393938)),
          ),
          const SizedBox(
            height: 5,
          ),
          SizedBox(
            height: 100,
            child: ListView.separated(
                clipBehavior: Clip.none,
                scrollDirection: Axis.horizontal,
                itemCount: PageData.listStories.length,
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(width: 10);
                },
                itemBuilder: (BuildContext context, int index) {
                  return Story(
                    img: PageData.listStories[index],
                  );
                }),
          ),
        ],
      ),
    );
  }
}

class Story extends StatelessWidget {
  const Story({super.key, required this.img});

  final String img;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 70,
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        border: Border.all(
          width: 3,
          color: const Color(0xff7D50FF),
        ),
        borderRadius: const BorderRadius.all(Radius.circular(14.0)),
        shape: BoxShape.rectangle,

        // color: const Color(0xffC5C5C5),
      ),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image.asset(
            "assets/images/$img",
            fit: BoxFit.contain,
          )),
    );
  }
}
