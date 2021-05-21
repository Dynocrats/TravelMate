import 'package:flutter/material.dart';

class LocationDetails extends StatefulWidget {
  @override
  _LocationDetailsState createState() => _LocationDetailsState();
}

class _LocationDetailsState extends State<LocationDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.topCenter,
        color: Colors.green[200],
        padding: EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            Container(
              height: 100.0,
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.white),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus commodo at purus vitae semper. Aenean a turpis vulputate, consequat libero vel, interdum augue. Fusce eget velit orci. Curabitur id lobortis dui, id aliquet diam. Donec convallis iaculis enim, eget cursus lacus efficitur in. Nulla ultricies eget enim vitae auctor. In id justo vitae elit elementum sagittis nec eu sapien.",
                style: TextStyle(
                  color: Colors.black87,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 15, 0, 10),
              child: Text(
                'IMAGES',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w500
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 15, 0, 10),
              child: Text(
                'NEARBY LOCATIONS',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w500
                ),
              ),
            ),
          ],
        ),
        // decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(30.0), color: Colors.red),
        // child: Text('It\'s cloudy here'),
      ),
    );
  }
}
