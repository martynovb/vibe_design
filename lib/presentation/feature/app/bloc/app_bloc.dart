import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vibe_design/presentation/shared/app_constants.dart';

part 'app_bloc.freezed.dart';

part 'app_event.dart';

part 'app_state.dart';

@Singleton()
class AppBloc extends Bloc<AppEvent, AppState> {
  AppBloc()
      : super(
          const AppState(
            status: FormzSubmissionStatus.initial,
            errorMessage: null,
            themeMode: ThemeMode.light,
          ),
        ) {
    on<_AppStarted>(_onAppStarted);
    on<_FreeLesson>(_onFreeLesson);
    on<_OpenLinkedIn>(_onOpenLinkedIn);
    on<_OpenInstagram>(_onInstagram);
    on<_OpenTelegram>(_onTelegram);
    on<_SendEmail>(_onSendEmail);
  }

  Future<void> _onAppStarted(event, emit) async {}
  Future<void> _onOpenLinkedIn(event, emit) async {
    launchUrl(Uri.parse(AppConstants.linkedInAccount));
  }

  Future<void> _onInstagram(event, emit) async {
    launchUrl(Uri.parse(AppConstants.instagramProfile));
  }

  Future<void> _onTelegram(event, emit) async {
    launchUrl(Uri.parse(AppConstants.telegramAccount));
  }

  Future<void> _onSendEmail(event, emit) async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: AppConstants.contactEmail,
    );

    launchUrl(emailLaunchUri);
  }

  Future<void> _onFreeLesson(event, emit) async {
    launchUrl(Uri.parse(AppConstants.telegramAccount));
  }
}
