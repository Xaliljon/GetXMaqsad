import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final bool isLoading;

  const CustomButton(
      {Key? key,
      required this.title,
      required this.onPressed,
      required this.isLoading})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 65,
      child: Card(
        elevation: 8,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        shadowColor: Color(0xff1171FF).withOpacity(0.3),
        child: CupertinoButton(
          padding: isLoading
              ? EdgeInsets.all(0)
              : EdgeInsets.symmetric(vertical: 16, horizontal: 100),
          borderRadius: BorderRadius.circular(16),
          color: Color(0xff1171FF),
          onPressed: onPressed,
          child: isLoading
              ? loadingWidget()
              : Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Montserrat'),
                ),
        ),
      ),
    );
  }
}

Widget loadingWidget() {
  return Padding(
    padding: EdgeInsets.only(
      right: 16,
      left: 16,
    ),
    child: SizedBox(
      width: 24,
      height: 24,
      child: CircularProgressIndicator(
        strokeWidth: 3,
        backgroundColor: Colors.white,
      ),
    ),
  );
}
