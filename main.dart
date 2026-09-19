// Flutter: Farrukhabad Express App Code
// Dependencies: provider, lucide_icons (or custom icon packs)

import 'package:flutter/material.dart';

void main() => runApp(const FarrukhabadExpressApp());

class FarrukhabadExpressApp extends StatelessWidget {
  const FarrukhabadExpressApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Farrukhabad Express',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        scaffoldBackgroundColor: const Color(0xFFF8FAFC),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedCategory = 'All';
  final List<String> categories = ['All', 'Daily Needs', 'Snacks & Drinks', 'Quick Kirana', 'Home Care'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            const Icon(Icons.location_on, color: Colors.deepOrange),
            const SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Delivering to', style: TextStyle(fontSize: 10, color: Colors.grey)),
                Text('Awas Vikas, Farrukhabad', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black)),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_bag_outlined, color: Colors.black),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Promomational Offer Card
            Container(
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(16),
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFFFF5722), Color(0xFFE65100)],
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('10 MINUTE DELIVERY', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18)),
                  SizedBox(height: 4),
                  Text('Pehle Order Par ₹50 OFF', style: TextStyle(color: Color(0xFFFFE0B2), fontSize: 13)),
                ],
              ),
            ),

            // Categories horizontal list view...
            // Product Grid Builder here...
          ],
        ),
      ),
    );
  }
}
