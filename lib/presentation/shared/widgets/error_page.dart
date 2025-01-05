import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../navigation/route_constants.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Error',
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.go(RouteConstants.home.path),
          child: const Text('Refresh'),
        ),
      ),
    );
  }
}
