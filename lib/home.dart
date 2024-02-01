import 'package:flutter/material.dart';
import 'package:logins/widgets/bottom_sheet.dart';
import 'package:logins/widgets/custom_btn.dart';
import 'package:logins/widgets/middle_circle.dart';
import 'package:logins/widgets/top_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  void _onItemTapped(int index){
    setState(() {
      _currentIndex=index;
    });
    _showBottomSheet();
  }
  void _showBottomSheet(){
    switch(_currentIndex){
      case 0:
        _showBottomSheet1();
        break;
        case 1:
        _showBottomSheet1();
        break;
        case 3:
      //  _showBottomSheet3();
        break;
    }
  }
  void _showBottomSheet1(){
    showModalBottomSheet(

        context: context, builder: (context)=> BottomSheet1()    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.white70,
        toolbarHeight: 40,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Align children to the start
        children: [
          const TopBar(),
          const SizedBox(height: 30),
          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 23),
              child: Text(
                'Greetings',
                style: TextStyle(fontSize: 17, color: Colors.grey),
              ),
            ),
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 23),
              child: Text(
                'Muhammad Farhan',
                style: TextStyle(
                    fontSize: 23,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          const Align(
            alignment: Alignment.center,
            child: MiddleCircle(),
          ),
          const SizedBox(
            height: 70,
          ),
          Align(
              alignment: Alignment.center,
              child: CustomIconButton(icon: const Icon(Icons.bar_chart_rounded, size: 26,),onPressed: (){},)),

        ],
      ),

         //Bottom
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white60,
        selectedFontSize:15,
        unselectedFontSize: 15,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.black,
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.payments_outlined,color: Colors.black,size: 27,),label: 'Accounts'),
          const BottomNavigationBarItem(icon: Icon(Icons.compare_arrows_outlined,color: Colors.black,size: 27,),label: 'Paymets'),
          const BottomNavigationBarItem(icon: Icon(Icons.star,color: Colors.black,size: 27,),label: 'Favourites'),
        ],
      ),
    );
  }

}
