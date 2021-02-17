import 'package:flutter/material.dart';

class FirstApp extends StatelessWidget {

  final String title;
  FirstApp({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   color: Colors.green,
    //   child: Row(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     children:<Widget> [
    //       Text(
    //         "Hi",
    //         textDirection: TextDirection.ltr,
    //         style: TextStyle(color: Colors.blue),
    //       ),

    //       Text(
    //         "Hi",
    //         textDirection: TextDirection.ltr,
    //         style: TextStyle(color: Colors.blue),
    //       ),

    //       Expanded(
    //         child: Text(
    //           "Hi",
    //           textDirection: TextDirection.ltr,
    //           style: TextStyle(color: Colors.blue),
    //         ),
    //       ),

    //       Container(
    //         color: Colors.deepOrange,
    //         alignment: Alignment.bottomLeft,
    //         child: Text(
    //           "Hi",
    //           textDirection: TextDirection.ltr,
    //           style: TextStyle(color: Colors.blue),
    //         ),

    //       )


    //     ],
    //   ),
    // );

    void _method() {
      print("Search");
    }

    // return Scaffold(
    //   appBar: AppBar(
    //     backgroundColor: Colors.green,
    //     title: Text(
    //       "Hi",
    //     ),
    //     actions: [
    //       IconButton(
    //         icon: Icon(Icons.send), 
    //         onPressed: ()=> {debugPrint("Tapped")}
    //       ),
    //       IconButton(
    //         icon: Icon(Icons.search), 
    //         onPressed: _method
    //       )
    //     ],
    //   ),

    //   body: Container(
    //     alignment: Alignment.center,
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: [
    //         Text(
    //           "Hi",
    //           style: TextStyle(fontSize: 20),
    //         ),

    //         InkWell(
    //           child: Text("Hiiiii"),
    //           onTap: () => {
    //             debugPrint("Button Tapped")
    //           }
    //         )
    //       ],
    //     ),
    //   ),
    //   backgroundColor: Colors.grey,

    //   bottomNavigationBar: BottomNavigationBar(
    //     items: [
    //       BottomNavigationBarItem(icon: Icon(Icons.add), title: Text("bn1")),
    //       BottomNavigationBarItem(icon: Icon(Icons.add_alarm), title: Text("bn1")),
    //       BottomNavigationBarItem(icon: Icon(Icons.apps), title: Text("bn1")),
    //     ], onTap: (int i) => debugPrint("tapped $i")
    //   ),

    //   floatingActionButton: FloatingActionButton(
    //     onPressed: null,
    //     backgroundColor: Colors.indigo,
    //     tooltip: "hey",
    //     child: Icon(Icons.missed_video_call),
    //   ),
    // );
    return new Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: CustomButton(),
      ),
    );
    
  }

}

class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final snackbar = new SnackBar(
          content: Text("SnackBar"), 
          backgroundColor: Theme.of(context).backgroundColor,
          duration: Duration(milliseconds: 1000),
        ); 
        
        Scaffold.of(context).showSnackBar(snackbar);
      },


      child: Container(
        padding: new EdgeInsets.all(18.0),
        decoration: BoxDecoration(
          color: Theme.of(context).buttonColor,
          borderRadius: BorderRadius.circular(5.5)
        ),
        child: Text("First Button"),
      )
    );
  }
}