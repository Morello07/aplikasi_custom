import 'package:flutter/material.dart';

class ActionButtons extends StatelessWidget {
  final List<Map<String, dynamic>> actions = [
    {'icon': Icons.qr_code, 'label': 'Bayar'},
    {'icon': Icons.add, 'label': 'Top Up'},
    {'icon': Icons.send, 'label': 'Transfer'},
    {'icon': Icons.history, 'label': 'History'},
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: actions.map((action) {
          return Column(
            children: [
              CircleAvatar(
                backgroundColor: Colors.blue,
                child: Icon(action['icon'], color: Colors.white),
              ),
              const SizedBox(height: 8),
              Text(action['label']),
            ],
          );
        }).toList(),
      ),
    );
  }
}
