import 'package:flutter/material.dart';

class WalkingBenefitsWidget extends StatelessWidget {
  const WalkingBenefitsWidget({
    super.key,
    required this.height,
    required this.walkingBenefits,
  });

  final double height;
  final List<String> walkingBenefits;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.fromLTRB(12, height * 0.8, 12, 100),
      itemCount: walkingBenefits.length,
      itemBuilder: (context, index) => Card(
        color: Colors.red.shade400,
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/doctor_1.png',
                fit: BoxFit.cover,
                width: 70,
                height: 70,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        walkingBenefits[index],
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      const Text(
                        'Dr Dre.',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 32,
                width: 32,
                child: Image.asset(
                  'assets/location_icon.png',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
