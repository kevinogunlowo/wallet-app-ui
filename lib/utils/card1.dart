import 'package:flutter/material.dart';

import 'color.dart';

class Card1 extends StatelessWidget {
  final double balance;
  final int cardNumber;
  final int expiryMonth;
  final int expiryYear;
  final String holderName;
  final String cardChipPath;
  final String bank;
  final color;
  const Card1(
      {required this.balance,
      required this.bank,
      required this.cardNumber,
      required this.expiryMonth,
      required this.expiryYear,
      required this.color,
      required this.holderName,
      required this.cardChipPath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        width: 300,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(height: 20),
          Text(
            bank.toString(),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\₦' + balance.toString(),
                style: TextStyle(
                    color: AppColors.textColor,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                height: 40,
                width: 40,
                child: Image.asset('assets/icons/chip.png'),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            //card number
            Text(
              cardNumber.toString(),
              style: TextStyle(color: AppColors.textColor),
            ),

            //card expiry number
            Text(
              expiryMonth.toString() + '/' + expiryYear.toString(),
              style: TextStyle(color: AppColors.textColor),
            )
          ]),
          SizedBox(height: 20),
          Text(
            holderName,
            style: const TextStyle(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ]),
      ),
    );
  }
}
