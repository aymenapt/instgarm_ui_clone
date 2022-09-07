import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/chat.dart';
import 'package:flutter_application_1/widgets/posts.dart';
import 'package:flutter_application_1/widgets/story.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          currentIndex: currentindex,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          onTap: (index) {
            setState(() {
              currentindex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              backgroundColor: Colors.black,
              label: "",
              icon: ImageIcon(
                AssetImage("assets/homee@0.5x.png"),
                size: 20,
              ),
            ),
            BottomNavigationBarItem(
                backgroundColor: Colors.black,
                label: "",
                icon: ImageIcon(AssetImage("assets/serch.png"))),
            BottomNavigationBarItem(
                
                label: "",
                icon: ImageIcon(AssetImage("assets/reel.png"))),
            BottomNavigationBarItem(
                backgroundColor: Colors.black,
                label: "",
                icon: ImageIcon(AssetImage("assets/shop.png"))),
            BottomNavigationBarItem(
                backgroundColor: Colors.black,
                label: "",
                icon: ImageIcon(AssetImage("assets/ayinsta.png"))),
          ]),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  'Instgram',
                  style: TextStyle(
                      fontFamily: "Lobster", color: Colors.white, fontSize: 30),
                ),
                const SizedBox(
                  width: 138,
                ),
                const FaIcon(
                  FontAwesomeIcons.plusSquare,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 20,
                ),
                const FaIcon(
                  FontAwesomeIcons.heart,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 10,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => Chat())));
                  },
                  icon: const FaIcon(
                    FontAwesomeIcons.facebookMessenger,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 14,
            ),
            const Story(),
            Divider(
              color: Colors.grey[800],
            ),
            const Posts(
                name: "aymen ababsa",
                userphoto: "assets/aymen.jpg",
                likes: 10,
                description: "my new logo for my page",
                time: 20,
                postimage: "assets/aymen's dragon betta+2.png"),
            SizedBox(
              height: 12,
            ),
            Posts(
                name: "aymensworld",
                userphoto: "assets/aymen's dragon betta+2.png",
                likes: 400,
                description: "my last work",
                time: 21,
                postimage: "assets/romantic  dreamfinal2.jpg"),
            SizedBox(
              height: 12,
            ),
            Posts(
                name: "walid",
                userphoto: "assets/walif.jpg",
                likes: 900,
                description: "share it with your friends",
                time: 21,
                postimage: "assets/benguin (1).png"),
            SizedBox(
              height: 12,
            ),
            Posts(
                name: "mr penguin",
                userphoto: "assets/penguin.jpg",
                likes: 999,
                description: "#save penguins",
                time: 23,
                postimage: "assets/savepenguin.jpg")
          ],
        ),
      ),
    );
  }
}
