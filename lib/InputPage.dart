import 'package:bmi_calculator/ReusableCard.dart';
import 'package:flutter/material.dart';
import 'IconContent.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const ActivecardColor = Color(0xFF1D1E33);
const InActivecardColor = Color(0xFF11132A);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = InActivecardColor;
  Color femaleCardColor = InActivecardColor;

  //1 = male, 2 = female
  void updateColor(int gender) {
    //male card is pressed
    if (gender == 1) {
      if (maleCardColor == InActivecardColor) {
        maleCardColor = ActivecardColor;
      } else {
        maleCardColor = InActivecardColor;
      }
    }
    // female is pressed
    if (gender == 2) {
      if (femaleCardColor == InActivecardColor) {
        femaleCardColor = ActivecardColor;
      } else {
        femaleCardColor = InActivecardColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          print('male is pressed');
                          updateColor(1);
                        });
                      },
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            updateColor(2);
                          });
                        },
                        child: ReusableCard(
                          colour: maleCardColor,
                          cardChild: IconContent(
                            icon: FontAwesomeIcons.mars,
                            label: 'MALE',
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: femaleCardColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                colour: ActivecardColor,
                cardChild: IconContent(
                  icon: FontAwesomeIcons.phone,
                  label: 'PHONE',
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      colour: ActivecardColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.play,
                        label: "PLAY",
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: ActivecardColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.anchor,
                        label: 'LABEL',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(15.0),
              width: double.infinity,
              height: bottomContainerHeight,
              decoration: BoxDecoration(
                color: Color(0xFFEB1555),
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
