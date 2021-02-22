import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Contact/Contact_me.dart';


void main() {
  runApp(MaterialApp(
    home: Resume(),
    initialRoute: '/',
    routes: {
      '/Contact':(Context) => Contact_me(),
    },
  ));
}

class Resume extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("RAYEN HARHOURI RESUME")),
        backgroundColor: Colors.blue[700],
        elevation: 0,
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.more_vert,
                color: Colors.black,
              ),
              onPressed: () {})
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buildHeader(),
            Container(
              margin: EdgeInsets.all(16.0),
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(color: Colors.grey[350]),
              child: Text(
                  'Currently a computer science student (EMBEDDED AND MOBILE SYSTEMS)'),
            ),
            // Skills
            _buildTitle("Skills"),
            _buildSikillRow("FLUTTER", 0.50),
            SizedBox(height: 5.0),
            _buildSikillRow("JAVA", 0.70),
            SizedBox(height: 5.0),
            _buildSikillRow("C", 0.6),
            SizedBox(height: 5.0),
            _buildSikillRow("HTML/CSS", 0.70),
            SizedBox(height: 5.0),
            _buildSikillRow("JAVASCRIPIT", 0.70),
            SizedBox(height: 5.0),
            _buildSikillRow("PHP", 0.60),
            SizedBox(height: 5.0),
            _buildSikillRow("ARDUINO", 0.70),
            SizedBox(height: 5.0),
            _buildSikillRow("PYTHON", 0.50),
            SizedBox(height: 5.0),
            _buildSikillRow("SPRING", 0.65),
            SizedBox(height: 10.0),
            // Title
            _buildTitle("Experience"),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _buildExpTitle(
                    'Internship observation', 'TUNISE TELECOM SIEGE EL KASBAH'),
                _buildExpDet('Installation of routers and backup routers'),
                _buildExpDet('Repair of fiber optic cables'),
                _buildExpDet('Observation of general dispatchers')
              ],
            ),
            _buildExpTitle('Stage de perfectionnement',
                'Centre National des Sciences et Technologies Nucléaires (CNSTN)'),
            _buildExpDet('Realization of a system with Raspberry pi'),
            _buildExpDet('Realization of alarm system with Rasp'),
            _buildExpDet('Some knowledge of radioactive sources'),
            SizedBox(height: 10.0),
            _buildTitle("Education"),
            _buildExpTitle('higher institute of technological studies bizerte',
                'ISETB INFORMATIQUE '),
            _buildEduDet('Vice President TUNIVISIONS (2 terms) '),
            _buildEduDet('ROOTSPACE Treasurer (1 mandate)'),
            _buildEduDet('Google Club Member'),
            _buildEduDet('Alpha Tech Member'),
            _buildEduDet('Member of TUNIVISIONS (1 mandate) '),
            SizedBox(height: 10.0),
            _buildTitle('achivements'),
            _buildAchivDet('Participation in innovation camp (Startup)'),
            _buildAchivDet('Certification In Java UDEMY'),
            _buildAchivDet('Certification in ANDROID UDEMY'),
            _buildAchivDet('Programming on MSP430'),
            _buildAchivDet('Black taekwondoo belt'),
            _buildAchivDet('Projet Système de sécurité arduino'),
            _buildAchivDet('Projet Smart house Raspberry'),
            _buildAchivDet('Projet jeu de mémoire en C'),
            _buildAchivDet('Projet gestion bibliothèque en C'),
            SizedBox(
              height: 10.0,
            ),
            _buildTitleContact('contact me'),
            Center(
              child: FloatingActionButton(
                onPressed: () {
                  // Moving to the next page
                  Navigator.pushNamed(context, '/Contact');
                },
                child: Icon(Icons.phone),
                backgroundColor: Colors.green,
              ),
            ),
            SizedBox(
              height: 20.0,
            )
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }

  ListTile _buildExpTitle(String type, String place) {
    return ListTile(
      title: Text(type, textAlign: TextAlign.center),
      subtitle: Text(place, textAlign: TextAlign.center),
    );
  }

  Row _buildExpDet(String det) {
    return Row(
      children: <Widget>[
        Icon(Icons.info, color: Colors.indigo),
        SizedBox(width: 10.0),
        Text(
          det,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
            color: Colors.indigo,
          ),
        ),
      ],
    );
  }

  Row _buildEduDet(String det) {
    return Row(
      children: <Widget>[
        Icon(Icons.info_outline, color: Colors.indigo[300]),
        SizedBox(width: 10.0),
        Text(
          det,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
            color: Colors.indigo[900],
          ),
        ),
      ],
    );
  }

  //building achivements Row
  Row _buildAchivDet(String det) {
    return Row(
      children: <Widget>[
        Icon(Icons.star_half, color: Colors.indigo[300]),
        SizedBox(width: 10.0),
        Text(
          det,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
            color: Colors.indigo[900],
          ),
        ),
      ],
    );
  }

  Row _buildSikillRow(String skill, double lvl) {
    return Row(
      children: <Widget>[
        SizedBox(width: 15.0),
        Expanded(
            flex: 2,
            child: Text(skill.toUpperCase(), textAlign: TextAlign.center)),
        SizedBox(width: 10.0),
        Expanded(
            flex: 6,
            child: LinearProgressIndicator(
              value: lvl,
            )),
        SizedBox(width: 15.0),
      ],
    );
  }

  Padding _buildTitle(String title) {
    return Padding(
      padding: EdgeInsets.only(left: 16.0),
      child: Column(
        children: <Widget>[
          Center(
            child: Text(
              title.toUpperCase(),
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                  fontFamily: 'fonts/Anton-Regular.ttf',
                  color: Colors.green[900]),
            ),
          ),
          Icon(Icons.adb, color: Colors.teal[900]),
          SizedBox(
            height: 8.0,
          )
        ],
      ),
    );
  }

  Padding _buildTitleContact(String title) {
    return Padding(
      padding: EdgeInsets.only(left: 16.0),
      child: Column(
        children: <Widget>[
          Center(
            child: Text(
              title.toUpperCase(),
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                  fontFamily: "Stick",
                  color: Colors.green),
            ),
          ),
          SizedBox(
            height: 8.0,
          )
        ],
      ),
    );
  }

  Row _buildHeader() {
    return Row(
      children: <Widget>[
        SizedBox(width: 20),
        Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 0.0),
          child: Container(
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://scontent.ftun7-1.fna.fbcdn.net/v/t1.0-9/82343462_171968877342171_508043834538590208_n.jpg?_nc_cat=101&ccb=3&_nc_sid=174925&_nc_ohc=zkeEXrwSuqMAX8vfkPC&_nc_ht=scontent.ftun7-1.fna&oh=6fb018ba22c9bcb24c71a33f21a022e3&oe=60570C4D'),
              radius: 40.0,
            ),
          ),
        ),
        SizedBox(width: 40.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'RAYEN HARHOUI',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
              ),
            ),
            Text('Junior Developer'),
            Row(
              children: <Widget>[
                Icon(
                  Icons.location_city,
                  color: Colors.blue[900],
                ),
                SizedBox(width: 10.0),
                Text(
                  'Ariana/Mnihla',
                  style: TextStyle(
                    color: Colors.blue[900],
                  ),
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
