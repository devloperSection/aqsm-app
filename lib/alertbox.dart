import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  final String title, description, buttonText;
  final Image image;

  CustomDialog({
    @required this.title,
    @required this.description,
    @required this.buttonText,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Consts.padding),
      ),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context),
    );
  }
}

dialogContent(BuildContext context) {
  return Stack(
    children: <Widget>[
      //...bottom card part,
      Container(
        padding: EdgeInsets.only(
          top: Consts.avatarRadius + Consts.padding,
          bottom: Consts.padding,
          left: Consts.padding,
          right: Consts.padding,
        ),
        margin: EdgeInsets.only(top: Consts.avatarRadius),
        decoration: new BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(Consts.padding),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10.0,
              offset: const Offset(0.0, 10.0),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min, // To make the card compact
          children: <Widget>[
            Text(
              "Comsats University Islamabad, Wah Cantt",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              "Currently data is available of only 1 location. Stay connected for more locations in future",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 24.0),
            Align(
              alignment: Alignment.bottomRight,
              child: FlatButton(
                onPressed: () {
                  Navigator.of(context).pop(); // To close the dialog
                },
                child: Text("OK"),
              ),
            ),
          ],
        ),
      ),
      //...top circlular image part,
      Positioned(
        left: Consts.padding,
        right: Consts.padding,
        child: CircleAvatar(
          child: Icon(Icons.location_on, size: 70,),
          backgroundColor: Colors.blueAccent,
          radius: Consts.avatarRadius,
        ),
      ),
    ],
  );
}

class Consts {
  Consts._();

  static const double padding = 16.0;
  static const double avatarRadius = 66.0;
}
