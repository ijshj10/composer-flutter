import 'package:flutter/material.dart';
import 'package:frontend/components/circuit.dart';
import 'package:frontend/components/header.dart';

import '../constants.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [Header(), SizedBox(height: defaultPadding), Circuit()],
        ),
      ),
    );
  }
}
