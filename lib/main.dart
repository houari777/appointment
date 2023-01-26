import 'package:doctor_appointement/main_layout.dart';
import 'package:doctor_appointement/screens/aurh_page.dart';
import 'package:doctor_appointement/screens/booking_page.dart';
import 'package:doctor_appointement/screens/doctor_details.dart';
import 'package:doctor_appointement/screens/success_booked.dart';
import 'package:doctor_appointement/utils/config.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
static final navigatorKey= GlobalKey<NavigatorState>();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      title: 'Flutter Doctor App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        inputDecorationTheme: const InputDecorationTheme(
          focusColor: Config.primaryColor,
          border: Config.outlineBorder,
          focusedBorder: Config.focusBorder,
          errorBorder: Config.errorBorder,
          enabledBorder: Config.outlineBorder,
          floatingLabelStyle: TextStyle(color: Config.primaryColor),
          prefixIconColor: Colors.black38
        ),
        scaffoldBackgroundColor: Colors.white,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Config.primaryColor,
          selectedItemColor: Colors.white,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          unselectedItemColor: Colors.grey.shade700,
          elevation: 10,
          type: BottomNavigationBarType.fixed,
        )
      ),
      initialRoute: '/',
      routes: {
        '/':(context)=>const AuthPage(),
        'main':(context)=> const MainLayout(),
        'doc_details':(context)=>const DoctorDetails(),
        'booking_page':(context)=>  BookingPage(),
        'success_booking':(context)=> const AppointmentBooked()

      },

    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});





  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: const Text('Flutter Doctor App'),
      ),);
  }
}
