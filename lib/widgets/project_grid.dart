import 'package:dashboard/data/data.dart';
import 'package:dashboard/model/project_model.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ProjectGrid extends StatelessWidget {
  const ProjectGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: project.length,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 16 / 7, crossAxisCount: 1, mainAxisSpacing: 20),
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(project[index].backImage), fit: BoxFit.fill),
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
                        project[index].title,
                        style: const TextStyle(color: Colors.white),
                      ),
                      Text(
                        project[index].project_team,
                        style: const TextStyle(color: Colors.white),
                      ),
                      CircularPercentIndicator(
                        radius: 30,
                        lineWidth: 8,
                        animation: true,
                        animationDuration: 1500,
                        circularStrokeCap: CircularStrokeCap.round,
                        percent: project[index].percent / 100,
                        progressColor: Colors.white,
                        center: Text(
                          "${project[index].percent}%",
                          style: const TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }
}
