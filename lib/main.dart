import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/stroll_bonfire_screen.dart';
import 'package:stroll_ui/providers/provider.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: AppProviders.providers(),
      child: MaterialApp(
        title: 'Stroll App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.purple,
          textTheme: GoogleFonts.montserratTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
        home: const StrollBonfireScreen(),
      ),
    );
  }
}
