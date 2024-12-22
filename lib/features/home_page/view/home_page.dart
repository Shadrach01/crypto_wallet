import 'package:flutter/material.dart';

import 'home_page_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: HomePageWidgets(),
    );
  }
}
