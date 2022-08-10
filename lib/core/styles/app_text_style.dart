import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class AppTextStyles {
  static final TextStyle heading36 = GoogleFonts.poppins(
      color: AppColors.black, fontSize: 36, fontWeight: FontWeight.bold);

  static final TextStyle title = GoogleFonts.poppins(
      color: AppColors.black, fontSize: 16, fontWeight: FontWeight.w400);

  static final TextStyle titleSecondary = GoogleFonts.poppins(
      color: AppColors.white, fontSize: 16, fontWeight: FontWeight.w400);

  static final TextStyle buttonPrimary = GoogleFonts.poppins(
      color: AppColors.white, fontSize: 14, fontWeight: FontWeight.w900);

  static final TextStyle buttonSecondary = GoogleFonts.poppins(
      color: AppColors.black, fontSize: 14, fontWeight: FontWeight.w900);

  static final TextStyle body = GoogleFonts.poppins(
      color: AppColors.black, fontSize: 14, fontWeight: FontWeight.w400);

  static final TextStyle bodySecondary = GoogleFonts.poppins(
      color: AppColors.grey, fontSize: 14, fontWeight: FontWeight.w400);

  static final TextStyle bodyMarker = GoogleFonts.poppins(
      color: AppColors.darkGreen, fontSize: 14, fontWeight: FontWeight.bold);
}