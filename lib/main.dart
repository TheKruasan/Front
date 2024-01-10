import 'package:flutter/material.dart';
import 'desktop/pages/password_page.dart';
import 'desktop/pages/registration.dart';
import 'desktop/pages/remote_access.dart';

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
