import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hospital_management_system/ClassWork/firebase_options.dart';
import 'package:hospital_management_system/ClassWork/pages/addPatient.dart';
import 'package:hospital_management_system/ClassWork/pages/add_image.dart';
import 'package:hospital_management_system/ClassWork/pages/allDepartment.dart';
import 'package:hospital_management_system/ClassWork/pages/allPatients.dart';
import 'package:hospital_management_system/ClassWork/pages/receiptScreen.dart';
import 'package:hospital_management_system/ClassWork/pages/springDoctors.dart';
import 'package:hospital_management_system/ClassWork/pages/springSignUp.dart';
import 'package:hospital_management_system/ClassWork/pages/springUsers.dart';
import 'package:hospital_management_system/ClassWork/pages/springloginAPI.dart';
import 'package:hospital_management_system/ClassWork/pages/testInvoice.dart';
import 'package:hospital_management_system/ClassWork/rest_api_call/restApiLogin.dart';
import 'package:hospital_management_system/ClassWork/pages/fireBaseAdd.dart';
import 'package:hospital_management_system/EcommerceApp/screens/all_product/all_product_screen.dart';
import 'package:hospital_management_system/EcommerceApp/screens/home/components/body.dart';
import 'package:hospital_management_system/EcommerceApp/screens/home/components/categories.dart';
import 'package:hospital_management_system/MyOwnCode/body/bottomNavigationBar.dart';
import 'package:hospital_management_system/MyOwnCode/body/column.dart';
import 'package:hospital_management_system/ClassWork/pages/gridView.dart';
import 'package:hospital_management_system/MyOwnCode/body/listTile.dart';
import 'package:hospital_management_system/ClassWork/pages/myLoginScreen.dart';
import 'package:hospital_management_system/ClassWork/pages/myhome.dart';
import 'package:hospital_management_system/MyOwnCode/body/page1.dart';
import 'package:hospital_management_system/MyOwnCode/body/page2.dart';
import 'package:hospital_management_system/MyOwnCode/body/page3.dart';
import 'package:hospital_management_system/ClassWork/pages/registrationSctreen.dart';
import 'package:hospital_management_system/ClassWork/pages/rowSingleChildScrollView.dart';
import 'package:hospital_management_system/MyOwnCode/body/stackWidgetUpAnotherWidget.dart';
import 'package:hospital_management_system/MyOwnCode/body/staticBody.dart';
import 'package:hospital_management_system/bodyMain.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  SharedPreferences prefs = await SharedPreferences.getInstance();
  runApp(const MyApp());
}

// void main() {
//   runApp(const MyApp());
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromARGB(255, 223, 220, 62),
        ),
      ),
      darkTheme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
        seedColor: Color.fromARGB(255, 47, 173, 40),
      )),
      initialRoute: "/myLoginScreen",
      // initialRoute: "/home",
      routes: {
        // "/home": (context) => SpringUsers(),
        // "/home": (context) => SpringloginAPI(),
        // "/home": (context) => RestApiLogin(),
        //  "/home": (context) => AddImage(),
        // "/home": (context) => MyLoginScreen(),
        // "/home": (context) => MyBottomNavigationBar(),
        // "/home": (context) => MyGridView(),
        //  "/home": (context) => rowSingleChildScrollView(),
        // "/home": (context) => MyListTile(),
        // "/home": (context) => Doctors(),
        // "/home": (context) => AllPatient(),
        //  "/home": (context) => AllDepartment(),
        //  "/home": (context) => stackWidgetUpAnotherWidget(),
        // "/home": (context) => MyColumn(),
        // "/home": (context) => StaticBody(),
        // -------------
        "/fireBaseAdd": (context) => FireBaseAdd(),
        "/springSignUp": (context) => SpringSignUp(),
        "/registrationScreen": (context) => RegistrationScreen(),
        "/myLoginScreen": (context) => MyLoginScreen(),
        "/myHome": (context) => MyHome(),
        "/springUsers": (context) => SpringUsers(),
        "/addImage": (context) => AddImage(),
        "/myGridView": (context) => MyGridView(),
        "/rowSingleChildScrollView": (context) => rowSingleChildScrollView(),
        "/doctors": (context) => Doctors(),
        "/allPatient": (context) => AllPatient(),
        "/allDepartment": (context) => AllDepartment(),
        "/TestInvoice": (context) => TestInvoice(),
          "/addPatient": (context) => AddPatient(),
        // // ------------------
        // "/receiptScreen": (context) => ReceiptScreen(
        //       transactionId: '',
        //       amount: 1000,
        //     ),
        
        // ----------------

        // "/formEx": (context) => const FormPage(title: 'Flutter Form Demo Page'),
      },
      debugShowCheckedModeBanner: false,
      // home: const MyWidget());
      // home: LoginScreen());
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:hospital_management_system/EcommerceApp/routes.dart';
// import 'package:hospital_management_system/EcommerceApp/screens/all_product/all_product_screen.dart';
// import 'package:hospital_management_system/EcommerceApp/screens/cart/cart_screen.dart';
// import 'package:hospital_management_system/EcommerceApp/screens/complete_profile/complete_profile_screen.dart';
// import 'package:hospital_management_system/EcommerceApp/screens/details/details_screen.dart';
// import 'package:hospital_management_system/EcommerceApp/screens/forgot_password/forgot_password_screen.dart';
// import 'package:hospital_management_system/EcommerceApp/screens/home/home_screen.dart';
// import 'package:hospital_management_system/EcommerceApp/screens/login_success/login_success_screen.dart';
// import 'package:hospital_management_system/EcommerceApp/screens/otp/otp_screen.dart';
// import 'package:hospital_management_system/EcommerceApp/screens/profile/profile_screen.dart';
// import 'package:hospital_management_system/EcommerceApp/screens/sign_in/sign_in_screen.dart';
// import 'package:hospital_management_system/EcommerceApp/screens/sign_up/sign_up_screen.dart';
// import 'package:hospital_management_system/EcommerceApp/screens/splash/splash_screen.dart';
// import 'package:hospital_management_system/EcommerceApp/theme.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
  
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: theme(),
//       // home: SplashScreen(),
//       // We use routeName so that we dont need to remember the name
//       initialRoute: SplashScreen.routeName,
//       routes: routes,
//     );
//   }
// }