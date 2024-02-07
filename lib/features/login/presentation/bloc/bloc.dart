import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';

part 'bloc_event.dart';
part 'bloc_state.dart';

class BlocBloc extends Bloc<BlocEvent, BlocState> {
  BlocBloc() : super(BlocStateLogout()) {
    FirebaseAuth auth = FirebaseAuth.instance;
    on<BlocEventLogin>(
      (event, emit) async {
        try {
          emit(BlocStateLoading());
          // proses login
          await auth.signInWithEmailAndPassword(
              email: event.email, password: event.password);
          emit(BlocStateLogin());
        } on FirebaseAuthException catch (e) {
          emit(BlocStateError());
        }
      },
    );
    on<BlocEventLogout>(
      (event, emit) async {
        try {
          emit(BlocStateLoading());
          // proses logout
          await auth.signOut();
          emit(BlocStateLogout());
        } on FirebaseAuthException catch (e) {
          emit(BlocStateError());
        }
      },
    );
  }
}
