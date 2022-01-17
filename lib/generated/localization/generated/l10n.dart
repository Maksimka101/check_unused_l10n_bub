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
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class GeneratedAppLocalizations {
  GeneratedAppLocalizations();

  static GeneratedAppLocalizations? _current;

  static GeneratedAppLocalizations get current {
    assert(_current != null,
        'No instance of GeneratedAppLocalizations was loaded. Try to initialize the GeneratedAppLocalizations delegate before accessing GeneratedAppLocalizations.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<GeneratedAppLocalizations> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = GeneratedAppLocalizations();
      GeneratedAppLocalizations._current = instance;

      return instance;
    });
  }

  static GeneratedAppLocalizations of(BuildContext context) {
    final instance = GeneratedAppLocalizations.maybeOf(context);
    assert(instance != null,
        'No instance of GeneratedAppLocalizations present in the widget tree. Did you add GeneratedAppLocalizations.delegate in localizationsDelegates?');
    return instance!;
  }

  static GeneratedAppLocalizations? maybeOf(BuildContext context) {
    return Localizations.of<GeneratedAppLocalizations>(
        context, GeneratedAppLocalizations);
  }

  /// `used`
  String get used {
    return Intl.message(
      'used',
      name: 'used',
      desc: '',
      args: [],
    );
  }

  /// `unused`
  String get unused {
    return Intl.message(
      'unused',
      name: 'unused',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate
    extends LocalizationsDelegate<GeneratedAppLocalizations> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<GeneratedAppLocalizations> load(Locale locale) =>
      GeneratedAppLocalizations.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
