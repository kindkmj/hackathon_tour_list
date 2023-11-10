import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:tour_list/cubit/user/tour_user_cubit.dart';

final GetIt getIt = GetIt.instance;

Future<void> init() async {
  getIt.registerLazySingleton<TourUserCubit>(() => TourUserCubit());
  getIt.registerLazySingleton<FlutterSecureStorage>(
      () => const FlutterSecureStorage());
}
