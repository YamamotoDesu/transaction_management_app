import 'package:flutter/material.dart';

class HomeProfileTab extends StatefulWidget {
  const HomeProfileTab({super.key});

  @override
  State<HomeProfileTab> createState() => _HomeProfileTabState();
}

class _HomeProfileTabState extends State<HomeProfileTab> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Profile")
    );
  }
}