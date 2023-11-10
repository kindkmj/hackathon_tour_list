part of 'tour_user_cubit.dart';

@immutable
abstract class TourUserState {}

class TourUserInitial extends TourUserState {}

class TourUserLoginSuccessState extends TourUserState {}
class TourUserLoginFailureState extends TourUserState {}