part of 'login_cubit.dart';

@immutable
sealed class LoginState {}

final class LoginInitial extends LoginState {}
final class LoginLoading extends LoginState {}
final class LoginFailure extends LoginState {
  final String errMessage;

  LoginFailure(this.errMessage);
}
final class LoginSuccess extends LoginState {
  final LoginResopnseBody loginResopnseBody;

  LoginSuccess(this.loginResopnseBody);
}
