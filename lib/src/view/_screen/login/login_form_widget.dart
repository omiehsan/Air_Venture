import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../utils/widgets/button/elevated_button_widget.dart';
import '../forget_password/buildshowmodalbottomsheet.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.person_outline_outlined,
                    color: Colors.black54,
                  ),
                  hintText: "Email",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none),
                  fillColor: Colors.white60,
                  filled: true),
            ),
            const SizedBox(
              height: 15,
            ),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.fingerprint),
                hintText: "Password",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide.none),
                fillColor: Colors.white60,
                filled: true,
                suffixIcon: const IconButton(
                  onPressed: null,
                  icon: Icon(Icons.remove_red_eye),
                ),
              ),
            ),
            SizedBox(),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  ForgetPasswordScreen.buildShowModalBottomSheet(context);
                },
                child: Text("Forget Password?"),
              ),
            ),
            SizedBox(),
            ButtonWidget(
              title: 'Sign In',
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
