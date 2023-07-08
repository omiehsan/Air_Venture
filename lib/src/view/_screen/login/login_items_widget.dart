import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginItemWidget extends StatelessWidget {
  const LoginItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0,bottom: 45.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.2,
                  child: Divider(thickness: 2),
                ),
                const Text("Or continue with"),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.2,
                  child: Divider(thickness: 2),
                )
              ],
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.all(10),
                  side: BorderSide.none,
                  backgroundColor: Colors.white60,
                ),
                child: Container(

                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.12,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Transform.scale(
                    scale: 2,
                    child: Image.asset(
                      "assets/images/icon/google_logo.png",
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 35,),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.all(10),
                  side: BorderSide.none,
                  backgroundColor: Colors.white60,
                ),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.12,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Transform.scale(
                    scale: 1.65,
                    child: Image.asset(
                      "assets/images/icon/apple_logo.png",
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}