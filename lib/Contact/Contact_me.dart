import 'package:resume/main.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Contact_me extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.blue[700],
      title: Padding(
        padding: const EdgeInsets.only(right: 60.0),
        child: Center(
          child: Text("Contact Me".toUpperCase(),style: TextStyle(
              fontWeight: FontWeight.bold,
              letterSpacing: 1.0,
            ),
          ),
        ),
      ),
      elevation: 0,
    ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(18.0,50.0,0.0,0.0),
        child: Column(
          children: <Widget>[
            _buildPhone(': +216 53 344 511'),
            SizedBox(height: 10.0),

            _buildMail(': Rayenharouhouri@gmail.com'),
            SizedBox(height: 10.0),
            _buildfacebook(': fb/RiNo6969'),
            SizedBox(height: 10.0),
            _buildinstagram(': instagram.com/rayen_harhouri'),
            SizedBox(height: 10.0),
            _buildlinkedin(': linkedin.com/in/rayenharhouri'),
          ],
        ),
      ),
    );

  }
  Row _buildPhone(String det) {
    return Row(
      children: <Widget>[
        Icon(Icons.phone_android, color: Colors.green,size: 40.0,),
        SizedBox(width: 10.0),
        Text(det, style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
            letterSpacing: 1.0,
            color: Colors.indigo[900],
          ),
        ),
      ],
    );
  }
  Row _buildfacebook(String det) {
    return Row(
      children: <Widget>[
       Icon(FontAwesomeIcons.facebook,color: Colors.blue[600],size: 40.0),
        SizedBox(width: 10.0),
        Text(
          det,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
            color: Colors.indigo[900],
          ),
        ),
      ],
    );
  }
  Row _buildinstagram(String det) {
    return Row(
      children: <Widget>[
        Icon(FontAwesomeIcons.instagram,color: Colors.purple[400],size: 40.0),
        SizedBox(width: 10.0),
        Text(
          det,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
            color: Colors.indigo[900],
          ),
        ),
      ],
    );
  }
  _buildlinkedin(String det) {
    return Row(
      children: <Widget>[
        Icon(FontAwesomeIcons.linkedin,color: Colors.blue[900],size: 40.0),
        SizedBox(width: 10.0),
        Text(
          det,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
            color: Colors.indigo[900],
          ),
        ),
      ],
    );
  }
  Row _buildMail(String det) {
    return Row(
      children: <Widget>[
        Icon(FontAwesomeIcons.at,color : Colors.red,size: 40.0),
        SizedBox(width: 10.0),
        Text(
          det,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
            color: Colors.indigo[900],
          ),
        ),
      ],
    );
  }
}

