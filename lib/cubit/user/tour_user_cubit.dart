import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:tour_list/cubit/model/user/tour_user.dart';

part 'tour_user_state.dart';

class TourUserCubit extends Cubit<TourUserState> {
  TourUserCubit() : super(TourUserInitial());
  TourUser tourUser = TourUser(
    uid: '',
    name: '',
    email: '',
  );

  void loginUser(TourUser user) {
    tourUser = user;
    emit(TourUserLoginSuccessState());
  }

  void failUser() {
    emit(TourUserLoginFailureState());
  }
}
