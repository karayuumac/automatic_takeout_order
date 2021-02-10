import 'package:automatic_takeout_order/view/middleware/amplify/initialize_amplify_middleware.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';

Future<void> main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'automatic_takeout_order',
      theme: ThemeData(
        primaryColor: Colors.white,
        textTheme: GoogleFonts.sawarabiGothicTextTheme(
          Theme.of(context).textTheme
        ),
        inputDecorationTheme: const InputDecorationTheme(
          labelStyle: TextStyle(
            color: Colors.black,
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
        ),
      ),
      darkTheme: ThemeData.dark(),
      locale: const Locale('ja', 'Jp'),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ja', 'JP'),
      ],
      home: MaterialApp(
        home: InitializeAmplifyMiddleware(),
      ),
    );
  }
}
