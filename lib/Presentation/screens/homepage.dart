import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:food_ui/utils/card1.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../utils/buttons.dart';
import '../../utils/color.dart';
import '../../utils/list_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //pagecontroller
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.grey.shade300,
          body: Column(
            children: [
              //appbar
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          'My',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Cards',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage('assets/icons/kodevin.jpg'),
                    )
                  ],
                ),
              ),
              SizedBox(height: 5),

              //cards
              Container(
                height: 195,
                // color: Colors.black,
                child: PageView(
                  controller: _controller,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Card1(
                      bank: 'Gt Bank',
                      balance: 50000.00,
                      cardNumber: 0234973687,
                      expiryMonth: 10,
                      expiryYear: 29,
                      color: AppColors.card1Color,
                      holderName: 'Kodevin',
                      cardChipPath: 'assets/icons/chip.png',
                    ),
                    Card1(
                      bank: 'Wema Bank',
                      balance: 76000.00,
                      cardNumber: 49202392345,
                      expiryMonth: 03,
                      expiryYear: 27,
                      color: AppColors.card2Color,
                      holderName: 'Bello Idris',
                      cardChipPath: 'assets/icons/chip.png',
                    ),
                    Card1(
                      bank: 'Eco Bank',
                      balance: 70000.00,
                      cardNumber: 9030332843,
                      expiryMonth: 09,
                      expiryYear: 29,
                      color: AppColors.card3Color,
                      holderName: 'Steve Jacob',
                      cardChipPath: 'assets/icons/chip.png',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: WormEffect(
                    spacing: 8.0,
                    dotWidth: 10,
                    dotHeight: 10,
                    paintStyle: PaintingStyle.stroke,
                    strokeWidth: 1.5,
                    dotColor: Colors.grey,
                    activeDotColor: AppColors.dotColor),
              ),
              const SizedBox(
                height: 15,
              ),
              //3 buttons
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //send button
                  Buttons(
                    iconImagePath: 'assets/icons/send.png',
                    buttonText: 'Send Money',
                  ),
                  //pay button
                  Buttons(
                    iconImagePath: 'assets/icons/wallet.png',
                    buttonText: 'Pay',
                  ),

                  //bills button
                  Buttons(
                    iconImagePath: 'assets/icons/headset-.png',
                    buttonText: 'Contact',
                  )
                ],
              ),
              SizedBox(height: 10),
              //column => statisitcs => transactions

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    //statistics
                    MyListTile(
                      iconImagePath: 'assets/icons/bar-chart.png',
                      tileTitle: 'Transaction History',
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    MyListTile(
                      iconImagePath: 'assets/icons/credit-card.png',
                      tileTitle: 'Mobile Top up',
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
