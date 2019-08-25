import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            padding: EdgeInsets.only(left: 10.0, top: 40.0),
            alignment: Alignment.center,
            color: Colors.white,
            // width: 200.0,
            // height: 100.0,

            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text("Spice Jet",
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 20.0,
                              fontFamily: "Raleway",
                              fontWeight: FontWeight.w300),
                          textDirection: TextDirection.ltr),
                    ),
                    Expanded(
                      child: Text("From Mumbai to Delhi Today",
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 20.0,
                              fontFamily: "Raleway",
                              fontWeight: FontWeight.w300),
                          textDirection: TextDirection.ltr),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text("Air India",
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 20.0,
                              fontFamily: "Raleway",
                              fontWeight: FontWeight.w300),
                          textDirection: TextDirection.ltr),
                    ),
                    Expanded(
                      child: Text("From Mumbai to Delhi via jalandhar",
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 20.0,
                              fontFamily: "Raleway",
                              fontWeight: FontWeight.w300),
                          textDirection: TextDirection.ltr),
                    )
                  ],
                ),
                SplashImageAsset(),
                FlightBookButton()
              ],
            )));
  }
}

class SplashImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/splash.png');
    Image image = Image(image: assetImage, width: 250.0, height: 250.0);
    return Container(
      child: image,
    );
  }
}

class FlightBookButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30.0),
      width: 250.0,
      height: 50.0,
      child: RaisedButton(
          onPressed: () => bookFlight(context),
          color: Colors.lightBlueAccent,
          elevation: 6.0,
          child: Text(
            "Book Your Flight",
            style: TextStyle(
                fontSize: 20.0,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w700),
          )),
    );
  }

  void bookFlight(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text("Flight Booked Successfully"),
      content: Text("Have a pleasant flight"),
    );

    showDialog(
        context: context, builder: (BuildContext context) => alertDialog);
  }
}
