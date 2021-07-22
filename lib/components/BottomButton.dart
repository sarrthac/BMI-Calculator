import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.onTap, required this.buttonTitle});

  final Function onTap;
  final String buttonTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeButtonStyle,
          ),
        ),
        margin: EdgeInsets.all(15.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        decoration: BoxDecoration(
          color: Color(0xFFEB1555),
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
