import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:tour_list/firebase_options.dart';

class FirebaseManager {
  factory FirebaseManager() {
    return _instance;
  }

  FirebaseManager._internal();

  static final FirebaseManager _instance = FirebaseManager._internal();
  FirebaseApp? firebaseApp;
  FirebaseAuth? firebaseAuth;
  FirebaseAnalytics? analytics;
  Persistence persistence = Persistence.LOCAL;

  Future<void> initApp() async {
    firebaseApp = await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);
    firebaseAuth = FirebaseAuth.instance;
    analytics = FirebaseAnalytics.instance;
  }
}

final FirebaseManager firebaseManager = FirebaseManager();
