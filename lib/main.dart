import 'package:flutter/material.dart';
import 'griddashboard.dart';
void main() => runApp(MaterialApp(home: Home()));

class Home extends StatefulWidget {
  @override
  HomeState createState() => new HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.green,
      appBar: AppBar(
        brightness: Brightness.dark,
        elevation: 0,
        backgroundColor: Color(0X40FFFFFF),
        title: Text(
          'INICIO',
          style: TextStyle(
            color: Color(0xFFFFFFFF),
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.people_outline),
            color: Color(0XFFFFFFFF),
            iconSize: 40,
            onPressed: () {},
          ),
        ],
      ),
      body: Cont(),
      
    );
  }
}

class Cont extends StatelessWidget{
  Widget build(BuildContext context){
    return Container(
      child: Container(
        
        color: Colors.deepOrange,
        child: Column(
          children: [
            SizedBox(
              height: 70,
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                    
                      SizedBox(
                        height: 1,
                      ),
                      
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 1,
            ),
          GridDashboard()
          ],
      ),
      
      ),
    );
  }
} 