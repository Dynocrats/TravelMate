import 'package:flutter/material.dart';


class CreateAccount extends StatefulWidget {
  CreateAccount({Key key, this.title}) : super(key: key);



  final String title;

  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  String travelPlaceValue ='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
         Text('Select Your Favorite Travel Place',
         style: TextStyle(fontSize: 35)),

         Container(
           width:150,
          child: Row(    
            children: <Widget>[
              Radio(value: 'Water and Sports', 
              groupValue: travelPlaceValue, 
              onChanged:(val){
                travelPlaceValue = val;
                    setState(() {
                  
                });
              }),
              Text('Water and Sports',
               style: TextStyle(fontSize: 20))
            ],
          ),
         ),
         Container(
        width: 150,
        child: Row(
          children: <Widget>[
               Radio(value: "Adventure and hiking",
                groupValue: travelPlaceValue, 
                onChanged: (val){
                travelPlaceValue = val;
                    setState(() {
                  
                });
              }),
               Text("Adventure and hiking",
               style: TextStyle(fontSize: 20))
          ],),),        
          Container(
            width: 150,
        child: Row( 
          children: <Widget>[
              Radio(value: 'Ecotourism',
               groupValue: travelPlaceValue, 
               onChanged: (val){
                travelPlaceValue = val;
                    setState(() {
                  
                });
              }),
              Text('Ecotourism',
               style: TextStyle(fontSize: 20))
          ],),),  
          Container(
             width: 150,
        child: Row(
          children: <Widget>[
              Radio(value: 'Cultural', 
              groupValue: travelPlaceValue,
               onChanged: (val){
                travelPlaceValue = val;
                    setState(() {
                  
                });
              }),
              Text('Cultural',
               style: TextStyle(fontSize: 20))
          ],),),       
          Container(
        width: 150,
        child: Row(
          children: <Widget>[
              Radio(value: 'Religious', 
              groupValue: travelPlaceValue, 
              onChanged: (val){
                travelPlaceValue = val;
                setState(() {
                  
                });
              }),
              Text('Religious',
               style: TextStyle(fontSize: 20))
          ],),
          ),
          Container(
            width: 150,
        child: Row(
          children: <Widget>[
              Radio(
                value: 'Shopping Markets',
               groupValue: travelPlaceValue, 
               onChanged: (val){
                travelPlaceValue = val;
                    setState(() {
                  
                });
              }),
              Text('Shopping Markets',
               style: TextStyle(fontSize: 20))
          ],
          ),
          ),
          
          ElevatedButton(
             style: ElevatedButton.styleFrom(
    primary: Colors.green, // background
    onPrimary: Colors.white, // foreground
  ),
            onPressed: (){}, 
            child: Text('CONTINUE'))
        ],)
       ),
    // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}