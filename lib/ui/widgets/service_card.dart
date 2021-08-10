import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardService extends StatelessWidget {
  const CardService(
      {required this.text, required this.onTap, required this.icon});

  final String text;
  final String icon;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shadowColor: Colors.black26,
      margin: EdgeInsets.all(0.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(13.0),
      ),
      child: CupertinoButton(
        onPressed: onTap,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        borderRadius: BorderRadius.circular(13.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 28,
              backgroundColor: Color(0xff1171FF).withOpacity(0.1),
              child: Image.asset(
                icon,
                width: 48,
                height: 48,
              ),
            ),
            SizedBox(height: 13.0),
            Text(
              text,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w600,
                fontFamily: 'Montserrat',
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
