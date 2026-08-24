import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HotlesPage(),
    );
  }
}

class HotlesPage extends StatelessWidget {
  const HotlesPage({super.key});

  final List<String> names = const [
    'Sharm El Shikh',
    'Alexandria',
    'Dahab',
    'Marasy',
    'Nile',
    'Aswan',
    'Marsa Alam',
    'Hurghada',
  ];

  final List<String> images = const [
    'assets/sharm.jpg',
    'assets/alex.png',
    'assets/dahab.jpg',
    'assets/marasy.jpg',
    'assets/nile.jpg',
    'assets/aswan.jpg',
    'assets/marsa alam.jpg',
    'assets/hurghada.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff4f4f4),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 55,
                decoration: BoxDecoration(
                  color: const Color(0xff244b8f),
                  borderRadius: BorderRadius.circular(16),
                ),
                alignment: Alignment.center,
                child: const Text(
                  'Available Hotels',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(height: 12),

              Expanded(
                child: GridView.builder(
                  itemCount: names.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.78,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      clipBehavior: Clip.antiAlias, 
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: Image.asset(
                              images[index],
                              fit: BoxFit.cover,
                            ),
                          ),

                          Positioned(
                            bottom: 8,
                            left: 8,
                            right: 8,
                            child: Container(
                              height: 32,
                              decoration: BoxDecoration(
                                color: const Color(0xff244b8f), 
                                borderRadius: BorderRadius.circular(16), 
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                names[index],
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
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