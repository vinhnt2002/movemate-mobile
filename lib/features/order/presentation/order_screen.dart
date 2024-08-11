import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

@RoutePage()
class OrderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OrderScreen Screen'),
      ),
      body: Center(
        child: Text('Welcome to OrderScreen !'),
      ),
    );
  }
}
