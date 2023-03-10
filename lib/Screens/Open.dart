import 'package:car_rating/Model/padding_Button.dart';
import 'package:flutter/material.dart';
import 'package:car_rating/Screens/Car_info.dart';
import 'package:car_rating/Screens/Car_List.dart';

class Open extends StatelessWidget {
  const Open({Key key}) : super(key: key);
  static const routee = '/Open';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              height: 300.0,
              child: Image.asset('assets/car.png'),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              padding_button(
                  colour: Colors.black,
                  OnPressed: () =>
                      Navigator.of(context).pushNamed(Car_Info.routee),
                  Title: "ADD CAR"),
              const SizedBox(
                width: 50,
              ),
              padding_button(
                  colour: Colors.black,
                  OnPressed: () =>
                      Navigator.of(context).pushNamed(Car_List.routee),
                  Title: "CAR LIST"),
            ],
          )
        ],
      ),
    );
  }
}
