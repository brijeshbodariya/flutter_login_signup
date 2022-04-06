import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_login_signup/constants/constants.dart';
import 'package:flutter_login_signup/ui/signin.dart';
import 'package:flutter_login_signup/ui/signup.dart';
import 'package:flutter_login_signup/ui/splashscreen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login",
      theme: ThemeData(primaryColor: Colors.orange[200]),
      routes: <String, WidgetBuilder>{
        splashScreen: (BuildContext context) => const SplashScreen(),
        signIn: (BuildContext context) => const SignInPage(),
        signUp: (BuildContext context) => const SignUpScreen(),
      },
      initialRoute: splashScreen,
    );
  }
}
