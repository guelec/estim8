import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Platform {
  String name;
  int cost;
  int hours;
  String text;
  IconData icon;
  bool isSwitched;

  Platform(
      this.name, this.cost, this.hours, this.text, this.icon, this.isSwitched);

  static List<Platform> getPlatform() => [
        Platform("iOS", 2000, 20, "Text text text text", FontAwesomeIcons.apple,
            false),
        Platform("Android", 1500, 20, "Text text text text",
            FontAwesomeIcons.android, false),
      ];
}

class AppSize {
  String name;
  double mult;
  String text;
  IconData icon;
  bool isSwitched;

  AppSize(this.name, this.mult, this.text, this.icon, this.isSwitched);

  static List<AppSize> getAppSize() => [
        AppSize(
            "Küçük", 1.1, "Text text text text", FontAwesomeIcons.home, false),
        AppSize(
            "Orta", 1.3, "Text text text text", FontAwesomeIcons.home, false),
        AppSize(
            "Büyük", 1.5, "Text text text text", FontAwesomeIcons.home, false),
      ];
}

class UserInterface {
  String name;
  int cost;
  int hours;
  String text;
  FontAwesomeIcons icon;
  bool isSwitched;

  UserInterface(
      this.name, this.cost, this.hours, this.text, this.icon, this.isSwitched);

  static List<UserInterface> getUserInterface() => [];
}

class Authentication {
  String name;
  int cost;
  int hours;
  String text;
  FontAwesomeIcons icon;
  bool isSwitched;

  Authentication(
      this.name, this.cost, this.hours, this.text, this.icon, this.isSwitched);

  static List<Authentication> getAuthentication() => [];
}

class Content {
  String name;
  int cost;
  int hours;
  String text;
  FontAwesomeIcons icon;
  bool isSwitched;

  Content(
      this.name, this.cost, this.hours, this.text, this.icon, this.isSwitched);

  static List<Content> getContent() => [];
}

class DateNLocation {
  String name;
  int cost;
  int hours;
  String text;
  FontAwesomeIcons icon;
  bool isSwitched;

  DateNLocation(
      this.name, this.cost, this.hours, this.text, this.icon, this.isSwitched);

  static List<DateNLocation> getDateNLocation() => [];
}

class Billing {
  String name;
  int cost;
  int hours;
  String text;
  FontAwesomeIcons icon;
  bool isSwitched;

  Billing(
      this.name, this.cost, this.hours, this.text, this.icon, this.isSwitched);

  static List<Billing> getBilling() => [];
}
