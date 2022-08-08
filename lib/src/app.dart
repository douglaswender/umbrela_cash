import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:umbrela_cash/core/config/app_router.dart';

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
          headline1: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 32, fontWeight: FontWeight.w400),
          bodyText1: TextStyle(fontSize: 24, fontWeight: FontWeight.normal),
          bodyText2: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
        ),
      ),
      routeInformationParser: AppRouter.informationParser,
      routerDelegate: AppRouter.delegate,
      routeInformationProvider: AppRouter.informationProvider,
    );
  }
}
