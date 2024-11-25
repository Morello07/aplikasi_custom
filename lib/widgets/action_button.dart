import 'package:flutter/material.dart';

class ActionButtons extends StatelessWidget {
  final List<Map<String, dynamic>> actions = [
    {'icon': Icons.phone_android, 'label': 'Pulsa'},
    {'icon': Icons.wifi, 'label': 'Paket Data'},
    {'icon': Icons.flash_on, 'label': 'PLN'},
    {'icon': Icons.account_balance, 'label': 'Pajak PBB'},
    {'icon': Icons.tv, 'label': 'Internet & TV Kabel'},
    {'icon': Icons.umbrella, 'label': 'Proteksi'},
    {'icon': Icons.trending_up, 'label': 'Invest'},
    {'icon': Icons.local_offer, 'label': 'Deals'},
  ];

  final List<String> images = [
  'assets/OVO1.jpg',
  'assets/OVO1.jpg',
  'assets/OVO1.jpg',
  'assets/OVO1.jpg',
];


  final int selectedTabIndex = 0; // Simpan index tab yang dipilih (misal Pilihan)

  // Helper untuk Tab Bar Item
  Widget _buildTabBarItem(String label, bool isSelected) {
    return Container(
      decoration: isSelected
          ? BoxDecoration(
              color: Colors.purpleAccent.withOpacity(0.3), // Warna transparan
              borderRadius: BorderRadius.circular(20), // Hampir bulat
            )
          : null, // Tidak ada background untuk tab yang tidak dipilih
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: isSelected ? Colors.purple : Colors.grey, // Warna teks
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        elevation: 4,
        clipBehavior: Clip.hardEdge, // Pastikan gambar tidak terpotong
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Tab Bar
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    _buildTabBarItem('Pilihan', 0 == selectedTabIndex),
                    const SizedBox(width: 20),
                    _buildTabBarItem('Tagihan', 1 == selectedTabIndex),
                    const SizedBox(width: 20),
                    _buildTabBarItem('Asuransi', 2 == selectedTabIndex),
                  ],
                ),
              ),
              // Grid Layout for Action Buttons
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                  ),
                  itemCount: actions.length,
                  itemBuilder: (context, index) {
                    final action = actions[index];
                    return Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.purple,
                          child: Icon(action['icon'], color: Colors.white),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          action['label'],
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 12),
                        ),
                      ],
                    );
                  },
                ),
              ),
              // Scrollable Images Section with Scroll Indicator Line
              SizedBox(
                height: 150,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: images.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          images[index],
                          fit: BoxFit.cover,
                          width: 300,  // Tentukan lebar gambar
                          height: 150, // Tentukan tinggi gambar
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
