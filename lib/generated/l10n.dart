// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values

class S {
  S();
  
  static S current;
  
  static const AppLocalizationDelegate delegate =
    AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name); 
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      S.current = S();
      
      return S.current;
    });
  } 

  static S of(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `LOGIN`
  String get login {
    return Intl.message(
      'LOGIN',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `REGISTER`
  String get register {
    return Intl.message(
      'REGISTER',
      name: 'register',
      desc: '',
      args: [],
    );
  }

  /// `EMAIL ADDRESS`
  String get emailAddress {
    return Intl.message(
      'EMAIL ADDRESS',
      name: 'emailAddress',
      desc: '',
      args: [],
    );
  }

  /// `you@youremail.com`
  String get youyouremailcom {
    return Intl.message(
      'you@youremail.com',
      name: 'youyouremailcom',
      desc: '',
      args: [],
    );
  }

  /// `PASSWORD (6 characters minimum)`
  String get password_hint {
    return Intl.message(
      'PASSWORD (6 characters minimum)',
      name: 'password_hint',
      desc: '',
      args: [],
    );
  }

  /// `Forgot your password?`
  String get forgotYourPassword {
    return Intl.message(
      'Forgot your password?',
      name: 'forgotYourPassword',
      desc: '',
      args: [],
    );
  }

  /// `ADD PHOTO`
  String get addPhoto {
    return Intl.message(
      'ADD PHOTO',
      name: 'addPhoto',
      desc: '',
      args: [],
    );
  }

  /// `YOUR NAME`
  String get yourName {
    return Intl.message(
      'YOUR NAME',
      name: 'yourName',
      desc: '',
      args: [],
    );
  }

  /// `e.g. Stephen King`
  String get egStephenKing {
    return Intl.message(
      'e.g. Stephen King',
      name: 'egStephenKing',
      desc: '',
      args: [],
    );
  }

  /// `PASSWORD (6 characters minimum)`
  String get password6CharactersMinimum {
    return Intl.message(
      'PASSWORD (6 characters minimum)',
      name: 'password6CharactersMinimum',
      desc: '',
      args: [],
    );
  }

  /// `Need help?`
  String get needHelp {
    return Intl.message(
      'Need help?',
      name: 'needHelp',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    if (locale != null) {
      for (var supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}