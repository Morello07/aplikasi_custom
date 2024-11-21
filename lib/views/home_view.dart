import 'package:flutter/material.dart';
import '../widgets/balance_widget.dart';
import '../widgets/action_button.dart';
import '../widgets/service_category.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text('OVO') ,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            BalanceCard(),
            const SizedBox(height: 20),
            ActionButtons(),
            const SizedBox(height: 20),
            ServiceCategory(),
          ],
        ),
      ),
    );
  }
}
