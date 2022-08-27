import 'dart:async';

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet_app/util/my_card.dart';
import 'package:wallet_app/util/my_button.dart';

import '../util/list_info.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //page controller
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          backgroundColor: Colors.pink,
          child: Icon(Icons.monetization_on,size: 35,),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          child: Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.home,size: 35,color: Colors.pink[200]),
                ),
                IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.settings,size: 35,),
                ),
              ],
            ),
          ),
        ),


        body: SafeArea(
          child: Column(
            children: [
            //  app bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'My',
                          style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
                        ),
                        Text(
                          ' Cards',
                          style: TextStyle(fontSize: 28),
                        ),
                      ],
                    ),

                  //plus button
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration:BoxDecoration(
                        color: Colors.grey[400],
                        shape: BoxShape.circle
                      ),
                      child: Icon(Icons.add),
                    )

                  ],
                ),
              ),

              SizedBox(height: 20,),

              //  cards
              Container(
                height: 180,
                child: PageView(
                  scrollDirection: Axis.horizontal,
                  controller: _controller,
                  children: [
                    MyCard(balance: 2564.89, cardNumber: 5256359479396062, expiryMonth: 11, expiryYear: 25, color: Colors.blue[800]),
                    MyCard(balance: 1588, cardNumber: 5256359479396062, expiryMonth: 11, expiryYear: 25, color: Colors.yellow[900]),
                    MyCard(balance: 84327.45, cardNumber: 5256359479396062, expiryMonth: 11, expiryYear: 25, color: Colors.green[600]),
                  ],
                ),
              ),

              SizedBox(height: 20,),
              SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: ExpandingDotsEffect(
                  // activeDotColor: Colors.grey.shade500
                ),
              ),


              // 3 buttons =>send + pay + bill
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MyButton(
                    iconImage: 'send-money.png',
                    buttonText: 'Send',
                  ),
                  MyButton(
                    iconImage: 'credit-card.png',
                    buttonText: 'Pay',
                  ),
                  MyButton(
                      iconImage: 'bill.png',
                      buttonText: 'Bills'
                  ),

                ],
              ),


              SizedBox(height: 30,),
              //  transaction + stats
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                  // statistics
                    ListInfo(
                        iconImage: 'statistics.png',
                        Title: 'Statistics',
                        SubTitle: 'Payments and Income'
                    ),
                    ListInfo(
                        iconImage: 'transaction.png',
                        Title: 'Transaction',
                        SubTitle: 'Transaction history'
                    )

                  // Transaction
                  ],
                ),
              ),



            ],
          ),
        ),
      ),
    );
  }
}
