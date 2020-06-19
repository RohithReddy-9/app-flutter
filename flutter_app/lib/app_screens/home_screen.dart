
import 'package:flutter/material.dart';
import 'package:flutterapp/app_screens/drt_screen.dart';
import 'package:flutterapp/app_screens/traveller_screen.dart';
import 'plan_your_journey_screen.dart';
class HomeScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {

    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {

  int count = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title:Center(
          child: Text(
            "ATIS",
            textDirection: TextDirection.ltr,
            style: TextStyle(color: Colors.white, fontSize: 40.0,
            fontFamily: 'OpenSans'),
          ),
        )
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(0),
          alignment: Alignment.center,
          color: Colors.white,
          child:Column(
            children: <Widget> [Welcome(),PlanYourJourney(),TravellerInfo(),DRT()],
          )
        ),

      )
    );
  }
}

class Welcome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  Container(
        constraints: BoxConstraints.expand(
          height:400,
        ),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/home_background.jpg'),
                fit: BoxFit.cover)
        ),
        child: Center(child: Text('Welcome to ATIS',
          textAlign: TextAlign.center, style:
          TextStyle(color: Colors.white,
              fontSize: 50,
              fontFamily: 'OpenSans',
              fontWeight: FontWeight.w600),),)
    );
  }

}

class PlanYourJourney extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _PlanYourJourneyState();
  }
}

class _PlanYourJourneyState extends State<PlanYourJourney>{
  @override
  Widget build(BuildContext context) {
    return  Container(
        margin: EdgeInsets.only(top:30),
        padding: EdgeInsets.all(0),
        child: RaisedButton(
          textColor: Colors.white,
          color: Colors.white,
            padding: EdgeInsets.all(0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.blue,
                    width: 3.0
                ),
                borderRadius: BorderRadius.all(Radius.circular(5)),
                gradient: LinearGradient(
                  colors: <Color>[
                    Color(0xFF0D47A1),
                    Color(0xFF1976D2),
                    Color(0xFF42A5F5),
                  ]
                )
              ),
              padding: const EdgeInsets.all(10.0),
              child: Text('Plan Your Journey',
                textAlign: TextAlign.center,
                style:TextStyle(color: Colors.white,
                            fontSize: 35,
                            fontFamily: 'OpenSans',
                            fontWeight: FontWeight.w600),
                                ),
            ),
      onPressed: () {
        print("Hello");
        navigateToJourneyPage(context);
      },
        )
    );

  }

}

class TravellerInfo extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _TravellerInfoState();
  }
}

class _TravellerInfoState extends State<TravellerInfo>{
  @override
  Widget build(BuildContext context) {
    return  Container(
        margin: EdgeInsets.only(top:30),
        padding: EdgeInsets.all(0),
        child: RaisedButton(
          textColor: Colors.white,
          color: Colors.white,
          padding: EdgeInsets.all(0),
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.blue,
                    width: 3.0
                ),
                borderRadius: BorderRadius.all(Radius.circular(5)),
                gradient: LinearGradient(
                    colors: <Color>[
                      Color(0xFF0D47A1),
                      Color(0xFF1976D2),
                      Color(0xFF42A5F5),
                    ]
                )
            ),
            padding: const EdgeInsets.all(10.0),
            child: Text('Traveller Information',
              textAlign: TextAlign.center,
              style:TextStyle(color: Colors.white,
                  fontSize: 35,
                  fontFamily: 'OpenSans',
                  fontWeight: FontWeight.w600),
            ),
          ),
          onPressed: () {
            navigateToTravellerPage(context);
            print("Hello");
          },
        )
    );

  }

}


class DRT extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _DRTState();
  }
}

class _DRTState extends State<DRT>{
  @override
  Widget build(BuildContext context) {
    return  Container(
        margin: EdgeInsets.only(top:30),
        padding: EdgeInsets.all(0),
        child: RaisedButton(
          textColor: Colors.white,
          color: Colors.white,
          padding: EdgeInsets.all(0),
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.blue,
                    width: 3.0
                ),
                borderRadius: BorderRadius.all(Radius.circular(5)),
                gradient: LinearGradient(
                    colors: <Color>[
                      Color(0xFF0D47A1),
                      Color(0xFF1976D2),
                      Color(0xFF42A5F5),
                    ]
                )
            ),
            padding: const EdgeInsets.all(10.0),
            child: Text('DRT',
              textAlign: TextAlign.center,
              style:TextStyle(color: Colors.white,
                  fontSize: 35,
                  fontFamily: 'OpenSans',
                  fontWeight: FontWeight.w600),
            ),
          ),
          onPressed: () {
            print("Hello");
            navigateToDRTPage(context);
          },
        )
    );

  }

}

void navigateToJourneyPage(context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return JourneyPlanning();
  }));
}

void navigateToTravellerPage(context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return TravellingInfo();
  }));
}

void navigateToDRTPage(context) {
  Navigator.push(context, MaterialPageRoute(builder: (context) {
    return DRTpage();
  }));
}