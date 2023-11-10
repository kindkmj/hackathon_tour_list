import 'package:flutter/material.dart';
import 'package:tour_list/base_di.dart';
import 'package:tour_list/common/widget/text_widget.dart';
import 'package:tour_list/cubit/user/tour_user_cubit.dart';
import 'package:tour_list/google_auth.dart';
import 'package:tour_list/l10n/app_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tour_list/screen/create/create_class_page.dart';
import 'package:tour_list/screen/join/join_class_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              BlocBuilder<TourUserCubit, TourUserState>(
                bloc: getIt<TourUserCubit>(),
                builder: (BuildContext context, TourUserState state) {
                  if (state is TourUserInitial ||
                      state is TourUserLoginFailureState) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 150,
                        ),
                        TextWidget(
                          title: AppLocalization.of(context).yourTrip,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                        const SizedBox(
                          height: 100,
                        ),
                        InkWell(
                          onTap: () {
                            googleAuth();
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 48,
                                height: 48,
                                child: Image.asset('assets/icon_google.png'),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              TextWidget(
                                title: AppLocalization.of(context).googleStart,
                                fontSize: 16,
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  } else {
                    return Center(
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 150,
                          ),
                          TextWidget(
                            title: AppLocalization.of(context).yourTrip,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                          const SizedBox(
                            height: 100,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.greenAccent,
                            ),
                            padding: const EdgeInsets.all(10),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const CreateClassPage()));
                              },
                              child: TextWidget(
                                title: AppLocalization.of(context).createKClass,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.greenAccent,
                            ),
                            padding: const EdgeInsets.all(10),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const JoinClassPage()));
                              },
                              child: TextWidget(
                                title: AppLocalization.of(context).joinKClass,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
