import 'package:flutter/material.dart';
import 'constants.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, @required this.onPressed});
  final IconData icon;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPressed,
      constraints: BoxConstraints.tightFor(
        height: 56.0,
        width: 56.0,
      ),
      elevation: 5.0,
      shape: CircleBorder(),
      fillColor: kAccentColor,
    );
  }
}

class BottomButton extends StatelessWidget {
  BottomButton({@required this.text, this.onTap});
  final Function onTap;
  final Text text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 70.0,
        color: kAccentColor,
        margin: EdgeInsets.only(top: 10),
        child: Center(
          child: text,
        ),
      ),
    );
  }
}
