import 'package:autiful/Screens/homepage.dart';
import 'package:autiful/constants.dart';
import 'package:flutter/material.dart';

import '../buttons.dart';


class SelectLanguage extends StatelessWidget {
  const SelectLanguage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent.shade100,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                const SizedBox(height: 150.0),
                Text('Choose Your Preferred Language', style: kStyleLanguage.copyWith(fontSize: 20)),
                const SizedBox(height: 10.0),
                Text('तपाईं कुन भाषा प्रयोग गर्न चाहनु हुन्छ?', style: kStyleLanguage),
                const SizedBox(height: 50.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 80.0),
                  child: Column(
                    children: [
                      LoginRegisterButton(text: 'English',
                          onPress: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context){
                              return HomePage();
                            }));
                          },
                          color: Colors.cyan.shade400),
                      const SizedBox(height: 20.0),
                      LoginRegisterButton(text: 'नेपाली', color: Colors.pink,),
                    ],
                  ),
                ),







              ],
            ),
          ),
        ),
      ),
    );
  }
}
