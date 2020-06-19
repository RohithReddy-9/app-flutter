import 'package:flutter/material.dart';

class JourneyPlanning extends StatefulWidget {

  JourneyPlanning();

  @override
  State<StatefulWidget> createState() {

    return JourneyPlanningState();
  }
}

class JourneyPlanningState extends State<JourneyPlanning> {

  static var _priorities = ['High', 'Low'];

  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  JourneyPlanningState();

  @override
  Widget build(BuildContext context) {

    TextStyle textStyle = Theme.of(context).textTheme.title;

    return WillPopScope(

        onWillPop: () {
          moveToLastScreen();
        },

        child: Scaffold(
          appBar: AppBar(
              title:Center(
                child: Text(
                  "Open trip Journey Planner",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(color: Colors.white, fontSize: 40.0,
                      fontFamily: 'OpenSans'),
                ),
              ),
            leading: IconButton(icon: Icon(
                Icons.arrow_back),
                onPressed: () {
                  // Write some code to control things, when user press back button in AppBar
                  moveToLastScreen();
                }
            ),
          ),

          body: Padding(
            padding: EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
            child: ListView(
              children: <Widget>[

                // Second Element
                Padding(
                  padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                  child: TextField(
                    controller: titleController,
                    style: textStyle,
                    onChanged: (value) {
                      debugPrint('Something changed in Title Text Field');
                    },
                    decoration: InputDecoration(
                        labelText: 'From',
                        labelStyle: textStyle,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0)
                        )
                    ),
                  ),
                ),

                // Third Element
                Padding(
                  padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                  child: TextField(
                    controller: descriptionController,
                    style: textStyle,
                    onChanged: (value) {
                      debugPrint('Something changed in Description Text Field');
                    },
                    decoration: InputDecoration(
                        labelText: 'To',
                        labelStyle: textStyle,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0)
                        )
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                  child: TextField(
                    controller: titleController,
                    style: textStyle,
                    onChanged: (value) {
                      debugPrint('Something changed in Title Text Field');
                    },
                    decoration: InputDecoration(
                        labelText: 'Departure Time',
                        labelStyle: textStyle,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0)
                        )
                    ),
                  ),
                ),

                // Fourth Element
              Container(
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
                    child: Text('Plan Your Trip',
                      textAlign: TextAlign.center,
                      style:TextStyle(color: Colors.white,
                          fontSize: 35,
                          fontFamily: 'OpenSans',
                          fontWeight: FontWeight.w600),
                        ),
                      ),
                      onPressed: () {
                        print("Hello");
                      },
                    )
                ),

                    ],
                  ),
                ),
            ),
          );
  }

  void moveToLastScreen() {
    Navigator.pop(context);
  }
}


