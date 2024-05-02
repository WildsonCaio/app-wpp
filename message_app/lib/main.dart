import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:message_app/views/login_page.dart';
import 'package:message_app/views/register_page.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();


  runApp(
    MaterialApp(
      home: LoginPage(),
      theme: ThemeData(
        fontFamily: GoogleFonts.raleway().fontFamily
      ),
    ),
  );
}
