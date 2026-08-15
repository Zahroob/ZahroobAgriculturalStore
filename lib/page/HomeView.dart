import 'package:flutter/material.dart';
import 'package:zahroobstor/pagebody/home_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(extendBodyBehindAppBar: true, body: const HomeBody());
  }
}
