import 'package:dashboard/screens/components/adminside_menu.dart';
import 'package:dashboard/screens/components/chart_container.dart';
import 'package:dashboard/widgets/activity_header.dart';
import 'package:dashboard/widgets/bar_chart.dart';
import 'package:dashboard/widgets/courses_grid.dart';
import 'package:flutter/material.dart';

import '../constant.dart';
import 'components/side_menu.dart';

class AddUser extends StatelessWidget {
  const AddUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.grey, size: 28),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications,
              color: Colors.grey,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 5, right: 16, bottom: 5),
            child: const CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dXNlcnxlbnwwfHwwfHw%3D&w=1000&q=60"),
            ),
          )
        ],
      ),
      drawer: const AdminSideMenu(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:[
              Text('Tambah User',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
               Container(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(90.0),
                        ),
                        labelText: "Username",
                      ),
                    ),
                  ),
               Container(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(90.0),
                        ),
                        labelText: "Email",
                      ),
                    ),
                  ),
               Container(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(90.0),
                        ),
                        labelText: "Password",
                      ),
                    ),
                  ),   
               Container(
                      height: 80,
                      padding: const EdgeInsets.all(20),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size.fromHeight(50),
                        ),
                        child: const Text("Tambah"),
                        onPressed: () {},
                      )
                  ),
            ]
          ),
        ),
      ),
    );
  }
}
