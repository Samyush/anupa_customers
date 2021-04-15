import 'dart:convert';

import 'package:anupa_customers/networking/API_constants/apiS.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'loginScreen.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool showSpinner = false;

  register(String name, email, pass) async {
    // SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    Map data = {'email': email, 'password': pass, 'name': name};
    var jsonResponse;
    //kApiLogin is in constants.dart
    var response = await http.post(urlRegister, body: data);
    if (response.statusCode == 200) {
      jsonResponse = json.decode(response.body);
      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');
      if (jsonResponse != null) {
        setState(() {
          showSpinner = false;
        });
        // sharedPreferences.setString("token", jsonResponse['token']);
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (BuildContext context) => LoginScreen()),
            (Route<dynamic> route) => false);
      }
    } else {
      setState(() {
        showSpinner = false;
        // _showMyDialog();
      });
      print(response.body);
    }
  }

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
              Column(
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
                      controller: nameController,
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
                        hintText: 'Name',
                        hintStyle: TextStyle(
                          fontSize: 18,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              SizedBox(height: 20),
              Column(
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
                      controller: emailController,
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
              ),
              SizedBox(height: 20),
              SizedBox(height: 20),
              Column(
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
                      controller: passwordController,
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
              ),
              SizedBox(height: 20),
              SizedBox(height: 30),
              Container(
                height: 60.0,
                width: 200.0,
                child: Material(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.redAccent[700],
                  child: InkWell(
                    onTap: () {
                      register(nameController.text, emailController.text,
                          passwordController.text);
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => LoginScreen()));
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
