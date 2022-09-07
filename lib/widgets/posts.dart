
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Posts extends StatefulWidget {
  final String name;
  final String userphoto;
  final int likes;
  final String description;
  final int time;
final String postimage ;
  const Posts(
      {Key? key,
      required this.name,
      required this.userphoto,
      required this.likes,
      required this.description,
      required this.time,
      required this.postimage 
      })
      : super(key: key);

  @override
  State<Posts> createState() => _PostsState();
}

class _PostsState extends State<Posts> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
            const SizedBox(width: 10,),
            ListTile(
              leading:             Container(
              margin: const EdgeInsets.only(left: 14),
              height: 30,
              width: 30,
              child: CircleAvatar(
                backgroundImage: AssetImage(widget.userphoto),
              ),
            ),
               title: Text(widget.name,style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
               trailing:IconButton(onPressed: (){}, icon:const Icon(Icons.more_vert_outlined,color: Colors.white,)), 
            ),
          
        Container(
          height: 340,
          width: double.infinity,
          child: Image.asset(widget.postimage,fit: BoxFit.cover,),
        ),
        Row(
          children: [
            const SizedBox(width: 8.5,),
            IconButton(onPressed: (){}, icon: const FaIcon(FontAwesomeIcons.heart,color: Colors.white,)),
            const SizedBox(width: 8,),
           Container(
             margin: const EdgeInsets.only(top:4)
             ,
             child:  const ImageIcon(AssetImage("assets/comment.png"),color: Colors.white,size: 43,),
           ),
           const SizedBox(width: 8,),
             Container(
             margin: const EdgeInsets.only(top:2)
             ,
             child:  const ImageIcon(AssetImage("assets/send.png"),color: Colors.white,size: 35,),
           ),
           const SizedBox(width: 200,),
           Container(
             margin: const EdgeInsets.only(top:2)
             ,
             child:  const ImageIcon(AssetImage("assets/saved.png"),color: Colors.white,size: 30,),
           ),
          ],
        ),
        const SizedBox(height: 6,),
       Container(
         margin: const EdgeInsets.only(left: 20),
         alignment: Alignment.topLeft,
         child:  Text("${widget.likes} likes",style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
       ),
       const SizedBox(height: 7,),
        Row(children: [
          const SizedBox(width: 20,),
          Text(widget.name,style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
          const SizedBox(width: 5,),
          Text(widget.description,style: const TextStyle(color: Colors.white,fontWeight: FontWeight.w400),),
        ],),
        const SizedBox(height: 12,),
        Row(children: [
          const SizedBox(width: 8,),
           Container(
              margin: const EdgeInsets.only(left: 14),
              height: 30,
              width: 30,
              child: CircleAvatar(
                backgroundImage: AssetImage(widget.userphoto),
              ),
            ),
            const SizedBox(width: 12,),
            Container(
              margin: EdgeInsets.only(top: 18),
              height: 20,
              width: 140,
              child: const TextField(
              decoration: InputDecoration(
                hintText: "Add a comment...",
                hintStyle: TextStyle(color: Colors.white54)
              ),
            ),
            )
        ],)
        

      ],
    );
  }
}
