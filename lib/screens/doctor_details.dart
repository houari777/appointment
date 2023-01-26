import 'package:doctor_appointement/components/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/button.dart';
import '../utils/config.dart';

class DoctorDetails extends StatefulWidget {
  const DoctorDetails({Key? key}) : super(key: key);

  @override
  State<DoctorDetails> createState() => _DoctorDetailsState();
}

class _DoctorDetailsState extends State<DoctorDetails> {
  bool isFav=false;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: CustomAppBar(
        appTitle: 'Doctor Details',
        icon: const FaIcon(Icons.arrow_back_ios), actions: [
          IconButton(onPressed: (){
            setState(() {
              isFav =!isFav;
            });
          },
              icon: FaIcon(
                isFav? Icons.favorite_rounded:Icons.favorite_outline,
                color: Colors.red,
              ))

      ],
      ),
      body: SafeArea(child: Column(
        children: [
         const AboutDoctor(),
          const DetailBody(),
          const Spacer(),
          Padding(padding: const EdgeInsets.all(20),
          child: Button(
            width: double.infinity,
            title: 'Book Appointment',
            onPressed: (){
              Navigator.of(context).pushNamed('booking_page');
            },
            disable: false,
          ),
          )
        ],
      )),
    );
  }
}

class AboutDoctor extends StatelessWidget {
  const AboutDoctor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Container(
      width: double.infinity,
      child: Column(
        children:  <Widget>[
          const CircleAvatar(
            radius: 65.0,
            backgroundImage: AssetImage('assets/profile1.jpg'),
            backgroundColor: Colors.white,
            
          ),
          Config.spaceSmall,
           const Text('Dr Richard Tan',
          style:TextStyle(
            color: Colors.black,
            fontSize: 24.0,
            fontWeight: FontWeight.bold
          ) ,
           ),
          Config.spaceSmall,
          SizedBox(
            width: Config.widthSize*0.75,
            child: const Text(
              'MBBS(International Medical University Malaysial),MRCP(Royal College of Physiciens, United Kingdom)',
               style: TextStyle(
                 color: Colors.grey,
                 fontSize: 15
               ),
           softWrap: true,
              textAlign: TextAlign.center,
            ) ,
          ),
          Config.spaceSmall,
          SizedBox(
            width: Config.widthSize*0.75,
            child: const Text(
              'Sarawak General Hospital',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                fontWeight: FontWeight.bold
              ),
              softWrap: true,
              textAlign: TextAlign.center,
            ) ,
          ),
        ],
      ),
    );
  }
}

class DetailBody extends StatelessWidget {
  const DetailBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(bottom: 30),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const   <Widget>[
          Config.spaceSmall,
            DoctorInfo(),


          Text('About Doctor', style: TextStyle(fontWeight: FontWeight.w600),),

          Text('Dr, Richard Tan is an experience Dentist at Saraouk. He is graduad since 2000, and completed his training at Sungai Buloh General Hospital ',
          style: TextStyle(fontWeight: FontWeight.w500,
          height: 1.5
          ),
            softWrap: true,
            textAlign: TextAlign.justify,
          )
        ],
      ),
    );
  }
}

class DoctorInfo extends StatelessWidget {
  const DoctorInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Row(

       children: const <Widget>[

        InfoCard(label: 'Patients', value: '100'),
         InfoCard(label: 'Experiences', value: '10 years'),
         InfoCard(label: 'Rating', value: '4.6'),

       ],
    );
  }
}

class InfoCard extends StatelessWidget {
  const InfoCard({Key? key, required this.label, required this.value}) : super(key: key);
  final String label;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Expanded(child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Config.primaryColor
      ),
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
      child: Column(
        children:  <Widget>[
          Text(
            label,
            style:const  TextStyle(

                color: Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.w600
            ),
          ),
          const SizedBox(height: 10,),
          Text(
            value,
            style: const TextStyle(

              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    )

    );
  }
}



