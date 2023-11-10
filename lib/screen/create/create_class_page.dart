import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:tour_list/common/widget/text_widget.dart';
import 'package:tour_list/l10n/app_localization.dart';
import 'package:permission_handler/permission_handler.dart' as per;

class CreateClassPage extends StatefulWidget {
  const CreateClassPage({super.key});

  @override
  State<CreateClassPage> createState() => _CreateClassPageState();
}

class _CreateClassPageState extends State<CreateClassPage> {
  String themaText = '';
  String regionText = '';
  String trText = '';
  late GoogleMapController mapController;
  LatLng _center = const LatLng(45.521563, -122.677433);
  LatLng markerLocation = const LatLng(45.521563, -122.677433);
  Location location = new Location();
  late LocationData _locationData;
  bool isMoving = true;

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    updateLocation();
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
        return;
      }
    });
  }

  @override
  void initState() {
    super.initState();
  }

  Future<void> updateLocation() async {
    _locationData = await location.getLocation();
    setState(() {
      _center = LatLng(_locationData.latitude!, _locationData.longitude!);
    });
    mapController.moveCamera(CameraUpdate.newLatLng(_center));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextWidget(
          title: AppLocalization.of(context).createKClass,
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 50,
                      child:
                          TextWidget(title: AppLocalization.of(context).title),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: AppLocalization.of(context).title,
                          hintStyle: const TextStyle(
                            fontSize: 16,
                            fontFamily: 'NotoSansKR',
                            color: Colors.grey,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
                const Divider(),
                Row(
                  children: [
                    SizedBox(
                      width: 50,
                      child:
                          TextWidget(title: AppLocalization.of(context).thema),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        showThmae();
                      },
                      child: TextWidget(
                        title: themaText == ''
                            ? AppLocalization.of(context).pleaseChooseSomething
                            : themaText,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                const Divider(),
                Row(
                  children: [
                    SizedBox(
                      width: 50,
                      child:
                          TextWidget(title: AppLocalization.of(context).region),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 250,
                      child: InkWell(
                        onTap: () {
                          showRegion();
                        },
                        child: TextWidget(
                          title: regionText == ''
                              ? AppLocalization.of(context)
                                  .pleaseChooseSomething
                              : regionText,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ],
                ),
                const Divider(),
                Row(
                  children: [
                    SizedBox(
                      width: 50,
                      child: TextWidget(
                        title: AppLocalization.of(context).transportation,
                        fontSize: 10,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 250,
                      child: InkWell(
                        onTap: () {
                          showCars();
                        },
                        child: TextWidget(
                          title: trText == ''
                              ? AppLocalization.of(context)
                                  .pleaseChooseSomething
                              : trText,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ],
                ),
                const Divider(),
                Row(
                  children: [
                    SizedBox(
                      width: 50,
                      child: TextWidget(
                        title: AppLocalization.of(context).date,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.datetime,
                        decoration: InputDecoration(
                          hintText: AppLocalization.of(context).date,
                          hintStyle: const TextStyle(
                            fontSize: 16,
                            fontFamily: 'NotoSansKR',
                            color: Colors.grey,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
                const Divider(),
                Row(
                  children: [
                    SizedBox(
                      width: 50,
                      child: TextWidget(
                        title: AppLocalization.of(context).price,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: AppLocalization.of(context).price,
                          hintStyle: const TextStyle(
                            fontSize: 16,
                            fontFamily: 'NotoSansKR',
                            color: Colors.grey,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
                const Divider(),
                Row(
                  children: [
                    SizedBox(
                      width: 50,
                      child: TextWidget(
                        title: AppLocalization.of(context).description,
                        fontSize: 10,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextField(
                        maxLines: 10,
                        decoration: InputDecoration(
                          hintText: AppLocalization.of(context).description,
                          hintStyle: const TextStyle(
                            fontSize: 16,
                            fontFamily: 'NotoSansKR',
                            color: Colors.grey,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
                const Divider(),
                Row(
                  children: [
                    SizedBox(
                      width: 50,
                      child: TextWidget(
                        title: AppLocalization.of(context).tags,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: AppLocalization.of(context).tags,
                          hintStyle: const TextStyle(
                            fontSize: 16,
                            fontFamily: 'NotoSansKR',
                            color: Colors.grey,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
                const Divider(),
                Row(
                  children: [
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.greenAccent),
                      child: InkWell(
                        child: TextWidget(
                          title: AppLocalization.of(context).register,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> showRegion() async {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(4.0),
              ),
            ),
            content: StatefulBuilder(builder: (
              BuildContext context,
              StateSetter setState,
            ) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextWidget(
                    title: AppLocalization.of(context).region,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                  const SizedBox(
                    height: 30,
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
                      onCameraMove: (CameraPosition position) {
                        setState(() {
                          markerLocation = position.target;
                        });
                      },
                      markers: {
                        Marker(
                            markerId: MarkerId('Now'),
                            position: markerLocation,
                            onTap: () {
                              Navigator.pop(context);
                            })
                      },
                    ),
                  ),
                ],
              );
            }),
          );
        }).then((value) => setState(() {
          regionText = markerLocation.toString();
        }));
  }

  Future<void> showThmae() async {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(4.0),
              ),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextWidget(
                  title: AppLocalization.of(context).thema,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    themaText = 'K-FOOD';
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: 100,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text(
                        'K-FOOD',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    themaText = 'K-DRAMA';
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: 100,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text(
                        'K-DRAMA',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    themaText = 'K-POP';
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: 100,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text(
                        'K-POP',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }).then((value) => setState(() {}));
  }

  Future<void> showCars() async {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(4.0),
              ),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextWidget(
                  title: AppLocalization.of(context).transportation,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    trText = AppLocalization.of(context).taxi;
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: 100,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        AppLocalization.of(context).taxi,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    trText = AppLocalization.of(context).bus;
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: 100,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        AppLocalization.of(context).bus,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    trText = AppLocalization.of(context).rentalCar;
                    Navigator.pop(context);
                  },
                  child: Container(
                    width: 100,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        AppLocalization.of(context).rentalCar,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }).then((value) => setState(() {}));
  }
}
