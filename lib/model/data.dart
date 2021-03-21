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
            4000,
            20,
            "iOS işletim sistemli cihazlara (iPhone ve iPad) uygulama çıkartmak için.",
            FontAwesomeIcons.apple,
            false),
        Platform(
            "Android",
            4000,
            20,
            "Android işletim sistemli cihazlara (Telefon ve Tablet) uygulama çıkartmak için",
            FontAwesomeIcons.android,
            false),
        Platform(
            "Web",
            2500,
            20,
            "Web tarayıcısı uyumlu internet uygulamaları çıkartmak için",
            FontAwesomeIcons.internetExplorer,
            false),
        Platform(
            "4000",
            1500,
            20,
            "Windows işletim sistemli cihazlara (Tablet ve Bilgisayar) masaüstü uygulaması çıkartmak için",
            FontAwesomeIcons.windows,
            false),
        Platform(
            "MacOS",
            4000,
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
            "Giriş sayfaları ve özellik içermeyen sayfalar hariç 6-10 sayfa",
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
        UserInterface(
            "Arayüzüm Hazır",
            0,
            0,
            "Kendi tasarımınız arayüzü kullanmak istiyorsanız",
            Icons.filter_none,
            false),
        UserInterface(
            "Prototip",
            750,
            20,
            "Prototip aşamasında bir arayüz tasarımı",
            Icons.filter_1_rounded,
            false),
        UserInterface("Basit", 1500, 40, "Basit bir arayüz tasarımı",
            Icons.filter_2_rounded, false),
        UserInterface(
            "StartUp",
            2500,
            72,
            "StartUp seviyesinde bir arayüz tasarımı",
            Icons.filter_3_rounded,
            false),
        UserInterface("Profesyonel", 4000, 100,
            "Profesyonel bir arayüz tasarımı", Icons.filter_4_rounded, false),
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
        Authentication("Email", 2000, 5, "Email ile kullanıcı girişi",
            FontAwesomeIcons.mailBulk, false),
        Authentication(
            "Facebook",
            1250,
            5,
            "Facebook hesabı ile kullanıcı girişi",
            FontAwesomeIcons.facebook,
            false),
        Authentication(
            "Twitter",
            1250,
            5,
            "Twitter hesabı ile kullanıcı girişi",
            FontAwesomeIcons.twitter,
            false),
        Authentication("Google", 1250, 5, "Google hesabı ile kullanıcı girişi",
            FontAwesomeIcons.google, false),
        Authentication(
            "LinkedIn",
            1250,
            5,
            "LinkedIn hesabı ile kullanıcı girişi",
            FontAwesomeIcons.linkedin,
            false),
        Authentication("GitHub", 1250, 5, "GitHub hesabı ile kullanıcı girişi",
            FontAwesomeIcons.github, false),
        Authentication(
            "SMS", 2000, 5, "Text text text text", FontAwesomeIcons.sms, false),
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
        Content("Kullanıcı Profili", 2000, 10,
            "Kullanıcı profili oluşturmak için", Icons.face, false),
        Content("Mesajlaşma", 3000, 10, "Uygulama içi mesajlaşma için",
            Icons.message, false),
        Content("Puanlama", 1000, 10, "Puanlama sistemi oluşturmak için",
            Icons.rate_review, false),
        Content(
            "Akış",
            3500,
            10,
            "Anasayfada paylaşım akış(feed) sistemi oluşturmak için",
            Icons.rss_feed,
            false),
        Content("Panel", 2000, 10, "Kontrol paneli sistemi oluşturmak için",
            Icons.dashboard, false),
        Content("Forum", 2000, 10, "Uygulama içi forum sistemi oluşturmak için",
            Icons.forum, false),
        Content("Arama", 750, 10, "Uygulama için arama sistemi oluşturmak için",
            Icons.search, false),
        Content(
            "Paylaşma",
            750,
            10,
            "Dışarıya bilgi paylaşma sistemi oluşturmak için",
            Icons.share,
            false),
        Content(
            "Dosya Yükleme",
            750,
            10,
            "Uygulamaya dosya yükleme sistemi oluşturmak için",
            Icons.upload_file,
            false),
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
        DateNLocation(
            "Takvim",
            750,
            5,
            "Uygulama için takvim sistemi oluşturmak için",
            Icons.calendar_today,
            false),
        DateNLocation(
            "Harita",
            750,
            5,
            "Sabit konum ve bölge gösterme sistemi oluşturmak için",
            Icons.map,
            false),
        DateNLocation(
            "Harita",
            2000,
            10,
            "Özel ve pinlenebilir harita sistemi oluşturmak için",
            Icons.location_city,
            false),
        DateNLocation("Rezervasyon", 2750, 5,
            "Rezervasyon sistemi oluşturmak için", Icons.book, false),
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
        Billing("Abonelik", 1200, 20, "Abonelik sistemi oluşturmak için",
            Icons.subscript, false),
        Billing(
            "Ödeme", 2000, 40, "Text text text text", Icons.credit_card, false),
        Billing("Alışveriş Sepeti", 2000, 35, "Ödeme sistemi oluşturmak için",
            Icons.shopping_cart, false),
        Billing("Satış Yeri", 2500, 50, "Satış yeri oluşturmak için",
            Icons.shopping_bag, false),
        Billing(
            "Uygulama İçi Satın Alma",
            1000,
            20,
            "Uygulama içi satın alma sistemi oluşturmak için",
            Icons.shop,
            false),
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
        Connection(
            "Cihaz Bağlama",
            2000,
            20,
            "Cihaz bağlama sistemi oluşturmak için",
            Icons.connect_without_contact,
            false),
        Connection(
            "Bildirim",
            4000,
            20,
            "Anlık ve toplu bildirim sistemi oluşturmak için",
            Icons.notifications,
            false),
        Connection(
            "Eşzamanlı Veritabanı",
            6000,
            50,
            "Eşzamanlı verilere ulaşılabilir bir sistem oluşturmak için",
            FontAwesomeIcons.database,
            false),
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
        Security("SSL", 4500, 30, "SSL güvenlik sistemi oluşturmak için",
            FontAwesomeIcons.lock, false),
        Security(
            "İki Aşamalı Doğrulama",
            2750,
            20,
            "İki aşamalı doğrulama sistemi oluşturmak için",
            FontAwesomeIcons.key,
            false),
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
        Analytics(
            "Admin",
            1250,
            20,
            "Uygulama içi admin sistemi oluşturmak için",
            Icons.admin_panel_settings,
            false),
        Analytics("Çoklu Dil", 1250, 20, "Çoklu dil desteği sunmak için",
            Icons.language, false),
        Analytics(
            "Reklam",
            1250,
            20,
            "Uygulama içi reklam sistemi oluşturmak için",
            FontAwesomeIcons.ad,
            false),
        Analytics(
            "Kullanıcı Analitiği",
            1250,
            20,
            "Verilerin işlenmesi için kullanıcı analitiği sistemi oluşturmak için",
            Icons.analytics,
            false),
        Analytics(
            "Performans Görüntüleme",
            1250,
            20,
            "Performans görüntüleme sistemi oluşturmak için",
            Icons.speed,
            false),
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
        Others("Hava Durumu", 1250, 8, "Hava Durumu sistemi oluşturmak için",
            FontAwesomeIcons.cloudSunRain, false),
        Others(
            "Checklist",
            1250,
            8,
            "Yapılacaklar listesi sistemi oluşturmak için",
            Icons.check_box,
            false),
        Others(
            "Medya Oynatıcı",
            1750,
            30,
            "Uygulama için medya oynatıcı sistemi oluşturmak için",
            Icons.perm_media,
            false),
        Others(
            "Fitness",
            6000,
            60,
            "Kullanıcı veri takibi ve geniş kapsamlı fitness sistemi oluşturmak için",
            Icons.fitness_center,
            false),
        Others("Fotoğraf Galerisi", 750, 10,
            "Fotoğraf galerisi oluşturmak için", Icons.photo_album, false),
        Others(
            "Anket",
            1250,
            10,
            "Anket ve değerlendirme sistemi oluşturmak için",
            Icons.question_answer,
            false),
        Others("Randevu", 2250, 40, "Randevu alma sistemi oluşturmak için",
            Icons.date_range, false),
        Others("QR Karekod", 4000, 40, "QR oluşturma ve okumak için",
            FontAwesomeIcons.qrcode, false),
        Others("Kamera", 750, 10, "Kamera kullanımı için", Icons.camera, false),
        Others("Bluetooth", 1250, 15, "Bluetooth ile bağlantı için",
            FontAwesomeIcons.bluetooth, false),
      ];
}
