import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xfffff8f5),
        fontFamily: GoogleFonts.getFont("Nunito").fontFamily,
        textTheme: const TextTheme(
          titleLarge: TextStyle(
              overflow: TextOverflow.ellipsis,
              fontWeight: FontWeight.w700,
              fontSize: 20,
              color: Color(0xff393938)),
          titleMedium: TextStyle(
              overflow: TextOverflow.ellipsis,
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: Color(0xff393938)),
          titleSmall: TextStyle(
            overflow: TextOverflow.ellipsis,
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: Colors.black45,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}
