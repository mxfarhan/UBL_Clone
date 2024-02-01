import 'package:flutter/material.dart';

class IconContainer extends StatelessWidget {
  const IconContainer({super.key, required this.icon, required this.detail});

  final Widget icon;
  final String detail;

  @override
  Widget build(BuildContext context) {
     return Padding(
       padding: const EdgeInsets.all(5.0),
       child: InkWell(
         onTap: (){},
         customBorder: CircleBorder(),
         child: Container(
            height: 120,
            width: 120,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    //constraints: const BoxConstraints.tightFor(width: 40),
                    color: Colors.blueAccent,
                    icon: icon,
                    iconSize: 32,
                    splashRadius: 20,
                  ),
                  Text(
                    detail,
                    style: TextStyle(color: Colors.black26),
                  )
                ],
              ),
            ),
    ),
       ),
     );
  }
}
