import 'package:banking_interface/components/sections/account_actions.dart';
import 'package:banking_interface/components/sections/account_points.dart';
import 'package:banking_interface/components/sections/recent_activity.dart';
import 'package:flutter/material.dart';

import '../components/sections/header.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const <Widget>[
            Header(),
            RecentActivity(),
            AccountActions(),
            AccountPoints(),
          ],
        ),
      ),
    );
  }
}
