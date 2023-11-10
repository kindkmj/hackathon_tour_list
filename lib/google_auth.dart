import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:tour_list/base_di.dart';
import 'package:tour_list/cubit/model/user/tour_user.dart';
import 'package:tour_list/cubit/user/tour_user_cubit.dart';
import 'package:tour_list/firebase_manager.dart';

final GoogleSignIn _googleSignIn = GoogleSignIn(
  scopes: <String>[
    'email',
  ],
);

Future<void> googleAuth() async {
  String uid = await getIt<FlutterSecureStorage>().read(key: 'uid') ?? '';
  if (uid != '') {
    String name = await getIt<FlutterSecureStorage>().read(key: 'name') ?? '';
    String email = await getIt<FlutterSecureStorage>().read(key: 'email') ?? '';

    getIt<TourUserCubit>()
        .loginUser(TourUser(email: email, uid: uid, name: name));
    return;
  }

  late final User user;

  final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
  GoogleSignInAuthentication googleAuth;

  try {
    googleAuth = await googleUser!.authentication;
  } catch (e) {
    getIt<TourUserCubit>().failUser();
    return;
  }

  try {
    final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken, idToken: googleAuth.idToken);
    user =
        (await firebaseManager.firebaseAuth!.signInWithCredential(credential))
            .user!;
  } catch (e) {
    debugPrint(e.toString());
    getIt<TourUserCubit>().failUser();
    return;
  }
  getIt<FlutterSecureStorage>().write(key: 'uid', value: user.uid);
  getIt<FlutterSecureStorage>()
      .write(key: 'name', value: user.displayName ?? 'none');
  getIt<FlutterSecureStorage>().write(key: 'email', value: user.email);

  getIt<TourUserCubit>().loginUser(TourUser(
      email: user.email ?? 'none@gmail.com',
      uid: user.uid,
      name: user.displayName ?? 'none'));
}
