import 'providers/time_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/stroll_bonfire_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stroll_ui/providers/provider.dart';
import 'package:stroll_ui/providers/time_option_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ...AppProviders.providers(),
        ChangeNotifierProvider(create: (_) => TimeProvider()),
        ChangeNotifierProvider(create: (_) => TimeOptionProvider()),
      ],
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
