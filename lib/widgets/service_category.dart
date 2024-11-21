import 'package:flutter/material.dart';

class ServiceCategory extends StatelessWidget {
  final List<Map<String, dynamic>> services = [
    {'icon': Icons.phone, 'label': 'Pulsa'},
    {'icon': Icons.data_usage, 'label': 'Data'},
    {'icon': Icons.receipt, 'label': 'Tagihan'},
    {'icon': Icons.movie, 'label': 'Streaming'},
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        childAspectRatio: 0.7,
      ),
      itemCount: services.length,
      itemBuilder: (context, index) {
        final service = services[index];
        return Column(
          children: [
            CircleAvatar(
              backgroundColor: Colors.purple,
              child: Icon(service['icon'], color: Colors.white),
            ),
            const SizedBox(height: 8),
            Text(service['label']),
          ],
        );
      },
    );
  }
}
