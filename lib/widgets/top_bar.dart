import 'package:flutter/material.dart';
import 'package:logins/widgets/custom_btn.dart';
class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0, left: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomIconButton(icon: Icon(Icons.person_3_rounded, size: 26),onPressed: (){},),
          SizedBox(width: 10),
          CustomIconButton(icon: Icon(Icons.search_outlined, size: 24),onPressed: (){},),
        ],
      ),
    ) ;
  }
}
