import 'package:flutter/material.dart';
import 'package:logme/core/themes/app_theme.dart';
import 'package:logme/widgets/top_bar.dart';
import 'routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  bool isDarkMode = false;
  bool isSignedIn = false;

  void _toggleTheme(bool value) {
    setState(() {
      isDarkMode = value;
    });
  }

  void _toggleSignIn(bool value) {
    setState(() {
      isSignedIn = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Logme Demo',
      theme: isDarkMode ? AppTheme.dark : AppTheme.light,
      initialRoute: AppRoutes.home,
      onGenerateRoute: (settings) {
        final route = AppRoutes.generateRoute(settings);
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            appBar: TopBar(
              isDarkMode: isDarkMode,
              onThemeToggle: _toggleTheme,
              onSignInToggle: _toggleSignIn,
            ),
            body: route(context),
          ),
        );
      },
    );
  }
}
