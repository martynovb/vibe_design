part of 'app_bloc.dart';

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.appStarted() = _AppStarted;
  const factory AppEvent.freeLesson() = _FreeLesson;
  const factory AppEvent.openLinkedIn() = _OpenLinkedIn;
  const factory AppEvent.openInstagram() = _OpenInstagram;
  const factory AppEvent.openTelegram() = _OpenTelegram;
  const factory AppEvent.sendEmail() = _SendEmail;
}
