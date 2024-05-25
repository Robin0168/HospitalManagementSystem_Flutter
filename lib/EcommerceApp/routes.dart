

import 'package:flutter/material.dart';
import 'package:hospital_management_system/EcommerceApp/screens/all_product/all_product_screen.dart';
import 'package:hospital_management_system/EcommerceApp/screens/cart/cart_screen.dart';
import 'package:hospital_management_system/EcommerceApp/screens/complete_profile/complete_profile_screen.dart';
import 'package:hospital_management_system/EcommerceApp/screens/details/details_screen.dart';
import 'package:hospital_management_system/EcommerceApp/screens/forgot_password/forgot_password_screen.dart';
import 'package:hospital_management_system/EcommerceApp/screens/home/home_screen.dart';
import 'package:hospital_management_system/EcommerceApp/screens/login_success/login_success_screen.dart';
import 'package:hospital_management_system/EcommerceApp/screens/otp/otp_screen.dart';
import 'package:hospital_management_system/EcommerceApp/screens/profile/profile_screen.dart';
import 'package:hospital_management_system/EcommerceApp/screens/sign_in/sign_in_screen.dart';
import 'package:hospital_management_system/EcommerceApp/screens/splash/splash_screen.dart';

import 'screens/sign_up/sign_up_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  AllProducts.routeName: (context) => AllProducts(),
};
