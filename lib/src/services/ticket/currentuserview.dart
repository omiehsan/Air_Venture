import 'package:flutter/material.dart';
import 'package:hawai_jubu/src/services/ticket/currentuserwidget.dart';

class CurrentUserView extends StatelessWidget {
  const CurrentUserView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(child: CurrentUserWidget()),
    );
  }
}
