import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rit_smart_hostel/utils/color_utils.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl = "https://avatars.githubusercontent.com/u/72452328?v=4";
    return Drawer(
      backgroundColor: ColorConstants.kSecondaryColor,
      child: Container(
        color: ColorConstants.kSecondaryColor,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero, //for removing the padding
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: ColorConstants.kSecondaryColor,
                ),
                margin: EdgeInsets.zero,
                //for removing the margin
                accountName: Text("MusheerAhmed",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.normal)),
                accountEmail: Text("1910053@ritindia.edu",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.normal)),
                // currentAccountPicture:Image.network(imageUrl), // for square
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl), // for circular
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text("Home",
                  textScaleFactor: 1.3,
                  style: TextStyle(
                    color: Colors.white,
                  )),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text("Profile",
                  textScaleFactor: 1.3,
                  style: TextStyle(
                    color: Colors.white,
                  )),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text("Email",
                  textScaleFactor: 1.3,
                  style: TextStyle(
                    color: Colors.white,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
