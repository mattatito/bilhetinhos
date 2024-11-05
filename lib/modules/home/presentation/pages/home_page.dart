import 'package:auto_size_text/auto_size_text.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var currentUser = "";

  @override
  void initState() {
    setState(() {
      currentUser =
          FirebaseAuth.instance.currentUser?.displayName ?? "sem nome";
    });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AutoSizeText('Olá, $currentUser', style: const TextStyle(fontSize: 20), textAlign: TextAlign.center,),
      ),
    );
  }
}
