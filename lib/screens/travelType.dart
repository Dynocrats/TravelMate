import 'package:google_signin/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_signin/screens/login.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.blue,
                Colors.green,
              ],
            )
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(flex: 2),
              Image.asset("assets/images/App.png"),
              Spacer(flex: 3),

              Stack(
                children: <Widget>[
                  Text(
                    'TravelMate',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 40,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 3
                        ..color = Colors.black12,
                    ),
                  ),
                  // Solid text as fill.
                  Text(
                    'TravelMate',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 40,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),

              Spacer(),

              Stack(
                children: <Widget>[
                  Text(
                    'Your Best Travel Companion',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 3
                        ..color = Colors.black12,
                    ),
                  ),
                  // Solid text as fill.
                  Text(
                    'Your Best Travel Companion',
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Spacer(flex: 3),
              FittedBox(
                child: TextButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ),
                    ),
                    child: Row(
                      children: [
                        Text(
                          "Skip",
                          style: Theme.of(context).textTheme.bodyText1.copyWith(
                            color: Theme.of(context)
                                .textTheme
                                .bodyText1
                                .color
                                .withOpacity(0.8),
                            fontSize: 15.0
                          ),
                        ),
                        SizedBox(width: kDefaultPadding / 4),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                          color: Theme.of(context)
                              .textTheme
                              .bodyText1
                              .color
                              .withOpacity(0.8),
                        )
                      ],
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
