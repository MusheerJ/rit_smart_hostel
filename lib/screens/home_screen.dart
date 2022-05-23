import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rit_smart_hostel/utils/color_utils.dart';

import '../utils/drawer.dart';
import 'Complaint/complaint_body.dart';
import 'Home/home_body.dart';
import 'Laundry/laundry_body.dart';
import 'chats/chats_body.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  String appbartitle = "Home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.kWhiteColor,
      appBar: AppBar(
        title: Text(appbartitle),
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: ColorConstants.kSecondaryColor),
        backgroundColor: ColorConstants.kSecondaryColor,
      ),
      drawer: MyDrawer(),
      body: getCurrentScreen(),
      bottomNavigationBar: bottomNavigation(),
    );
  }

  Widget bottomNavigation() {
    return BottomNavigationBar(
      currentIndex: index,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      selectedItemColor: ColorConstants.kSecondaryColor,
      selectedFontSize: 14,
      unselectedFontSize: 14,
      onTap: (value) {
        // Respond to item press.
        setState(() {
          if (value == 0) {
            appbartitle = "Home";
          } else if (value == 1) {
            appbartitle = "Complaints";
          } else if (value == 2) {
            appbartitle = "Laundry";
          } else {
            appbartitle = "Chats";
          }
          index = value;
        });
      },
      items: const [
        BottomNavigationBarItem(
          label: 'home',
          icon: Icon(Icons.home_filled),
        ),
        BottomNavigationBarItem(
          label: 'Complaints',
          icon: Icon(Icons.account_balance_wallet_rounded),
        ),
        BottomNavigationBarItem(
          label: 'Laundry',
          icon: Icon(Icons.local_laundry_service),
        ),
        BottomNavigationBarItem(
          label: 'Chats',
          icon: Icon(Icons.mail),
        ),
      ],
    );
  }

  Widget getCurrentScreen() {
    switch (index) {
      case 0:
        return HomeBody();
      case 1:
        return ComplaintBody();
      case 2:
        return LaundryBody();
      case 3:
        return ChatsBody();
      default:
        return HomeBody();
    }
  }
}
