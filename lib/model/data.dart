import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Platform {
  String name;
  int cost;
  int hours;
  String text;
  IconData icon;

  Platform(this.name, this.cost, this.hours, this.text, this.icon);

  static List<Platform> getPlatform() => [
        Platform(
            "iOS", 2000, 20, "Text text text text", FontAwesomeIcons.apple),
        Platform("Android", 1500, 20, "Text text text text",
            FontAwesomeIcons.android),
      ];
}

class AppSize {
  String name;
  double mult;
  String text;
  FontAwesomeIcons icon;

  AppSize(this.name, this.mult, this.text, this.icon);
}

class UserInterface {
  String name;
  int cost;
  int hours;
  String text;
  FontAwesomeIcons icon;

  UserInterface(this.name, this.cost, this.hours, this.text, this.icon);

  static List<UserInterface> getUserInterface() => [];
}

class Authentication {
  String name;
  int cost;
  int hours;
  String text;
  FontAwesomeIcons icon;

  Authentication(this.name, this.cost, this.hours, this.text, this.icon);

  static List<Authentication> getAuthentication() => [];
}

class Content {
  String name;
  int cost;
  int hours;
  String text;
  FontAwesomeIcons icon;

  Content(this.name, this.cost, this.hours, this.text, this.icon);

  static List<Content> getContent() => [];
}

class DateNLocation {
  String name;
  int cost;
  int hours;
  String text;
  FontAwesomeIcons icon;

  DateNLocation(this.name, this.cost, this.hours, this.text, this.icon);

  static List<DateNLocation> getDateNLocation() => [];
}

class Billing {
  String name;
  int cost;
  int hours;
  String text;
  FontAwesomeIcons icon;

  Billing(this.name, this.cost, this.hours, this.text, this.icon);

  static List<Billing> getBilling() => [];
}
