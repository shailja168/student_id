import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
    home: StudentCard(),
));

class StudentCard extends StatefulWidget {
  const StudentCard({Key? key}) : super(key: key);

  @override
  State<StudentCard> createState() => _StudentCardState();
}

class _StudentCardState extends State<StudentCard> {

   int courses = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      appBar: AppBar(
        title: Text('Student ID Card'),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.deepPurpleAccent[200],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                courses += 1;
              });
            },
            child: Icon(Icons.add),
            backgroundColor: Colors.grey[800],
          ),
          SizedBox(height: 10.0,),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                courses -= 1;
              });
            },
            child: Icon(Icons.remove),
            backgroundColor: Colors.grey[800],
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 50.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/shailja.jpeg'),
                radius: 50.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey,
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 1.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Shailja Tripathi',
              style: TextStyle(
                color: Colors.blue,
                letterSpacing: 1.0,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'ENROLLMENT NO .',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 1.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'BT20HCS115',
              style: TextStyle(
                color: Colors.blue,
                letterSpacing: 1.0,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'NO. OF COURSES',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 1.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '$courses',
              style: TextStyle(
                color: Colors.blue,
                letterSpacing: 1.0,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email_outlined,
                  color: Colors.grey,
                ),
                SizedBox(width: 5.0),
                Text(
                  'shailja.tripathi20@st.niituniversity.in',
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 1.0,
                    fontSize: 15.0,
                  )
                )
              ],
            ),
          ],
        ),
      )
    );
  }
}






