import 'dart:ui';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:kpostal/kpostal.dart';
import 'package:location/location.dart';
import 'package:permission_handler/permission_handler.dart' as per;
import 'package:tour_list/base_di.dart';
import 'package:tour_list/firebase_manager.dart';
import 'package:tour_list/google_auth.dart';
import 'package:tour_list/l10n/app_localization.dart';
import 'package:tour_list/screen/register_page.dart';

import 'firebase_options.dart';

AppLocalizationDelegate initLocale(String initLocale) {
  Locale locale = window.locale;
  if (initLocale == '') {
    locale = window.locale;
  } else if (initLocale == 'ko_KR') {
    locale = const Locale('ko', 'KR');
  } else if (initLocale == 'en_US') {
    locale = const Locale('en', 'US');
  } else {
    locale = const Locale('en', 'US');
  }
  AppLocalization.load(locale);
  return AppLocalizationDelegate(locale);
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  await firebaseManager.initApp();
  final AppLocalizationDelegate localeOverrideDelegate =
      initLocale(await getIt<FlutterSecureStorage>().read(key: 'locale') ?? '');
  runApp(MyApp(
    localeOverrideDelegate: localeOverrideDelegate,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.localeOverrideDelegate});

  final AppLocalizationDelegate localeOverrideDelegate;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      theme: ThemeData(
        useMaterial3: true,
      ),
      locale: localeOverrideDelegate.overriddenLocale,
      localizationsDelegates: <LocalizationsDelegate<dynamic>>[
        localeOverrideDelegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      home: const RegisterPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late GoogleMapController mapController;

  LatLng _center = const LatLng(45.521563, -122.677433);
  Location location = new Location();
  late LocationData _locationData;

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  Future<void> permission() async {
    final statuses = await [
      per.Permission.storage,
      per.Permission.location,
    ].request();

    _locationData = await location.getLocation();
    _center = LatLng(_locationData.latitude!, _locationData.longitude!);

    statuses.forEach((per.Permission key, per.PermissionStatus value) {
      /// 거부를 여러번 한 후 앱 재실행인 경우에는 직접 앱 권한설정 화면으로 보내줘야 합니다. ( 필수 권한인 저장공간 권한만 확인 )
      if (key == per.Permission.storage &&
              value == per.PermissionStatus.permanentlyDenied ||
          key == per.Permission.location &&
              value == per.PermissionStatus.permanentlyDenied) {
        // showConfirmDialog(
        //   contentString: '여러번 거부하셨기 때문에 \n앱 설정에서 직접 변경하셔야 합니다.'.tr,
        //   positiveButtonText: '앱 설정 열기'.tr,
        //   negativeButtonText: '취소'.tr,
        //   positiveButtonCallback: () => openAppSettings(),
        //   negativeButtonCallback: () =>
        //       showNegativeToast('필수 접근 권한 동의를 해주셔야 이용 가능합니다.'),
        // );
        return;
      }
    });
  }

  @override
  void initState() {
    permission();

    super.initState();
  }

  Future<void> updateLocation() async {
    _locationData = await location.getLocation();
    print(_locationData.latitude);
    print(_locationData.longitude);
    setState(() {
      _center = LatLng(_locationData.latitude!, _locationData.longitude!);
    });
    mapController.moveCamera(CameraUpdate.newLatLng(_center));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            Center(
              child: InkWell(
                child: Text('123'),
                onTap: () {
                  googleAuth();
                },
              ),
            ),
            SizedBox(
              width: 350,
              height: 350,
              child: GoogleMap(
                myLocationEnabled: true,
                myLocationButtonEnabled: true,
                onMapCreated: _onMapCreated,
                initialCameraPosition: CameraPosition(
                  target: _center,
                  zoom: 11.0,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            InkWell(
              child: Text('현재 위치 표기'),
              onTap: () {
                updateLocation();
              },
            ),
            const SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () async {
                Kpostal result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => KpostalView(
                              useLocalServer: true, // default is false
                              localPort: 8080, // default is 8080
                              kakaoKey: '6b14bab7883c90ac7eb345ce2d4813bb',
                            )));
                print(result.address);
              },
              child: Text('Search!'),
            ),
          ],
        ),
      ),
    );
  }

  Widget test() {
    return KpostalView(
      useLocalServer: true, // default is false
      localPort: 8080, // default is 8080
      kakaoKey: '6b14bab7883c90ac7eb345ce2d4813bb',
      // callback: ...
    );
  }
}
