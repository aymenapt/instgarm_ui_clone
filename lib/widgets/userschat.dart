import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/provider.dart';

class Userschat extends StatelessWidget {
  const Userschat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int index = Provider.of<MyProvider>(context).chatphotos.length;
    return Container(
      // margin: EdgeInsets.only(right: 200),
      alignment: Alignment.centerLeft,
      height: 600,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 20),
          scrollDirection: Axis.vertical,
          itemCount: index,
          itemBuilder: (BuildContext context, index) {
            return 
                    ListTile(
                      leading:  Container(
                        
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(colors: [
                              Colors.yellow,
                              Colors.red,
                            ], begin: Alignment.bottomLeft, end: Alignment.topRight)),
                        child: Container(
                          margin: EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle,
                          ),
                          child: Container(
                            padding: EdgeInsets.all(4),
                            child: CircleAvatar(
                              maxRadius: 25,
                              backgroundImage: AssetImage(
                                  Provider.of<MyProvider>(context).chatphotos[index]),
                            ),
                          ),
                        ),
                      ),
                      title:Row(
                        children: [
                          Text(
                          Provider.of<MyProvider>(context).chatusers[index],
                          style: TextStyle(color: Colors.white),
                    ),
                    if(index==1)
                    Icon(Icons.verified,color: Color.fromARGB(255, 100, 173, 233),size: 18,),
                    if(index==2)
                    Icon(Icons.verified,color: Color.fromARGB(255, 100, 173, 233),size: 18,),
                    if(index==3)
                    Icon(Icons.verified,color: Color.fromARGB(255, 100, 173, 233),size: 18,)
                        
                        ],
                      ), 
                    subtitle: Row(
                      children: [
                        Text(
                          Provider.of<MyProvider>(context).chatSubtitel[index],
                          style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 89, 164, 224),
                            shape: BoxShape.circle
                          ),
                        )
                      ],
                    ),
                    trailing: Icon(Icons.camera_alt_outlined,color: Colors.white,),
                    );
                 
                
              
          }),
    );
  }
}
