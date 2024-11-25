import 'package:flutter/material.dart';

class MenuBottom extends StatefulWidget {
  final int activePage;
  MenuBottom(this.activePage, {super.key});

  @override
  State<MenuBottom> createState() => _MenuBottomState();
}

class _MenuBottomState extends State<MenuBottom> {
  void getLink(index) {
    if (index == 0) {
      Navigator.pushReplacementNamed(context, '/home');
    } else if (index == 1) {
      Navigator.pushReplacementNamed(context, '/finance');
    } else if (index == 2) {
      Navigator.pushReplacementNamed(context, '/payment');
    } else if (index == 3) {
      Navigator.pushReplacementNamed(context, '/notification');
    } else if (index == 4) {
      Navigator.pushReplacementNamed(context, '/profile');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: Colors.purple,
          unselectedItemColor: Colors.grey,
          currentIndex: widget.activePage,
          onTap: getLink,
          type: BottomNavigationBarType.fixed,
          items: [
            const BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.money_sharp),
              label: 'Finance',
            ),
            // Hapus BottomNavigationBarItem untuk tombol Pay
            const BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Inbox',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
        // Custom Icon Tengah (Pay)
        Positioned(
          top: -30, // Mengatur posisi agar keluar dari batas bottom navigation
          left: MediaQuery.of(context).size.width / 2 - 30,
          child: GestureDetector(
            onTap: () => getLink(2),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.purple,
                  child: const Icon(
                    Icons.qr_code_scanner,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  'Pay',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.purple,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
