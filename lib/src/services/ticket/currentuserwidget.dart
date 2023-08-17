import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class CurrentUserWidget extends StatefulWidget {
  @override
  _CurrentUserWidgetState createState() => _CurrentUserWidgetState();
}

class _CurrentUserWidgetState extends State<CurrentUserWidget> {
  User? _currentUser;

  @override
  void initState() {
    super.initState();
    _getCurrentUser();
  }

  Future<void> _getCurrentUser() async {
    User? user = FirebaseAuth.instance.currentUser;
    setState(() {
      _currentUser = user;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        // Text(
        //   _currentUser != null ? 'Logged in as:' : 'No user logged in',
        //   style: TextStyle(fontSize: 18),
        // ),
        SizedBox(height: 8),
        Text(
          _currentUser?.displayName ?? 'User',
          style: TextStyle(fontSize: 18), // Add the desired font size
        ),
        SizedBox(height: 8),
        Text(
          _currentUser?.email ?? '',
        ),
        SizedBox(height: 8),
      ],
    );
  }
}
