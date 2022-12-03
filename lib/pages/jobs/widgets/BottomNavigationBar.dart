import 'package:flutter/material.dart';
import 'package:flutter_projects/constants.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(

        selectedItemColor: Colors.green[800],
        unselectedItemColor: kGreyColor,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        currentIndex: 3,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.dashboard,

            ),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(

              icon: Icon(
                Icons.inbox,

              ),

              label: 'Inbox'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.people,

              ),
              label: 'Candidates'),
          BottomNavigationBarItem(

              icon: Icon(
                Icons.shopping_bag,

              ),
              label: 'Jobs'),
        ]);
  }
}
