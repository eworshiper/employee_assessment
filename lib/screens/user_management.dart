import 'package:dashboard/screens/add_user.dart';
import 'package:dashboard/screens/components/chart_container.dart';
import 'package:dashboard/widgets/activity_header.dart';
import 'package:dashboard/widgets/bar_chart.dart';
import 'package:dashboard/widgets/courses_grid.dart';
import 'package:flutter/material.dart';

import '../constant.dart';
import 'components/adminside_menu.dart';

class UserManagement extends StatelessWidget {
  const UserManagement({Key? key}) : super(key: key);

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
            children: [
              RichText(
                text: const TextSpan(
                  text: "Hello ",
                  style: TextStyle(color: kDarkBlue, fontSize: 20),
                  children: [
                    TextSpan(
                      text: "ADMIN",
                      style: TextStyle(
                          color: kDarkBlue, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: ", welcome!",
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                  Text(
                    "User Management",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  Expanded (
                    child:TextButton(
                          style: TextButton.styleFrom(
                          textStyle: const TextStyle(color: kDarkBlue),
                            ),
                    onPressed: () {
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AddUser()));
                    },
                    child: const Text('Tambah'),
                  ), 
                  )   

                ],
              ),

              const SizedBox(
                height: 10,
              ),
              const CourseGrid(),
              const SizedBox(
                height: 20,
              ),
              const ActivityHeader(),
              const ChartContainer(chart: BarChartContent())
            ],
          ),
        ),
      ),
    );
  }
}
