import 'package:dashboard/constant.dart';
import 'package:flutter/material.dart';

import '../model/project_model.dart';
import '../model/team_model.dart';

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

final List<Team> team = [
  Team(
    nama: 'Arlene McCoy',
    role: 'Front-End Developer',
    userImage: "images/box/box1.png"),
  Team(
    nama: 'Bessie Cooper',
    role: 'Front-End Developer',
    userImage: "images/box/box2.png"),
  Team(
    nama: 'Ronald Richards',
    role: 'Front-End Developer',
    userImage: "images/box/box3.png"),
  Team(
    nama: 'Albert Flores',
    role: 'UI/UX Designer',
    userImage: "images/box/box1.png"),
  Team(
    nama: 'Esther Howard',
    role: 'Software Tester',
    userImage: "images/box/box2.png"),
  Team(
    nama: 'Cody Fisher',
    role: 'Business Analyst',
    userImage: "images/box/box3.png"),  
];