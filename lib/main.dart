import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: TdnguyenCard()));

class TdnguyenCard extends StatefulWidget {
  @override
  _TdnguyenCardState createState() => _TdnguyenCardState();
}

class _TdnguyenCardState extends State<TdnguyenCard> {
  int level = 1;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('NguyenTran ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 5,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){

          setState(() {
            level++;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),

      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/imgcard.png'),
                radius: 50,
              ),
            ),
            Divider(
              height: 90,
              color: Colors.grey[400],
            ),
            Text(
              'Name',
              style: TextStyle(
                  color: Colors.grey, letterSpacing: 1.5, fontSize: 17),
            ),
            SizedBox(height: 10),

            Text('Nguyen Thi nhi va Nguyen Map',

                style: TextStyle(
                    color: Colors.amber,
                    letterSpacing: 1.5,
                    fontSize: 28,
                    fontWeight: FontWeight.bold)),
            SizedBox(height: 30),
            Text(
              'ID-Card',
              style: TextStyle(
                  color: Colors.grey, letterSpacing: 1.5, fontSize: 17),
            ),
            SizedBox(height: 10),
            Text('ID: 072097004080  Date: 23-08-2019',
                style: TextStyle(
                    color: Colors.amber,
                    letterSpacing: 1.5,
                    fontSize: 28,
                    fontWeight: FontWeight.bold)),
            SizedBox(height: 30),
            Text(
              'Address',
              style: TextStyle(
                  color: Colors.grey, letterSpacing: 1.5, fontSize: 17),
            ),
            SizedBox(height: 10),
            Text('159 QL22B, Tay Ninh',
                style: TextStyle(
                    color: Colors.amber,
                    letterSpacing: 1.5,
                    fontSize: 28,
                    fontWeight: FontWeight.bold)),
            SizedBox(height: 30),
            Text(
              'Current Level',
              style: TextStyle(
                  color: Colors.grey, letterSpacing: 1.5, fontSize: 17),
            ),
            SizedBox(height: 10),
            Text('$level',
                style: TextStyle(
                    color: Colors.amber,
                    letterSpacing: 1.5,
                    fontSize: 28,
                    fontWeight: FontWeight.bold)),
            SizedBox(height: 30),
            Row(
              children: <Widget>[
                Icon(
                  Icons.mail,
                  color: Colors.grey[400],
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'tranducnguyentn@gmail.com',
                  style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 18,
                      letterSpacing: 1.5),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
