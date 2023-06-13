import 'package:bookly/screen/auth/login/login.dart';
import 'package:bookly/screen/auth/signup/signup.dart';
import 'package:flutter/material.dart';

const LoginRoute = "/";
const SignupRoute = "/signup";
const ForgotRoute = "/forgot";
const DashboardRoute = "/dashboard";
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: _routes(),
      debugShowCheckedModeBanner: false,
      title: 'Bookly',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: SignupRoute,
    );
  }

  RouteFactory _routes() {
    return (settings) {
      Widget screen;
      switch (settings.name) {
        case LoginRoute:
          screen = Login();
          break;
        case SignupRoute:
          screen = Signup();
          break;
        default:
          return null;
      }
      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }
}
