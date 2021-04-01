import 'package:flutter/material.dart';

import 'loginScreen.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.red,
        title: Text(
          "Register",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, size: 30),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => LoginScreen()));
          },
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: 50,
            vertical: 0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 10),
              buildFirstName(),
              SizedBox(height: 20),
              buildLastName(),
              SizedBox(height: 20),
              buildEnterPassword(),
              SizedBox(height: 20),
              buildAddress(),
              SizedBox(height: 20),
              buildEmail(),
              SizedBox(height: 20),
              buildContact(),
              SizedBox(height: 30),
              Container(
                height: 60.0,
                width: 200.0,
                child: Material(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.redAccent[700],
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()));
                    },
                    child: Center(
                      child: Text(
                        'REGISTER',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildFirstName() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.grey[350],
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(0, 2),
            ),
          ],
        ),
        padding: EdgeInsets.only(left: 10),
        height: 50,
        child: TextField(
          keyboardType: TextInputType.name,
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(
              Icons.account_circle,
            ),
            //contentPadding: EdgeInsets.only(left: 10),
            hintText: 'First Name',
            hintStyle: TextStyle(
              fontSize: 18,
              color: Colors.black87,
            ),
          ),
        ),
      ),
    ],
  );
}

Widget buildLastName() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.grey[350],
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(0, 2),
            ),
          ],
        ),
        padding: EdgeInsets.only(left: 10),
        height: 50,
        child: TextField(
          keyboardType: TextInputType.name,
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(
              Icons.account_circle,
            ),
            //contentPadding: EdgeInsets.only(left: 10),
            hintText: 'Last Name',
            hintStyle: TextStyle(
              fontSize: 18,
              color: Colors.black87,
            ),
          ),
        ),
      ),
    ],
  );
}

Widget buildEnterPassword() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.grey[350],
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(0, 2),
            ),
          ],
        ),
        padding: EdgeInsets.only(left: 10),
        height: 50,
        child: TextField(
          keyboardType: TextInputType.visiblePassword,
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(
              Icons.vpn_key,
            ),
            //contentPadding: EdgeInsets.only(left: 10),
            hintText: 'Enter Password',
            hintStyle: TextStyle(
              fontSize: 18,
              color: Colors.black87,
            ),
          ),
        ),
      ),
    ],
  );
}

Widget buildAddress() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.grey[350],
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(0, 2),
            ),
          ],
        ),
        padding: EdgeInsets.only(left: 10),
        height: 50,
        child: TextField(
          keyboardType: TextInputType.streetAddress,
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(
              Icons.location_on,
            ),
            //contentPadding: EdgeInsets.only(left: 10),
            hintText: 'Address',
            hintStyle: TextStyle(
              fontSize: 18,
              color: Colors.black87,
            ),
          ),
        ),
      ),
    ],
  );
}

Widget buildEmail() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.grey[350],
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(0, 2),
            ),
          ],
        ),
        padding: EdgeInsets.only(left: 10),
        height: 50,
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(
              Icons.mail,
            ),
            //contentPadding: EdgeInsets.only(left: 10),
            hintText: 'Email',
            hintStyle: TextStyle(
              fontSize: 18,
              color: Colors.black87,
            ),
          ),
        ),
      ),
    ],
  );
}

Widget buildContact() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.grey[350],
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(0, 2),
            ),
          ],
        ),
        padding: EdgeInsets.only(left: 10),
        height: 50,
        child: TextField(
          keyboardType: TextInputType.phone,
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(
              Icons.mobile_screen_share,
            ),
            //contentPadding: EdgeInsets.only(left: 10),
            hintText: 'Contact',
            hintStyle: TextStyle(
              fontSize: 18,
              color: Colors.black87,
            ),
          ),
        ),
      ),
    ],
  );
}
