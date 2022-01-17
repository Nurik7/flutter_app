import 'package:flutter/material.dart';
import 'package:own_app_fl/widgets/profile_settings.dart';
import 'user_profile.dart';
import 'profile_settings.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => UserProfile(),
        "/settings": (context) => ProfileSettings()
      },
      initialRoute: "/",
    );
  }
}
