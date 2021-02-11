import 'package:automatic_takeout_order/view/authenticated/home_view.dart';
import 'package:automatic_takeout_order/view/middleware/amplify/initialize_amplify_middleware.dart';
import 'package:automatic_takeout_order/view/non_authenticated/register_view.dart';
import 'package:automatic_takeout_order/view/non_authenticated/stratup_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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
        routes: <String, WidgetBuilder>{
          '/startup': (BuildContext context) => StartupView(),
          '/home': (BuildContext context) => HomeView(),
          '/register': (BuildContext context) => RegisterView(),
        },
        home: ProviderScope(
          child: InitializeAmplifyMiddleware(),
        )
      ),
    );
  }
}
