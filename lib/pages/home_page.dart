import 'package:flutter/material.dart';
import 'package:flutter_ui/components/my_container.dart';
import 'package:flutter_ui/pages/submit_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: ListView(
            children: [
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const IconButton(
                    onPressed: null,
                    icon: Icon(Icons.arrow_back),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Text(
                "Write your reviews",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                "Step 1 / 2",
                style: TextStyle(color: Color(0xFF713100)),
              ),
              const SizedBox(height: 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 2,
                    width: 180,
                    decoration: BoxDecoration(
                      color: Color(0xFF713100),
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                  Container(
                    height: 2,
                    width: 180,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade400,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Text(
                'Select the space you\'re facing problem in your city.',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      'Shops',
                      style: TextStyle(
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ),
                  MyContainer(
                    text: 'Electrical Shops',
                    icon: Icons.electric_meter_outlined,
                  ),
                  MyContainer(
                    text: 'Book Shops',
                    icon: Icons.bubble_chart_outlined,
                    isSelected: true,
                  ),
                  MyContainer(
                    text: 'Hardware Shops',
                    icon: Icons.water_drop_outlined,
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      'Food Area',
                      style: TextStyle(
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ),
                  MyContainer(
                    text: 'Canteens',
                    icon: Icons.hot_tub_outlined,
                  ),
                  MyContainer(
                    text: 'Juice Corner',
                    icon: Icons.coffee_outlined,
                  ),
                  MyContainer(
                    text: 'Restaurants',
                    icon: Icons.restaurant_outlined,
                  ),
                ],
              ),
              const SizedBox(height: 70),
              Divider(
                thickness: 0.7,
                color: Colors.grey.shade900,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SubmitPage(),
                    ),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.all(12),
                  padding: const EdgeInsets.all(12),
                  width: 390,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFF713100),
                    borderRadius: BorderRadius.circular(24)
                  ),
                  child: Center(
                    child: Text(
                      'Next',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
