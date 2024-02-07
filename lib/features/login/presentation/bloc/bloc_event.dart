part of 'bloc.dart';

abstract class BlocEvent {}

//! event adalah aksi / tindakan
// 1. event login
// 2. event logout
class BlocEventLogin extends BlocEvent {
  BlocEventLogin(this.email, this.password);
  final String email;
  final String password;
}

class BlocEventLogout extends BlocEvent {}
