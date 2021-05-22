import 'package:flutter/material.dart';
import 'homePage.dart';
import './locationDetails.dart';

class SearchLocation extends StatefulWidget {
  @override
  _SearchLocationState createState() => _SearchLocationState();
}

class _SearchLocationState extends State<SearchLocation> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            tooltip: 'Go to the next page',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
          ),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.description),
                text: "Details",
              ),
              Tab(
                icon: Icon(Icons.people),
                text: "Guides",
              ),
              Tab(
                icon: Icon(Icons.hotel),
                text: "Hotels",
              ),
              Tab(
                icon: Icon(Icons.place),
                text: "Map",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            LocationDetails(),
            LocationDetails(),
            Center(
              child: Text('It\'s snowy here'),
            ),
            Center(
              child: Text('It\'s cloudy here'),
            ),
          ],
        ),
      ),
    );
    // return Scaffold(
    //   // appBar: AppBar(
    //   //   // title: const Text('TabBar Widget'),
    //   //   bottom: const TabBar(
    //   //     tabs: <Widget>[
    //   //       Tab(
    //   //         icon: Icon(Icons.cloud_outlined),
    //   //       ),
    //   //       Tab(
    //   //         icon: Icon(Icons.beach_access_sharp),
    //   //       ),
    //   //       Tab(
    //   //         icon: Icon(Icons.brightness_5_sharp),
    //   //       ),
    //   //     ],
    //   //   ),
    //   // ),

    //   // body: Container(
    //   //   alignment: Alignment.topCenter,
    //   //   color: Colors.green[200],
    //   //   child: ListView(
    //   //     children: <Widget>[
    //   //       Container(
    //   //         margin: EdgeInsets.only(
    //   //           left: 5.0, top: 20.0, right: 5.0, bottom: 5.0),
    //   //         decoration: BoxDecoration(
    //   //           borderRadius: BorderRadius.circular(30.0),
    //   //           color: Colors.white),
    //   //         child: TextField(
    //   //           decoration: InputDecoration(
    //   //             hintText: "Search",
    //   //             border: InputBorder.none,
    //   //             focusedBorder: InputBorder.none,
    //   //             enabledBorder: InputBorder.none,
    //   //             errorBorder: InputBorder.none,
    //   //             disabledBorder: InputBorder.none,
    //   //             prefixIcon: Icon(
    //   //               Icons.search,
    //   //               color: Colors.black,
    //   //             ),
    //   //           ),
    //   //         ),
    //   //       ),

    //   //       Container(
    //   //         height: 100.0,
    //   //         width: 500.0,
    //   //         child: ListView.builder(
    //   //           scrollDirection: Axis.horizontal,
    //   //           itemCount: 10,
    //   //           itemBuilder: (BuildContext context, index) {
    //   //             return Container(
    //   //               margin: EdgeInsets.all(5.0),
    //   //               width: 160.0,
    //   //               alignment: Alignment.bottomCenter,
    //   //               decoration: BoxDecoration(
    //   //                 borderRadius: BorderRadius.circular(15.0),
    //   //                 image: DecorationImage(
    //   //                   image: AssetImage(
    //   //                     'images/grandDivineHotel.jpg',
    //   //                   ),
    //   //                   fit: BoxFit.cover,
    //   //                 ),
    //   //               ),
    //   //               child: Container(
    //   //                 padding: EdgeInsets.all(3.0),
    //   //                 decoration: BoxDecoration(
    //   //                   borderRadius: BorderRadius.circular(30.0),
    //   //                   color: Colors.white
    //   //                 ),
    //   //                 child: Text(
    //   //                   "Grand Divine",
    //   //                   style: TextStyle(
    //   //                     color: Colors.black,
    //   //                     fontWeight: FontWeight.w500,
    //   //                   ),
    //   //                 ),
    //   //               ),
    //   //             );
    //   //           },
    //   //         ),
    //   //       ),
    //   //     ],
    //   //   ),
    //   // ),

    // );
  }
}
