import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
   Home({super.key});

  static const String routeName = 'Home';

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  int index = 1;
  Widget build(BuildContext context) {

    return Container(
      height: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/bg3.png'), fit: BoxFit.fill)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            'islamic',
            style: GoogleFonts.elMessiri(
                fontSize: 30, fontWeight: FontWeight.w700, color: Colors.black),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            onTap: (value) {
              index = value;
              print(index);
              setState(() {});
            },
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.white,
            iconSize: 35,
            items: [
              BottomNavigationBarItem(
                  icon:
                      ImageIcon(AssetImage('assets/images/ic_moshaf_blue.png')),
                  label: '',backgroundColor: Color(0xFFB7935F)),
              BottomNavigationBarItem(
                  icon:
                      ImageIcon(AssetImage('assets/images/ic_sebha_blue.png')),
                  label: '',backgroundColor: Color(0xFFB7935F)),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/Group 6.png')),
                  label: '',backgroundColor: Color(0xFFB7935F)),
              BottomNavigationBarItem(
                  icon:
                      ImageIcon(AssetImage('assets/images/ic_radio_blue.png')),
                  label: '',backgroundColor: Color(0xFFB7935F)),
              BottomNavigationBarItem(icon: Icon(Icons.settings),
                  label: '',backgroundColor: Color(0xFFB7935F)),
            ]),
      ),
    );
  }
}
