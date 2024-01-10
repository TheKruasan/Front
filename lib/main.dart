import 'package:flutter/material.dart';
import 'package:flutter_application_1/desktop/pages/password_page.dart';
import 'package:flutter_application_1/desktop/pages/registration.dart';
import 'package:flutter_application_1/desktop/pages/remote_access.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
     home:RemoteAccess(),
    );
  }
}
