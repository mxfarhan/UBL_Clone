import 'package:flutter/material.dart';
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white60,
        // title: Container(
        //   height: 25,
        //   width: 65,
        //   decoration: BoxDecoration(
        //     color: Colors.blue,
        //     borderRadius: BorderRadius.circular(15)
        //
        //   ),
        // ),
        title: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: ElevatedButton(onPressed: (){}, child: Text('Log out'),),
        ),
        actions: [Padding(
          padding: const EdgeInsets.only(top: 15,right: 20),
          child: Icon(Icons.arrow_back,color: Colors.blueAccent,),
        ),
        ],
      ),
    );
  }
}
