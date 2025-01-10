import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'data/page_data.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, top: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text(
            "Categories you’re interested in",
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(
            height: 12,
          ),
          SizedBox(
            height: 50,
            child: ListView.separated(
                clipBehavior: Clip.none,
                scrollDirection: Axis.horizontal,
                itemCount: PageData.listCategory.length,
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(width: 10);
                },
                itemBuilder: (BuildContext context, int index) {
                  return Category(
                    icon: PageData.listCategory[index].icon,
                    text: PageData.listCategory[index].title,
                  );
                }),
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  const Category({super.key, required this.text, required this.icon});

  final String icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        border: Border(
          top: BorderSide(width: 1.0, color: Colors.black12),
          left: BorderSide(width: 1.0, color: Colors.black12),
          right: BorderSide(width: 1.0, color: Colors.black12),
          bottom: BorderSide(width: 3.0, color: Colors.black12),
        ),
        color: Color(0xffFFFFFF)
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: SvgPicture.asset(
            'assets/icons/$icon',
            width: 24,
            height: 24,
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18,
            ),
          ),
        ),
      ]),
    );
  }
}
