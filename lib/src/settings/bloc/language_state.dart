part of 'language_cubit.dart';

abstract class LanguageState extends Equatable {
  final String languageCode;

  const LanguageState(this.languageCode);

  @override
  List<Object> get props => [languageCode];
}

class LanguageInitial extends LanguageState {
  const LanguageInitial(String languageCode) : super(languageCode);
}

class EnglishLanguage extends LanguageState {
  const EnglishLanguage() : super('en');
}

class BanglaLanguage extends LanguageState {
  const BanglaLanguage() : super('bn');
}
