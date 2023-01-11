import 'package:dashboard/data/data.dart';
import 'package:flutter/material.dart';

class TeamList extends StatelessWidget {
  const TeamList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: team.length,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 16 / 3, crossAxisCount: 1, mainAxisSpacing: 10),
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(team[index].userImage),
              ),
              title: Text(team[index].nama),
              subtitle: Text(team[index].role),
              trailing: IconButton(icon: Icon(Icons.navigate_next), onPressed: () {}),
            ),
          );
        }
      );
  }
}
