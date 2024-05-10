import 'package:flutter/material.dart';
import 'package:trivago/constants.dart';

import 'city_container.dart';
import 'helper.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.amber,
        body: ListView(
          children:
              buildCityRows(cities),

        ),
      ),
    );
  }
}
