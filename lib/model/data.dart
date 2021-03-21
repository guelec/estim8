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
        Platform(
            "iOS",
            2000,
            20,
            "iOS işletim sistemli cihazlara (iPhone ve iPad) uygulama çıkartmak için.",
            FontAwesomeIcons.apple,
            false),
        Platform(
            "Android",
            1500,
            20,
            "Android işletim sistemli cihazlara (Telefon ve Tablet) uygulama çıkartmak için",
            FontAwesomeIcons.android,
            false),
        Platform(
            "Web",
            2000,
            20,
            "Web tarayıcısı uyumlu internet uygulamaları çıkartmak için",
            FontAwesomeIcons.internetExplorer,
            false),
        Platform(
            "Windows",
            1500,
            20,
            "Windows işletim sistemli cihazlara (Tablet ve Bilgisayar) masaüstü uygulaması çıkartmak için",
            FontAwesomeIcons.windows,
            false),
        Platform(
            "MacOS",
            2000,
            20,
            "MacOS işletim sistemli cihazlara (Macbook ve iMac) masaüstü uygulaması çıkartmak için",
            FontAwesomeIcons.apple,
            false),
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
            "Küçük",
            1.1,
            "Giriş sayfaları ve özellik içermeyen sayfalar hariç 3-5 sayfa",
            FontAwesomeIcons.home,
            false),
        AppSize(
            "Orta",
            1.3,
            "Giriş sayfaları ve özellik içermeyen sayfalar hariç 6-0 sayfa",
            FontAwesomeIcons.home,
            false),
        AppSize(
            "Büyük",
            1.5,
            "Giriş sayfaları ve özellik içermeyen sayfalar hariç 10-15 sayfa",
            FontAwesomeIcons.home,
            false),
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
        UserInterface("Prototip", 750, 20, "Text text text text",
            Icons.filter_1_rounded, false),
        UserInterface("Basit", 1500, 40, "Text text text text",
            Icons.filter_2_rounded, false),
        UserInterface("StartUp", 2500, 72, "Text text text text",
            Icons.filter_3_rounded, false),
        UserInterface("Profesyonel", 4000, 100, "Text text text text",
            Icons.filter_4_rounded, false),
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
            FontAwesomeIcons.twitter, false),
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
  IconData icon;
  bool isSwitched;

  Billing(
      this.name, this.cost, this.hours, this.text, this.icon, this.isSwitched);

  static List<Billing> getBilling() => [
        Billing("Abonelik", 1200, 20, "Text text text text", Icons.subscript,
            false),
        Billing(
            "Ödeme", 2000, 40, "Text text text text", Icons.credit_card, false),
        Billing("Alışveriş Sepeti", 2000, 35, "Text text text text",
            Icons.shopping_cart, false),
        Billing("Satış Yeri", 2500, 50, "Text text text text",
            Icons.shopping_bag, false),
        Billing("Uygulama İçi Satın Alma", 1000, 20, "Text text text text",
            Icons.shop, false),
      ];
}

class Connection {
  String name;
  int cost;
  int hours;
  String text;
  IconData icon;
  bool isSwitched;

  Connection(
      this.name, this.cost, this.hours, this.text, this.icon, this.isSwitched);

  static List<Connection> getConnection() => [
        Connection("Cihaz Bağlama", 1000, 20, "Text text text text",
            Icons.connect_without_contact, false),
        Connection("Bildirim", 1000, 20, "Text text text text",
            Icons.notifications, false),
        Connection("Eşzamanlı Veritabanı", 2500, 50, "Text text text text",
            FontAwesomeIcons.database, false),
      ];
}

class Security {
  String name;
  int cost;
  int hours;
  String text;
  IconData icon;
  bool isSwitched;

  Security(
      this.name, this.cost, this.hours, this.text, this.icon, this.isSwitched);

  static List<Security> getSecurity() => [
        Security("SSL", 2250, 30, "Text text text text", FontAwesomeIcons.lock,
            false),
        Security("İki Aşamalı Doğrulama", 1250, 20, "Text text text text",
            FontAwesomeIcons.key, false),
      ];
}

class Analytics {
  String name;
  int cost;
  int hours;
  String text;
  IconData icon;
  bool isSwitched;

  Analytics(
      this.name, this.cost, this.hours, this.text, this.icon, this.isSwitched);

  static List<Analytics> getAnalytics() => [
        Analytics("Admin", 1250, 20, "text text text text",
            Icons.admin_panel_settings, false),
        Analytics("Çoklu Dil", 1250, 20, "text text text text", Icons.language,
            false),
        Analytics("Reklam", 1250, 20, "text text text text",
            FontAwesomeIcons.ad, false),
        Analytics("Kullanıcı Analitiği", 1250, 20, "text text text text",
            Icons.analytics, false),
        Analytics("Performans Görüntüleme", 1250, 20, "text text text text",
            Icons.speed, false),
      ];
}

class Others {
  String name;
  int cost;
  int hours;
  String text;
  IconData icon;
  bool isSwitched;

  Others(
      this.name, this.cost, this.hours, this.text, this.icon, this.isSwitched);

  static List<Others> getOthers() => [
        Others("Mevsim", 750, 8, "Text text text text",
            FontAwesomeIcons.cloudSunRain, false),
        Others(
            "Checklist", 750, 8, "Text text text text", Icons.check_box, false),
        Others("Medya Oynatıcı", 1250, 30, "Text text text text",
            Icons.perm_media, false),
        Others("Fitness", 2000, 60, "Text text text text", Icons.fitness_center,
            false),
        Others("Fotoğraf Galerisi", 750, 10, "Text text text text",
            Icons.photo_album, false),
        Others("Anket", 750, 10, "Text text text text", Icons.question_answer,
            false),
        Others("Randevu", 2250, 40, "Text text text text", Icons.date_range,
            false),
        Others("QR Karekod", 1750, 40, "Text text text text",
            FontAwesomeIcons.qrcode, false),
        Others("Kamera", 600, 10, "Text text text text", Icons.camera, false),
        Others("Bluetooth", 950, 15, "Text text text text",
            FontAwesomeIcons.bluetooth, false),
      ];
}
