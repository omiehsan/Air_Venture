import 'package:flutter/material.dart';
import '../../../utils/widgets/form/bottom_form_widget.dart';
import 'login_form_widget.dart';
import 'login_header_widget.dart';
import 'login_items_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.brown.shade100,
        body: SingleChildScrollView(
          child: Container(
             padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: const LoginHeaderWidgets(),
                ),
                LoginForm(),
                LoginItemWidget(),
                BottomWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


