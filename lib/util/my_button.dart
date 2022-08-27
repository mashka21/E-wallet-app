import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {

  final String iconImage;
  final String buttonText;

  const MyButton({Key? key,required this.iconImage, required this.buttonText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //icon
        Container(
          padding: EdgeInsets.all(13),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey,
                    blurRadius: 20
                )
              ]
          ),
          height: 100,
          child: Center(
            child: Image.asset('lib/icons/$iconImage'),

          ),
        ),

        SizedBox(height: 10,),
        //send text
        Text('$buttonText',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

      ],
    );
  }
}
