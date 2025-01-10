import 'package:assignment/stories.dart';
import 'package:assignment/top_bar.dart';
import 'package:flutter/material.dart';
import 'book_list.dart';
import 'categories.dart';
import 'data/page_data.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const TopBar(),
              const SizedBox(child: Categories()),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                  child: BookList(
                title: "Personalised Books",
                subTitle: "As per your preference",
                list: PageData.list,
              )),
              const SizedBox(
                height: 10,
              ),
              const Stories(),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                  child: BookList(
                title: "To build strong family",
                subTitle: "Top-rated summaries for this goal",
                list: PageData.listBuildStrongFamily,
              )),
              SizedBox(
                  child: BookList(
                title: "To be happy",
                subTitle: "Top-rated summaries for this goal",
                list: PageData.listBuildStrongFamily,
              )),
            ],
          ),
        ),
      ),
    );
  }
}
