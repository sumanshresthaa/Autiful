import 'package:autiful/constants.dart';
import 'package:flutter/material.dart';

class LoginRegisterButton extends StatelessWidget {
  const LoginRegisterButton({required this.text,this.onPress, this.color});

  final text;
  final onPress;
  final color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 49,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPress,
        child: Text(text,style: kStyleButtonContent.copyWith(color: Colors.black),),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(color),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)))
        ),
      ),
    );
  }
}


class HomePageButton extends StatelessWidget {
  const HomePageButton({required this.text,this.onPress, this.color});

  final text;
  final onPress;
  final color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,

      child: ElevatedButton(
        onPressed: onPress,
        child: Text(text,style: kStyleButtonContent.copyWith(color: Colors.white),),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(color),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)))
        ),
      ),
    );
  }
}
