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

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `at`
  String get at {
    return Intl.message('at', name: 'at', desc: '', args: []);
  }

  /// `ok`
  String get ok {
    return Intl.message('ok', name: 'ok', desc: '', args: []);
  }

  /// `touchId`
  String get biometric_touchId {
    return Intl.message(
      'touchId',
      name: 'biometric_touchId',
      desc: '',
      args: [],
    );
  }

  /// `fingerprint`
  String get biometric_fingerprint {
    return Intl.message(
      'fingerprint',
      name: 'biometric_fingerprint',
      desc: '',
      args: [],
    );
  }

  /// `faceId`
  String get biometric_faceId {
    return Intl.message('faceId', name: 'biometric_faceId', desc: '', args: []);
  }

  /// `faceUnlock`
  String get biometric_faceUnlock {
    return Intl.message(
      'faceUnlock',
      name: 'biometric_faceUnlock',
      desc: '',
      args: [],
    );
  }

  /// `Error`
  String get dialog_error {
    return Intl.message('Error', name: 'dialog_error', desc: '', args: []);
  }

  /// `Host unavailable please try again later`
  String get dialog_host_unavailable_please_try_again_later {
    return Intl.message(
      'Host unavailable please try again later',
      name: 'dialog_host_unavailable_please_try_again_later',
      desc: '',
      args: [],
    );
  }

  /// `New version available`
  String get dialog_newVersionAvailable {
    return Intl.message(
      'New version available',
      name: 'dialog_newVersionAvailable',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message('Password', name: 'password', desc: '', args: []);
  }

  /// `Sign in`
  String get sign_in {
    return Intl.message('Sign in', name: 'sign_in', desc: '', args: []);
  }

  /// `Breed list`
  String get breed_list {
    return Intl.message('Breed list', name: 'breed_list', desc: '', args: []);
  }

  /// `Expectation`
  String get expectation {
    return Intl.message('Expectation', name: 'expectation', desc: '', args: []);
  }

  /// `Sign up`
  String get sign_up {
    return Intl.message('Sign up', name: 'sign_up', desc: '', args: []);
  }

  /// `Sign in with Google`
  String get sign_in_with_google {
    return Intl.message(
      'Sign in with Google',
      name: 'sign_in_with_google',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get already_have_an_account {
    return Intl.message(
      'Already have an account?',
      name: 'already_have_an_account',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account yet?`
  String get not_have_an_account {
    return Intl.message(
      'Don`t have an account yet?',
      name: 'not_have_an_account',
      desc: '',
      args: [],
    );
  }

  /// `Breeds`
  String get breeds {
    return Intl.message('Breeds', name: 'breeds', desc: '', args: []);
  }

  /// `Clients`
  String get clients {
    return Intl.message('Clients', name: 'clients', desc: '', args: []);
  }

  /// `Profile`
  String get profile {
    return Intl.message('Profile', name: 'profile', desc: '', args: []);
  }

  /// `Password should not be empty`
  String get passwordShouldntBeEmpty {
    return Intl.message(
      'Password should not be empty',
      name: 'passwordShouldntBeEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Light`
  String get light {
    return Intl.message('Light', name: 'light', desc: '', args: []);
  }

  /// `Dark`
  String get dark {
    return Intl.message('Dark', name: 'dark', desc: '', args: []);
  }

  /// `Ukrainian`
  String get ukraine {
    return Intl.message('Ukrainian', name: 'ukraine', desc: '', args: []);
  }

  /// `English`
  String get english {
    return Intl.message('English', name: 'english', desc: '', args: []);
  }

  /// `Logout`
  String get logout {
    return Intl.message('Logout', name: 'logout', desc: '', args: []);
  }

  /// `Email`
  String get email {
    return Intl.message('Email', name: 'email', desc: '', args: []);
  }

  /// `Email should not be empty`
  String get emailShouldntBeEmpty {
    return Intl.message(
      'Email should not be empty',
      name: 'emailShouldntBeEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Enter a valid email`
  String get emailInvalid {
    return Intl.message(
      'Enter a valid email',
      name: 'emailInvalid',
      desc: '',
      args: [],
    );
  }

  /// `Password must be at least 6 characters`
  String get passwordTooShort {
    return Intl.message(
      'Password must be at least 6 characters',
      name: 'passwordTooShort',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message('Login', name: 'login', desc: '', args: []);
  }

  /// `Register`
  String get register {
    return Intl.message('Register', name: 'register', desc: '', args: []);
  }

  /// `Login`
  String get loginTitle {
    return Intl.message('Login', name: 'loginTitle', desc: '', args: []);
  }

  /// `Register`
  String get registerTitle {
    return Intl.message('Register', name: 'registerTitle', desc: '', args: []);
  }

  /// `Retry`
  String get retry {
    return Intl.message('Retry', name: 'retry', desc: '', args: []);
  }

  /// `Incorrect email or password`
  String get authErrorWrongCredentials {
    return Intl.message(
      'Incorrect email or password',
      name: 'authErrorWrongCredentials',
      desc: '',
      args: [],
    );
  }

  /// `No account found for this email`
  String get authErrorUserNotFound {
    return Intl.message(
      'No account found for this email',
      name: 'authErrorUserNotFound',
      desc: '',
      args: [],
    );
  }

  /// `An account with this email already exists`
  String get authErrorEmailInUse {
    return Intl.message(
      'An account with this email already exists',
      name: 'authErrorEmailInUse',
      desc: '',
      args: [],
    );
  }

  /// `This account has been disabled`
  String get authErrorUserDisabled {
    return Intl.message(
      'This account has been disabled',
      name: 'authErrorUserDisabled',
      desc: '',
      args: [],
    );
  }

  /// `No connection. Check your internet and try again`
  String get authErrorNetwork {
    return Intl.message(
      'No connection. Check your internet and try again',
      name: 'authErrorNetwork',
      desc: '',
      args: [],
    );
  }

  /// `Too many attempts. Try again later`
  String get authErrorTooManyRequests {
    return Intl.message(
      'Too many attempts. Try again later',
      name: 'authErrorTooManyRequests',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong`
  String get authErrorUnknown {
    return Intl.message(
      'Something went wrong',
      name: 'authErrorUnknown',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en', countryCode: 'US'),
      Locale.fromSubtags(languageCode: 'uk', countryCode: 'UA'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
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
