import 'package:eletrohome/routes/app_routes.dart';
import 'package:eletrohome/views/carteira.dart';
import 'package:eletrohome/views/credit_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'EletroHome',
        theme: ThemeData(
          fontFamily: 'Poppins',
          primarySwatch: Colors.blue,
        ),
        routes: {
          AppRoutes.CREDIT_CARD: (_) => CreditCardPage(),
          AppRoutes.CARTEIRA: (_) => Carteira(),
        });
  }
}
