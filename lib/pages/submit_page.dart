import 'package:flutter/material.dart';

class SubmitPage extends StatelessWidget {
  const SubmitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.arrow_back),
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
                "Step 2 / 2",
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
                      color: Colors.grey.shade400,
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                  Container(
                    height: 2,
                    width: 180,
                    decoration: BoxDecoration(
                      color: Color(0xFF713100),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Text(
                'Give info about the issue you\'re facing.',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Short title',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 8),
              TextField(
                maxLines: 1,
                decoration: InputDecoration(
                  hintText: 'e.g. No one is giving Luxor pens',
                  hintTextDirection: TextDirection.ltr,
                  hintStyle: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 14,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Briefly explain your issue',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 8),
              TextField(
                maxLines: 5,
                decoration: InputDecoration(
                  hintText: 'Tell us exactly what\'s wrong so it can be fixed faster.',
                  hintTextDirection: TextDirection.ltr,
                  hintStyle: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 14,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              GestureDetector(
                onTap: () {},
                child: Row(
                  children: [
                    Icon(Icons.add, color: Color(0xFF713100)),
                    const SizedBox(width: 8),
                    Text(
                      'Add photos',
                      style: TextStyle(
                        color: Color(0xFF713100),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SizedBox(),
              ),
              const Divider(thickness: 0.7),
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
