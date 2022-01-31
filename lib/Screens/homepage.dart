import 'package:autiful/Screens/select_language.dart';
import 'package:autiful/buttons.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../textfield.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/backimage.jpg'),
                  fit: BoxFit.cover
                ),
              ),),
              SingleChildScrollView(
                child: Column(

                  children: [
                    const SizedBox(height: 100,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        HomePageButton(text: 'For Me',color: Colors.green,),
                        SizedBox(width: 25,),
                        HomePageButton(text: 'Community',color: Colors.orange,),
                      ],
                    ),
                    const SizedBox(height: 20,),

                    Text('LEARN YOUR UNIQUENESS', style: kStyleLanguage.copyWith(fontSize: 20, color: Colors.brown)),
                    const SizedBox(height: 10,),

                    Text('Discover the daily support and help you need', style: kStyleLanguage.copyWith(fontSize: 15,)),
                    SizedBox(height: 30,),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                      child: TextFieldSearch(),
                    ),
                    const SizedBox(height: 30,),

                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 8.0),
                          child: Row(
                            children: [
                              RowContents(color: Color(0xff800080),text: 'Articles', icon: Icons.text_snippet,),
                              const SizedBox(width: 10,),

                              RowContents(color: Colors.blue,text: 'Development', icon: Icons.person_outline,),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 20),
                          child: Row(
                            children: [
                              RowContents(color: Colors.grey,text: 'Games', icon: Icons.videogame_asset),
                              const SizedBox(width: 10,),

                              RowContents(color: Colors.pink,text: 'Daily Plan', icon: Icons.calendar_today,),
                            ],
                          ),
                        ),


                      ],
                    )




                  ],
                ),
              ),

          ],
        ),
      ),

    );
  }
}

class RowContents extends StatelessWidget {
  const RowContents({
    this.color,this.text,this.icon
  });

  final color;
  final text;
  final icon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: ()async{




          Navigator.push(context, MaterialPageRoute(builder: (context){
            return SelectLanguage();
          }));
        },
        child: Container(
          height: 100,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(12)
          ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                 Icon(
                icon,
                   size: 50,
                ),
                Text(text, style:  kStyleButtonContent.copyWith(color: Colors.white,fontWeight: FontWeight.w600),),
              ],
            )),
      ),
    );
  }
}
