part of 'bloc.dart';

abstract class BlocState {}

//! state adalah kondisi
// 1. state login
// 2. state logout
// 3. state error
// 4. state loading

class BlocStateLogin extends BlocState {}

class BlocStateLogout extends BlocState {}

class BlocStateError extends BlocState {}

class BlocStateLoading extends BlocState {}
