import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:check_unused_l10n_bub/generated/localization/generated/intl/messages_all.dart';
// Import goes with `as gen` because we don't have a way to rename [gen.AppLocalizationDelegate]
// in the generated files by flutter_intl.
import 'package:check_unused_l10n_bub/generated/localization/generated/l10n.dart' as gen;

/// All methods and fields except for [Localization.load] are copied [gen.GeneratedAppLocalizations]
/// **only to override static method [Localization.load]**.
/// [gen.GeneratedAppLocalizations] is extended to get message getters and methods.
class Localization extends gen.GeneratedAppLocalizations {
  /// Locale used when current device locale is not in [gen.AppLocalizationDelegate.supportedLocales]
  static Locale defaultLocale = const Locale('en');

  /// Current instance.
  ///
  /// Copied from [gen.GeneratedAppLocalizations.current].
  static late Localization current;

  /// Bound localization delegate.
  ///
  /// Copied from [gen.GeneratedAppLocalizations.delegate].
  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  /// Sets locale for third-party objects and loads locale.
  ///
  /// This method's signature and part of logic are copied from [gen.GeneratedAppLocalizations.load].
  static Future<Localization> load(Locale locale) {
    return _executeCopiedLoadLogic(locale);
  }

  /// Finds current localization scope in widget tree.
  ///
  /// This method is copied from [gen.GeneratedAppLocalizations.of]
  static Localization of(BuildContext context) {
    return Localizations.of<Localization>(context, Localization)!;
  }

  /// Converts [Locale] object to [String] locale name.
  static String _getLocaleName(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    return Intl.canonicalizedLocale(name);
  }

  /// Executes locale loading logic from [gen.GeneratedAppLocalizations.load].
  ///
  /// This **method's body** is copied from [gen.GeneratedAppLocalizations.load].
  static Future<Localization> _executeCopiedLoadLogic(Locale locale) {
    final localeName = _getLocaleName(locale);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      return Localization.current = Localization();
    });
  }
}

/// This [AppLocalizationDelegate] implementation is fully copied from [gen.AppLocalizationDelegate] and
/// only replaces [GeneratedAppLocalizations] with [Localization] to couple it with [Localization] and
/// make it work with [Localization.of] method.
class AppLocalizationDelegate extends LocalizationsDelegate<Localization> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales => const gen.AppLocalizationDelegate().supportedLocales;

  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  @override
  Future<Localization> load(Locale locale) => Localization.load(locale);

  @override
  bool isSupported(Locale locale) => _isSupported(locale);

  bool _isSupported(Locale? locale) {
    if (locale != null) {
      for (final supportedLocale in supportedLocales) {
        if (supportedLocale.languageCode == locale.languageCode) {
          return true;
        }
      }
    }
    return false;
  }
}
