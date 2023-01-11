import 'package:dashboard/data/data.dart';
import 'package:dashboard/model/team_model.dart';
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
            childAspectRatio: 16 / 7, crossAxisCount: 1, mainAxisSpacing: 20),
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(team[index].backImage), fit: BoxFit.fill),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        team[index].nama,
                        style: const TextStyle(color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        team[index].role,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }
}
