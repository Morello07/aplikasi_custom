import 'package:desain_custom/widgets/bottom.dart';
import 'package:flutter/material.dart';
import '../widgets/card_saldo.dart';
import '../widgets/action_button.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('OVO',
        style: TextStyle(color: Colors.purple,
        fontWeight: FontWeight.bold),) ,
        actions: [
         IconButton(
          icon: Icon(Icons.notifications, 
         color: Colors.purple),
            onPressed: () {},
)

        ],
      ),
    body: SingleChildScrollView(
      child: Column(
         crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         const SizedBox(height: 20),
         CardSaldo(),
         const SizedBox(height: 20),
         ActionButtons(),
         const SizedBox(height: 20),
          ],
        ),
      ),
       bottomNavigationBar: MenuBottom(0),
    );
  }
}