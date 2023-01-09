import 'package:dashboard/constant.dart';
import 'package:flutter/material.dart';

import '../model/project_model.dart';

final List<Project> project = [
  Project(
      title: "Dashboard Monitoring",
      project_team: "6 People",
      percent: 75,
      backImage: "images/box/box1.png",
      color: kDarkBlue),
  Project(
      title: "Project Management",
      project_team: "4 People",
      percent: 50,
      backImage: "images/box/box2.png",
      color: kOrange),
  Project(
      title: "Company Profile Website",
      project_team: "3 People",
      percent: 25,
      backImage: "images/box/box3.png",
      color: kGreen),
];