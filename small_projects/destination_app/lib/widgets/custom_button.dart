import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Color? buttonColor;
  final Widget nextScreen;
  const CustomButton(
      {super.key,
      required this.title,
      this.buttonColor,
      required this.nextScreen});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return SizedBox(
      height: screenSize.height * 0.06,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => nextScreen));
        },
        style: ElevatedButton.styleFrom(
          foregroundColor:
              buttonColor != null ? Colors.white : const Color(0xff0B4980),
          backgroundColor: buttonColor ?? Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          minimumSize: Size.fromWidth(screenSize.width * 0.7),
        ),
        child: Text(
          title,
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
