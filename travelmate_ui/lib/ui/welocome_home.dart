import 'package:flutter/material.dart';

// class FirstApp extends StatelessWidget {

//   final String title;
//   FirstApp({Key key, this.title}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     // return Container(
//     //   color: Colors.green,
//     //   child: Row(
//     //     mainAxisAlignment: MainAxisAlignment.center,
//     //     children:<Widget> [
//     //       Text(
//     //         "Hi",
//     //         textDirection: TextDirection.ltr,
//     //         style: TextStyle(color: Colors.blue),
//     //       ),

//     //       Text(
//     //         "Hi",
//     //         textDirection: TextDirection.ltr,
//     //         style: TextStyle(color: Colors.blue),
//     //       ),

//     //       Expanded(
//     //         child: Text(
//     //           "Hi",
//     //           textDirection: TextDirection.ltr,
//     //           style: TextStyle(color: Colors.blue),
//     //         ),
//     //       ),

//     //       Container(
//     //         color: Colors.deepOrange,
//     //         alignment: Alignment.bottomLeft,
//     //         child: Text(
//     //           "Hi",
//     //           textDirection: TextDirection.ltr,
//     //           style: TextStyle(color: Colors.blue),
//     //         ),

//     //       )


//     //     ],
//     //   ),
//     // );

//     void _method() {
//       print("Search");
//     }

//     // return Scaffold(
//     //   appBar: AppBar(
//     //     backgroundColor: Colors.green,
//     //     title: Text(
//     //       "Hi",
//     //     ),
//     //     actions: [
//     //       IconButton(
//     //         icon: Icon(Icons.send), 
//     //         onPressed: ()=> {debugPrint("Tapped")}
//     //       ),
//     //       IconButton(
//     //         icon: Icon(Icons.search), 
//     //         onPressed: _method
//     //       )
//     //     ],
//     //   ),

//     //   body: Container(
//     //     alignment: Alignment.center,
//     //     child: Column(
//     //       mainAxisAlignment: MainAxisAlignment.center,
//     //       children: [
//     //         Text(
//     //           "Hi",
//     //           style: TextStyle(fontSize: 20),
//     //         ),

//     //         InkWell(
//     //           child: Text("Hiiiii"),
//     //           onTap: () => {
//     //             debugPrint("Button Tapped")
//     //           }
//     //         )
//     //       ],
//     //     ),
//     //   ),
//     //   backgroundColor: Colors.grey,

//     //   bottomNavigationBar: BottomNavigationBar(
//     //     items: [
//     //       BottomNavigationBarItem(icon: Icon(Icons.add), title: Text("bn1")),
//     //       BottomNavigationBarItem(icon: Icon(Icons.add_alarm), title: Text("bn1")),
//     //       BottomNavigationBarItem(icon: Icon(Icons.apps), title: Text("bn1")),
//     //     ], onTap: (int i) => debugPrint("tapped $i")
//     //   ),

//     //   floatingActionButton: FloatingActionButton(
//     //     onPressed: null,
//     //     backgroundColor: Colors.indigo,
//     //     tooltip: "hey",
//     //     child: Icon(Icons.missed_video_call),
//     //   ),
//     // );
//     return new Scaffold(
//       appBar: AppBar(
//         title: Text(title),
//       ),
//       body: Center(
//         child: CustomButton(),
//       ),
//     );
    
//   }

// }

// class CustomButton extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         final snackbar = new SnackBar(
//           content: Text("SnackBar"), 
//           backgroundColor: Theme.of(context).backgroundColor,
//           duration: Duration(milliseconds: 1000),
//         ); 
        
//         Scaffold.of(context).showSnackBar(snackbar);
//       },


//       child: Container(
//         padding: new EdgeInsets.all(18.0),
//         decoration: BoxDecoration(
//           color: Theme.of(context).buttonColor,
//           borderRadius: BorderRadius.circular(5.5)
//         ),
//         child: Text("First Button"),
//       )
//     );
//   }
// }

// class FirstApp extends StatefulWidget {
//   @override
//   _FirstAppState createState() => _FirstAppState();
// }

// class _FirstAppState extends State<FirstApp> {

//   int _moneyCounter = 0;
//   void _rainMoney() {
//     setState(() {
//       _moneyCounter += 100;

//     });
//   }



//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("appbar"),
//         backgroundColor: Colors.lightGreen,
//       ),

//       body: Container(
        
//         child: Column(
          
//           children: [
//             Center(
//               child: Text("Get Rich",
//                       style: TextStyle(fontSize: 50, color: Colors.grey),  
//                     ),
//             ),

//             Expanded(
//               child: Center(
//                 child: Text(
//                   "$_moneyCounter",
//                   style: TextStyle(
//                     fontSize: 55, color: _moneyCounter > 10000 ? Colors.lightGreen : Colors.red
//                   ),
//                 ),
//               ),
//             ),

//             Expanded(
//               child: Center(
//                 child: FlatButton(
//                   color: Colors.orange,
//                   onPressed: _rainMoney,
//                   child: Text(
//                     "Click",
//                     style: TextStyle(fontSize: 30),
//                   ),
//                 ),
//               ),
//             ) 
            
//           ],
//         )
//       ),
//     );
//   }
// }


class FirstApp extends StatefulWidget {
  @override
  _FirstAppState createState() => _FirstAppState();
}

class _FirstAppState extends State<FirstApp> {

  String _welcomeText = "";

  final TextEditingController _userController = new TextEditingController();
  final TextEditingController _passwordController = new TextEditingController();

  void _erase() {
    setState(() {
      _userController.clear();
      _passwordController.clear();
    }); 
  }

  void _showWelcome() {
    setState(() {
      if(_userController.text.isNotEmpty && _passwordController.text.isNotEmpty) {
        _welcomeText = _userController.text;
      }
      else {
        _welcomeText = "No name";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hi"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),

      backgroundColor: Colors.blueGrey,

      body: Container(
        alignment: Alignment.topCenter,
        child: ListView(
          children: [
            Image.asset(
              "images/097 face.png",
              width: 90.0,
              height: 90.0,
              color: Colors.greenAccent,
            ),

            Container(
              height: 180.0,
              width: 380.0,
              color: Colors.white,
              child: Column(
                children: [
                  TextField(
                    controller: _userController,
                    decoration: InputDecoration(
                      hintText: 'Username',
                      icon: Icon(Icons.person)
                    ),
                  ),

                  TextField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      icon: Icon(Icons.lock)
                    ),
                    obscureText: true,  //Hide password text
                  ),

                  Padding(
                    padding: EdgeInsets.all(10.5),
                  ),
                  Row(
                    children: [ 
                      Container(
                        margin: const EdgeInsets.only(left: 38.0),
                        child: RaisedButton(
                          color: Colors.orange,
                          onPressed: _showWelcome,
                          child: Text(
                            "Login",
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ),
                      
                      Container(
                        margin: const EdgeInsets.only(left: 120.0),
                        child: RaisedButton(
                          color: Colors.orange,
                          onPressed: _erase,
                          child: Text(
                            "Clear",
                            style: TextStyle(fontSize: 30),
                          ),
                        ),
                      ),  
                    ],
                  )
                ],
              )
            ),
          
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(30.0),
                ),

                Text("Welcome $_welcomeText",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}