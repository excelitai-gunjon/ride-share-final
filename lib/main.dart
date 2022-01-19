import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_ride/styles/styles.dart';
import 'package:my_ride/constants.dart';
import 'package:my_ride/src/pages/pages.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1080,2160),
      builder: () => GetMaterialApp(
        title: 'Ei Khali',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          primarySwatch: mainColorSwatch,
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              primary: mainColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              padding: EdgeInsets.all(kButtonPadding),
              minimumSize: Size(double.infinity, kButtonPadding),
            ),
          ),
          outlinedButtonTheme: OutlinedButtonThemeData(
            style: ElevatedButton.styleFrom(
              primary: mainColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              side: const BorderSide(
                color: mainColor,
              ),
              minimumSize: Size(double.infinity, kButtonPadding),
              padding: EdgeInsets.all(kButtonPadding),
            ),
          ),
          inputDecorationTheme: InputDecorationTheme(
            fillColor: placeholderColor,
            filled: true,
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(50.0)),
              borderSide: BorderSide.none,
            ),
            floatingLabelStyle: TextStyle(
              color: secondaryFontColor,
              height: 10.h,
            ),
            contentPadding: EdgeInsets.symmetric(
              vertical: kTextFieldPadding,
              horizontal: kTextFieldPadding * 2,
            ),
          ),
        ),
        routes: {
          kRouteRoot: (context) => const SplashPage(),
          kRouteIntro: (context) => const IntroPage(),
          kRouteSetProfile: (context) => const ProfileSetupPage(),
          kRouteLogin1: (context) => const LoginPage1(),
          kRouteLogin2: (context) => const LoginPage2(),
          kRouteLoginOtp: (context) => const LoginOtpPage(),
          kRouteRegister1: (context) => const RegisterPage1(),
          kRouteRegister2: (context) => const RegisterPage2(),
          kRouteRegisterOtp: (context) => const RegisterOtpPage(),
          kRouteResetPass: (context) => const PassResetPage(),
          kRouteRestePassOtp: (context) => const ResetpassOtpPage(),
          kRouteNewPassOtp: (context) => const NewPasswordPage(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
