import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final double balance;
  final int cardNumber;
  final int expiryMonth;
  final int expiryYear;
  final color;

  const MyCard({ Key? key,required this.balance, required this.cardNumber, required this.expiryMonth, required this.expiryYear, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: 350,
        padding: EdgeInsets.all(17),
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(15)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Balance',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,letterSpacing: 1.5),),
                Image.asset('lib/icons/visa2.png',height: 55,)
              ],
            ),
            SizedBox(height: 5,),
            Text('\$$balance',style: TextStyle(color: Colors.white,fontSize: 36,fontWeight: FontWeight.bold,letterSpacing: 1.5),),
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(cardNumber.toString().substring(0,4)+' '+cardNumber.toString().substring(4,8)+' '+cardNumber.toString().substring(8,12)+' '+cardNumber.toString().substring(12,16),style: TextStyle(color: Colors.white)),
                Text('$expiryMonth/$expiryYear',style: TextStyle(color: Colors.white)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
