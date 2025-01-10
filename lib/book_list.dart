import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import 'model/book_detail.dart';

class BookList extends StatelessWidget {
  const BookList(
      {super.key, required this.title, this.subTitle, required this.list});

  final String title;
  final String? subTitle;
  final List<BookDetail> list;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, top: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(
            height: 1,
          ),
          if (subTitle != null)
            Text(subTitle!, style: Theme.of(context).textTheme.titleMedium),
          const SizedBox(
            height: 12,
          ),
          SizedBox(
            height: 280,
            child: ListView.separated(
                clipBehavior: Clip.none,
                scrollDirection: Axis.horizontal,
                itemCount: list.length,
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(width: 10);
                },
                itemBuilder: (BuildContext context, int index) {
                  return Book(
                    author: list[index].author,
                    image: list[index].image,
                    icon: list[index].icon,
                  );
                }),
          ),
        ],
      ),
    );
  }
}

class Book extends StatelessWidget {
  const Book({super.key, required this.author, this.icon, required this.image});

  final String author;
  final String? icon;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 240,
          width: 157,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: const Color(0xffC5C5C5),
            ),
            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            shape: BoxShape.rectangle,
            color: const Color(0xffC5C5C5),
          ),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                'assets/images/$image',
              )),
        ),
        const SizedBox(
          height: 4,
        ),
        Row(
          children: [
            if (icon != null)
              SvgPicture.asset(
                'assets/icons/$icon',
                width: 16,
                height: 16,
              ),
            const SizedBox(
              width: 5,
            ),
            Text(
              author,
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ],
        )
      ],
    );
  }
}
