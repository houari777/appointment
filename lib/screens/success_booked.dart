import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart ';

import '../components/button.dart';

class AppointmentBooked extends StatelessWidget {
  const AppointmentBooked({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
                flex: 3,
                child: Lottie.asset('assets/success.json')),
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              child:const Text(
                'SuccessFuly Booked',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
              )
            ),
            const Spacer(),
            Padding(padding: const EdgeInsets.symmetric(horizontal: 10,
            vertical: 15
            ),
            child: Button(
              width: double.infinity,
              title: 'Back to Home Page',
              onPressed: ()=>Navigator.of(context).pushNamed('main'),
              disable: false,
            ),
            )
          ],
        ),
      ),
    );
  }
}
