import 'package:flutter/material.dart';
import 'package:logins/widgets/icon_containers.dart';

class BottomSheet1 extends StatelessWidget {
  const BottomSheet1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white38,
      body: SingleChildScrollView(
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  IconButton(onPressed: (){Navigator.of(context).pop();}, icon: const Icon(Icons.linear_scale)),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text('Payments',style: TextStyle(fontSize: 21,fontWeight: FontWeight.w600),),
                  ),
                  const Row(
                    children: [
                      IconContainer(icon: Icon(Icons.mobile_screen_share), detail: ' Mobile\n Top up'),
                      IconContainer(icon: Icon(Icons.perm_identity_sharp,size: 35,), detail: '   Pay\n Anyone'),
                      IconContainer(icon: Icon(Icons.home_outlined), detail: '     Pay\n Via Raast'),
                    ],
                  ),
                  const Row(
                    children: [
                      IconContainer(icon: Icon(Icons.contact_page), detail: '        Bill\nManagement'),
                      IconContainer(icon: Icon(Icons.mobile_screen_share), detail: 'Mobile\n Top Up'),
                      IconContainer(icon: Icon(Icons.shopping_bag_outlined), detail: 'Prepaid\nSevices'),
                    ],
                  ),
                  const Row(
                    children: [
                      IconContainer(icon: Icon(Icons.home_outlined), detail: '     Pay\n Via Raast'),
                      IconContainer(icon: Icon(Icons.heart_broken_outlined), detail: 'Mobile\n Top Up'),
                      IconContainer(icon: Icon(Icons.contact_page), detail: '        Bill\nManagement'),
                    ],
                  ),
                  const Row(
                    children: [
                      IconContainer(icon: Icon(Icons.perm_identity_sharp,size: 35,), detail: '   Pay\n Anyone'),
                      IconContainer(icon: Icon(Icons.contact_page), detail: '        Bill\nManagement'),
                    ],
                  ), // IconContainer(icon: Icon(Icons.mobile_screen_share), detail: 'Mobile\n Top Up'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
