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
        Platform("Web", 2000, 20, "Text text text text",
            FontAwesomeIcons.internetExplorer, false),
        Platform("Windows", 1500, 20, "Text text text text",
            FontAwesomeIcons.windows, false),
        Platform("MacOS", 2000, 20, "Text text text text",
            FontAwesomeIcons.apple, false),
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
  IconData icon;
  bool isSwitched;

  UserInterface(
      this.name, this.cost, this.hours, this.text, this.icon, this.isSwitched);

  static List<UserInterface> getUserInterface() => [
        UserInterface("MacOS", 2000, 20, "Text text text text",
            FontAwesomeIcons.apple, false),
      ];
}

class Authentication {
  String name;
  int cost;
  int hours;
  String text;
  IconData icon;
  bool isSwitched;

  Authentication(
      this.name, this.cost, this.hours, this.text, this.icon, this.isSwitched);

  static List<Authentication> getAuthentication() => [
        Authentication("Email", 500, 5, "Text text text text",
            FontAwesomeIcons.mailBulk, false),
        Authentication("Facebook", 500, 5, "Text text text text",
            FontAwesomeIcons.facebook, false),
        Authentication("Twitter", 500, 5, "Text text text text",
            FontAwesomeIcons.twitch, false),
        Authentication("Google", 500, 5, "Text text text text",
            FontAwesomeIcons.google, false),
        Authentication("LinkedIn", 500, 5, "Text text text text",
            FontAwesomeIcons.linkedin, false),
        Authentication("GitHub", 500, 5, "Text text text text",
            FontAwesomeIcons.github, false),
        Authentication(
            "SMS", 500, 5, "Text text text text", FontAwesomeIcons.sms, false),
      ];
}

class Content {
  String name;
  int cost;
  int hours;
  String text;
  IconData icon;
  bool isSwitched;

  Content(
      this.name, this.cost, this.hours, this.text, this.icon, this.isSwitched);

  static List<Content> getContent() => [
        Content("Kullanıcı Profili", 750, 10, "Text text text text", Icons.face,
            false),
        Content(
            "Mesajlaşma", 750, 10, "Text text text text", Icons.message, false),
        Content("Puanlama", 750, 10, "Text text text text", Icons.rate_review,
            false),
        Content("Akış", 750, 10, "Text text text text", Icons.rss_feed, false),
        Content(
            "Panel", 750, 10, "Text text text text", Icons.dashboard, false),
        Content("Forum", 750, 10, "Text text text text", Icons.forum, false),
        Content("Arama", 750, 10, "Text text text text", Icons.search, false),
        Content("Paylaşma", 750, 10, "Text text text text", Icons.share, false),
        Content("Dosya Yükleme", 750, 10, "Text text text text",
            Icons.upload_file, false),
      ];
}

class DateNLocation {
  String name;
  int cost;
  int hours;
  String text;
  IconData icon;
  bool isSwitched;

  DateNLocation(
      this.name, this.cost, this.hours, this.text, this.icon, this.isSwitched);

  static List<DateNLocation> getDateNLocation() => [
        DateNLocation("Takvim", 500, 5, "Text text text text",
            Icons.calendar_today, false),
        DateNLocation(
            "Harita", 500, 5, "Text text text text", Icons.map, false),
        DateNLocation("Harita", 750, 10, "Text text text text",
            Icons.location_city, false),
        DateNLocation(
            "Rezervasyon", 1250, 5, "Text text text text", Icons.book, false),
      ];
}

class Billing {
  String name;
  int cost;
  int hours;
  String text;
  Icondata icon;
  bool isSwitched;

  Billing(
      this.name, this.cost, this.hours, this.text, this.icon, this.isSwitched);

  static List<Billing> getBilling() => [
        Billing(
            "Abonelik", 1200, 20, "Text text text text", Icons.subscript, false)
      ];
}

class Connection {
  String name;
  int cost;
  int hours;
  String text;
  FontAwesomeIcons icon;
  bool isSwitched;

  Connection(
      this.name, this.cost, this.hours, this.text, this.icon, this.isSwitched);

  static List<Connection> getConnection() => [];
}

class Security {
  String name;
  int cost;
  int hours;
  String text;
  FontAwesomeIcons icon;
  bool isSwitched;

  Security(
      this.name, this.cost, this.hours, this.text, this.icon, this.isSwitched);

  static List<Security> getSecurity() => [];
}

class Analytics {
  String name;
  int cost;
  int hours;
  String text;
  FontAwesomeIcons icon;
  bool isSwitched;

  Analytics(
      this.name, this.cost, this.hours, this.text, this.icon, this.isSwitched);

  static List<Analytics> getAnalytics() => [];
}

class Others {
  String name;
  int cost;
  int hours;
  String text;
  FontAwesomeIcons icon;
  bool isSwitched;

  Others(
      this.name, this.cost, this.hours, this.text, this.icon, this.isSwitched);

  static List<Others> getOthers() => [];
}
