import 'package:dashboard/screens/team_screen.dart';
import 'package:flutter/material.dart';
import 'package:ternav_icons/ternav_icons.dart';
import '../main_screen.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width / 1.5,
      child: ListView(
        shrinkWrap: true,
        children: [
          const SizedBox(
            height: 80,
            child: DrawerHeader(
                child: Text("Employe Assessment", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20), textAlign: TextAlign.center)),
          ),
          DrawerListTile(
            icon: TernavIcons.lightOutline.home_2,
            title: "Home",
            onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context) => MainScreen()));},
          ),
          DrawerListTile(
            icon: TernavIcons.lightOutline.user_2,
            title: "My Team",
            onTap: () {Navigator.push(context,MaterialPageRoute(builder: (context) => TeamScreen()));},
          ),
          DrawerListTile(
            icon: TernavIcons.lightOutline.settings,
            title: "Settings",
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    required this.icon,
    required this.title,
    required this.onTap,
  }) : super(key: key);
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      horizontalTitleGap: 0,
      leading: Icon(
        icon,
        color: Colors.grey,
        size: 18,
      ),
      title: Text(
        title,
        style: const TextStyle(color: Colors.grey),
      ),
    );
  }
}
