import 'package:flutter_bloc/flutter_bloc.dart';

import '../errors/failures.dart';

enum AppStatus { initial, loading, success, empty, error }

class AppState<T> {
  const AppState({
    this.status = AppStatus.initial,
    this.data,
    this.errorMessage,
  });

  final AppStatus status;
  final T? data;
  final String? errorMessage;
}

abstract class AppCubit<T> extends Cubit<AppState<T>> {
  AppCubit() : super(AppState<T>());

  void emitLoading() => emit(AppState<T>(status: AppStatus.loading));

  void emitSuccess(T data) => emit(
        AppState<T>(status: AppStatus.success, data: data),
      );

  void emitEmpty() => emit(AppState<T>(status: AppStatus.empty));

  void emitFailure(Failure failure) => emit(
        AppState<T>(
          status: AppStatus.error,
          errorMessage: failure.message,
        ),
      );
}
