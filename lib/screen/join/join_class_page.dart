import 'package:flutter/material.dart';
import 'package:tour_list/common/widget/text_widget.dart';
import 'package:tour_list/l10n/app_localization.dart';

class JoinClassPage extends StatefulWidget {
  const JoinClassPage({super.key});

  @override
  State<JoinClassPage> createState() => _JoinClassPageState();
}

class _JoinClassPageState extends State<JoinClassPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextWidget(
          title: AppLocalization.of(context).joinKClass,
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 1),
                margin:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: BoxDecoration(border: Border.all()),
                child: Row(
                  children: [
                    SizedBox(
                      width: 280,
                      child: TextFormField(
                        decoration:
                            const InputDecoration(border: InputBorder.none),
                      ),
                    ),
                    InkWell(
                        onTap: () {
                          print(1);
                        },
                        child: const Icon(Icons.search)),
                  ],
                ),
              ),
                const SizedBox(
                  height: 15,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
