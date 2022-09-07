import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/mainscreen.dart';

class SingUpScreen extends StatefulWidget {
  final bool islogin;
   SingUpScreen({Key? key, required this.islogin}) : super(key: key);

  @override
  State<SingUpScreen> createState() => _SingUpScreenState();
}

class _SingUpScreenState extends State<SingUpScreen> { 
    bool state =true;
  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Text(
              'English(unated States)^',
              style: TextStyle(color: Colors.grey[600]),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 150,
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                "Instagram",
                textAlign: TextAlign.center,
                style: TextStyle(fontFamily: "Lobster", fontSize: 40),
              ),
            ),
            if (widget.islogin == true)
              SizedBox(
                height: 30,
              ),
            if (state == true) LogInWidget(),
            if (state == false)
              SizedBox(
                height: 180,
              ),
            if (state == false) SignWidget(),
            if (state == true)
              SizedBox(
                height: 98,
              ),
            if (state == true)
              Divider(
                color: Colors.grey[300],
              ),
            if (state == true)
              Row(
                children: [
                  SizedBox(
                    width: 87,
                  ),
                  Text(
                    "Don't have an account?",
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          state=false ;
                        });
                      },
                      child: Text(
                        "Sign up.",
                        style: TextStyle(color: Colors.blue[900]),
                      ))
                ],
              ),
            if (state == false)
              SizedBox(
                height: 120,
              ),
            if (state == false)
              Divider(
                color: Colors.grey[300],
              ),
            if (state == false)
              Row(
                children: [
                  SizedBox(
                    width: 87,
                  ),
                  Text(
                    "Don't have an account?",
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                  TextButton(
                      onPressed: () {
                        setState(() {
                          state = true;
                        });
                      },
                      child: Text(
                        "Log in. ",
                        style: TextStyle(color: Colors.blue[900]),
                      ))
                ],
              ),
          ],
        ),
      ),
    );
  }
}

class SignWidget extends StatelessWidget {
  const SignWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 30, right: 30),
          child: RaisedButton(
              padding: EdgeInsets.only(left: 55, top: 15, bottom: 15),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              color: Colors.blue[500],
              child: Row(
                children: [
                  Icon(
                    Icons.facebook,
                    color: Colors.white,
                  ),
                  Text(
                    "  Continue as Aymen Ababsa",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (ctx) => MainScreen()));
              }),
        ),
        SizedBox(
          height: 40,
        ),
        Row(
          children: [
            SizedBox(
              width: 30,
            ),
            Container(
              width: 150,
              height: 1.5,
              color: Colors.grey[300],
            ),
            Text(
              " OR ",
              style: TextStyle(color: Colors.grey[600], fontSize: 16),
            ),
            Container(
              width: 150,
              height: 1.5,
              color: Colors.grey[300],
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          child: Text(
            "Sign up with email or phone number",
            style:
                TextStyle(color: Colors.blue[600], fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}

class LogInWidget extends StatefulWidget {
  const LogInWidget({Key? key}) : super(key: key);

  @override
  State<LogInWidget> createState() => _LogInWidgetState();
}

class _LogInWidgetState extends State<LogInWidget> {
  bool secure = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: 25, right: 25),
          child: TextField(
            decoration: InputDecoration(
                fillColor: Colors.grey.shade50,
                filled: true,
                hintText: "Phone number,email or username",
                hintStyle: TextStyle(color: Colors.grey.shade500),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(4),
                )),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.only(left: 25, right: 25),
          child: TextField(
            obscureText: secure,
            decoration: InputDecoration(
                fillColor: Colors.grey.shade50,
                filled: true,
                hintText: "Password",
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        secure = !secure;
                      });
                    },
                    icon: Icon(secure
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined)),
                hintStyle: TextStyle(color: Colors.grey.shade500),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(4),
                )),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.only(top: 17),
          height: 50,
          width: 340,
          child: Text(
            "Log in ",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white54),
          ),
          decoration: BoxDecoration(
            color: Colors.blue[200],
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        SizedBox(
          height: 17,
        ),
        Row(
          children: [
            SizedBox(
              width: 70,
            ),
            Text(
              "Forgot your login details?",
              style: TextStyle(color: Colors.grey[600]),
            ),
            Text(
              "Get help logging in ",
              style: TextStyle(
                  color: Colors.blue[900], fontWeight: FontWeight.bold),
            )
          ],
        ),
        SizedBox(
          height: 17,
        ),
        Row(
          children: [
            SizedBox(
              width: 30,
            ),
            Container(
              width: 150,
              height: 1.5,
              color: Colors.grey[300],
            ),
            Text(
              " OR ",
              style: TextStyle(color: Colors.grey[600], fontSize: 16),
            ),
            Container(
              width: 150,
              height: 1.5,
              color: Colors.grey[300],
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          margin: EdgeInsets.only(left: 30, right: 30),
          child: RaisedButton(
              padding: EdgeInsets.only(left: 55, top: 15, bottom: 15),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              color: Colors.blue[500],
              child: Row(
                children: [
                  Icon(
                    Icons.facebook,
                    color: Colors.white,
                  ),
                  Text(
                    "  Continue as Aymen Ababsa",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (ctx) => MainScreen()));
              }),
        )
      ],
    );
  }
}
