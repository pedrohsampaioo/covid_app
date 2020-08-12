import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

part 'app_typography.dart';
part 'app_colors.dart';

class AppTheme {
  static get config => ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
      );
}
