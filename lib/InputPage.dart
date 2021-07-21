import 'package:bmi_calculator/ReusableCard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'IconContent.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedgender;
  int height = 180;

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
                          selectedgender = Gender.male;
                        });
                      },
                      child: ReusableCard(
                        colour: selectedgender == Gender.male
                            ? kActivecardColor
                            : kInActivecardColor,
                        cardChild: IconContent(
                          icon: FontAwesomeIcons.mars,
                          label: 'MALE',
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          print('female is pressed');
                          selectedgender = Gender.female;
                        });
                      },
                      child: ReusableCard(
                        colour: selectedgender == Gender.female
                            ? kActivecardColor
                            : kInActivecardColor,
                        cardChild: IconContent(
                          icon: FontAwesomeIcons.venus,
                          label: 'FEMALE',
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                colour: kActivecardColor,
                cardChild: Column(
                  children: [
                    Text(
                      'HEIGHT',
                      style: KNumbertextstyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          height.toString(),
                          style: KNumbertextstyle,
                        ),
                        Text(
                          'cm',
                          style: KNumbertextstyle,
                        )
                      ],
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          activeTrackColor: Colors.white,
                          thumbColor: Color(0xFFEB1555),
                          overlayColor: Color(0x29EB1555),
                          inactiveTrackColor: Color(0xFF8D8E98),
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15.0),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 30.0)),
                      child: Slider(
                        value: height.toDouble(),
                        min: 120,
                        max: 220,
                        inactiveColor: Color(0xFF8D8E98),
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      colour: kActivecardColor,
                      cardChild: Column(
                        children: [
                          Text('ROW 1'),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: kActivecardColor,
                      cardChild: Column(
                        children: [
                          Text(
                            'Row 2',
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(15.0),
              width: double.infinity,
              height: kBottomContainerHeight,
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
