import 'package:flutter/material.dart';
import 'signupscreen.dart';

class AuthScreen extends StatefulWidget {
  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool islogin = true;

  Row buildRow(String imageUrl, String name, BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 10,
        ),
        CircleAvatar(
          backgroundImage: AssetImage(imageUrl),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          name,
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        SizedBox(
          width: 70,
        ),
        RaisedButton(
          onPressed: () {},
          color: Colors.white,
          child: Text("Log in"),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        SizedBox(
          width: 4,
        ),
        IconButton(
            onPressed: () {
              showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (ctx) => AlertDialog(
                        title: Text(
                          "Remove account ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                        content: Container(
                          height: 210,
                          width: 100,
                          child: Column(
                            children: [
                              Text(
                                "You'll need to enter your username and password the next time you want to log in",
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.grey[600]),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Divider(color: Colors.grey[600]),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Remove',
                                    style: TextStyle(color: Colors.blue[600]),
                                  )),
                              Divider(color: Colors.grey[600]),
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text(
                                    'Cancel',
                                    style: TextStyle(color: Colors.grey[600]),
                                  )),
                            ],
                          ),
                        ),
                      ));
            },
            icon: Icon(Icons.more_vert, color: Colors.grey[600]))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Container(
            alignment: Alignment.center,
            child: Text(
              "Instagram",
              style: TextStyle(fontFamily: "Lobster", fontSize: 55),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          buildRow("assets/aymen's dragon betta+2.png", "inside_aymenworld",
              context),
          SizedBox(
            height: 10,
          ),
          buildRow("assets/aymen.jpg", "a_y_m_e__n4545    ", context),
          SizedBox(
            height: 500,
          ),
          Divider(
            color: Colors.grey[600],
          ),
          Row(
            children: [
              SizedBox(
                width: 50,
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      islogin = true;
                    });
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (ctx) => SingUpScreen(islogin: islogin)));
                  },
                  child: Text("Switch Accounts",
                      style: TextStyle(color: Colors.blue))),
              SizedBox(
                width: 25,
              ),
              Container(
                width: 1,
                height: 50,
                color: Colors.grey[400],
              ),
              SizedBox(
                width: 60,
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      islogin = false;
                    });
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (ctx) => SingUpScreen(islogin: islogin)));
                  },
                  child: Text("Sign up", style: TextStyle(color: Colors.blue))),
            ],
          )
        ],
      ),
    );
  }
}
