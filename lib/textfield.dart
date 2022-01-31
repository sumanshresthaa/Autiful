import 'package:flutter/material.dart';

class TextFieldSearch extends StatelessWidget {
  const TextFieldSearch({this.label,this.imageName,this.textFieldDesignType, this.textFieldType}) : super();
  final String? label;
  final String? imageName;
  final String? textFieldDesignType;
  final String? textFieldType;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.black,
      decoration:  InputDecoration(
        contentPadding: EdgeInsets.all(10),
         hintText: 'Search ...',
        suffixIcon: Padding(
          padding: const EdgeInsets.only(left: 26, right: 17),
          child: Icon(Icons.search),),
        filled: true,
        fillColor: Colors.transparent, //To color the text field do these
        border:  OutlineInputBorder(

          borderRadius:

          const  BorderRadius.all(Radius.circular(24.0)),
        ),
      ),

    );
  }
}

