import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:umbrela_cash/core/config/app_router.dart';
import 'package:umbrela_cash/core/styles/app_colors.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        //brightness: Brightness.dark,
        primaryColor: Colors.redAccent,
        primarySwatch: Colors.red,

        fontFamily: GoogleFonts.poppins().fontFamily,
        textTheme: const TextTheme(
          headline1: TextStyle(
              fontSize: 48, fontWeight: FontWeight.bold, color: Colors.black),
          headline6: TextStyle(fontSize: 32, fontWeight: FontWeight.w400),
          button: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          bodyText1: TextStyle(fontSize: 24, fontWeight: FontWeight.normal),
          bodyText2: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
          overline: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: AppColors.primaryRed,
          ),
        ),
      ),
      routeInformationParser: AppRouter.informationParser,
      routerDelegate: AppRouter.delegate,
      routeInformationProvider: AppRouter.informationProvider,
    );
  }
}
