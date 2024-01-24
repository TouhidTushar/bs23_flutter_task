import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'language_state.dart';

class LanguageCubit extends Cubit<LanguageState> {
  LanguageCubit() : super(const LanguageInitial('en'));

  void setLanguage(String languageCode) {
    switch (languageCode) {
      case 'en':
        emit(const EnglishLanguage());
        break;
      case 'bn':
        emit(const BanglaLanguage());
        break;
    }
  }
}
