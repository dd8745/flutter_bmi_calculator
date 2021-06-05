import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;
const bottomBarColor = Color(0xFFEB1555);
const cardColor = Color(0xFF1D1E33);

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 20.0,
          title: Text("BMI CALCULATOR"),
        ),
        body: Column(
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: ReusableCard(
                  changingColor: cardColor,
                )),
                Expanded(
                    child: ReusableCard(
                  changingColor: cardColor,
                )),
              ],
            )),
            Expanded(
              child: Expanded(
                  child: ReusableCard(
                changingColor: cardColor,
              )),
            ),
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: ReusableCard(
                  changingColor: cardColor,
                )),
                Expanded(
                  child: ReusableCard(
                    changingColor: cardColor,
                  ),
                ),
              ],
            )),
            Container(
              color: bottomBarColor,
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: bottomContainerHeight,
            )
          ],
        ));
  }
}

class ReusableCard extends StatelessWidget {
  final Color changingColor;

  ReusableCard({required this.changingColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: changingColor,
      ),
    );
  }
}
