import 'package:flutter/material.dart';

class ListInfo extends StatelessWidget {

  final String iconImage;
  final String Title;
  final String SubTitle;

  const ListInfo({Key? key,required this.iconImage,required this.Title,required this.SubTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 100,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(15)
                ),
                //icon
                child: Image.asset('lib/icons/$iconImage'),
              ),
              SizedBox(width: 23,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '$Title',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 22
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    '$SubTitle',
                    style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 18
                    ),
                  ),
                ],
              ),
            ],
          ),
          Icon(Icons.arrow_forward_ios),
        ],
      ),
    );
  }
}
