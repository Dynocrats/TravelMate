import 'package:flutter/material.dart';
import 'searchLocation.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.topCenter,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.blue,
            Colors.green,
          ],
        )),
        child: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset(
                  'assets/images/searchBackground.jpg',
                ),
                //
                Container(
                  margin: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: Colors.white),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search",
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SearchLocation()),
                      );
                    },
                  ),
                ),
                //
              ],
            ),
            //
            Container(
              //"Best Destination Selections...",
              margin: EdgeInsets.all(5.0),
              child: Text(
                "Top Destinations...",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),

            Container(
              height: 100.0,
              // width: 500.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (BuildContext context, index) {
                  return Container(
                    margin: EdgeInsets.all(5.0),
                    width: 160.0,
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/searchBackground.jpg',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                      padding: EdgeInsets.all(3.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          color: Colors.white),
                      child: Text(
                        "Trincomalee",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            Container(
              //"Best Guide Selections...",
              margin: EdgeInsets.all(5.0),
              child: Text(
                "Top Guides...",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),

            Container(
              height: 150.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (BuildContext context, index) {
                  return Container(
                    margin: EdgeInsets.all(5.0),
                    width: 100.0,
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/tourGuide.jpg',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                      padding: EdgeInsets.all(3.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          color: Colors.white),
                      child: Text(
                        "Tom Smith",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            Container(
              //"Best hotel Selections...",
              margin: EdgeInsets.all(5.0),
              child: Text(
                "Top Hotels...",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),

            Container(
              height: 100.0,
              width: 500.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (BuildContext context, index) {
                  return Container(
                    margin: EdgeInsets.all(5.0),
                    width: 160.0,
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/grandDivineHotel.jpg',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                      padding: EdgeInsets.all(3.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          color: Colors.white),
                      child: Text(
                        "Grand Divine",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.post_add_sharp),
            label: 'Posts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_pin_outlined),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.amber[800],
      ),
    );
  }
}
