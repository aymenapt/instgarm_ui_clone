import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/userschat.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "Aymen Ababsa",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          Icon(
            Icons.video_call_outlined,
            color: Colors.white,
            size: 33,
          ),
          Container(
            margin: EdgeInsets.only(top: 16, right: 30, left: 20),
            child: FaIcon(
              FontAwesomeIcons.plus,
              color: Colors.white,
              size: 23,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Container(
            height: 40,
            child: TextField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white12,
                  prefixIcon: Icon(
                    Icons.search_rounded,
                    color: Colors.white38,
                    size: 25,
                  ),
                  label: Text(
                    "Search",
                    style: TextStyle(color: Colors.white38, fontSize: 20),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100),
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  )),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              SizedBox(
                width: 12,
              ),
              Text(
                "Messages",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              SizedBox(
                width: 218,
              ),
              Text(
                "Requests",
                style: TextStyle(
                    color: Color.fromARGB(255, 18, 131, 223), fontSize: 15),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
           Userschat(),
          
        ],
      )),
    );
  }
}
