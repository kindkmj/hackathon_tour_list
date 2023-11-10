import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tour_list/l10n/messages_all.dart';

class AppLocalization {
  AppLocalization(this.locale);

  final Locale locale;

  static Future<AppLocalization> load(Locale locale) async {
    final String name =
        locale.countryCode == null ? locale.languageCode : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);

    return initializeMessages(localeName).then((bool _) {
      Intl.defaultLocale = localeName;
      return AppLocalization(locale);
    });
  }

  static String? getLocale() {
    return Intl.defaultLocale;
  }

  static AppLocalization of(BuildContext context) {
    return Localizations.of<AppLocalization>(context, AppLocalization)!;
  }

  String get serviceDescription {
    return Intl.message(
      '',
      name: 'serviceDescription',
    );
  }

  String get googleStart {
    return Intl.message(
      'Start with Google',
      name: 'Start with Google',
    );
  }

  String get yourTrip {
    return Intl.message(
      'yourTrip',
      name: 'yourTrip',
    );
  }

  String get createKClass {
    return Intl.message(
      'createKClass',
      name: 'createKClass',
    );
  }

  String get joinKClass {
    return Intl.message(
      'JoinKClass',
      name: 'JoinKClass',
    );
  }

  String get title {
    return Intl.message(
      'title',
      name: 'title',
    );
  }

  String get thema {
    return Intl.message(
      'thmea',
      name: 'thema',
    );
  }

  String get region {
    return Intl.message(
      'region',
      name: 'region',
    );
  }

  String get cars {
    return Intl.message(
      'cars',
      name: 'cars',
    );
  }

  String get date {
    return Intl.message(
      'date',
      name: 'date',
    );
  }

  String get price {
    return Intl.message(
      'price',
      name: 'price',
    );
  }

  String get people {
    return Intl.message(
      'people',
      name: 'people',
    );
  }

  String get description {
    return Intl.message(
      'description',
      name: 'description',
    );
  }

  String get tags {
    return Intl.message(
      'tags',
      name: 'tags',
    );
  }

  String get register {
    return Intl.message(
      'register',
      name: 'register',
    );
  }

  String get selectThema {
    return Intl.message(
      'selectThema',
      name: 'selectThema',
    );
  }

  String get selectRegion {
    return Intl.message(
      'selectRegion',
      name: 'selectRegion',
    );
  }

  String get vehicle {
    return Intl.message(
      'vehicle',
      name: 'vehicle',
    );
  }

  String get pleaseChooseSomething {
    return Intl.message(
      'pleaseChooseSomething',
      name: 'pleaseChooseSomething',
    );
  }

  String get bus {
    return Intl.message(
      'bus',
      name: 'bus',
    );
  }

  String get taxi {
    return Intl.message(
      'taxi',
      name: 'taxi',
    );
  }

  String get rentalCar {
    return Intl.message(
      'rentalCar',
      name: 'rentalCar',
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<AppLocalization> {
  const AppLocalizationDelegate(this.overriddenLocale);

  final Locale overriddenLocale;

  @override
  bool isSupported(Locale locale) {
    return <String>['en', 'ko', 'ja'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalization> load(Locale locale) {
    return AppLocalization.load(locale);
  }

  @override
  bool shouldReload(LocalizationsDelegate<AppLocalization> old) {
    return false;
  }
}
