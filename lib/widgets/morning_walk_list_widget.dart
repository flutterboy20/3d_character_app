import 'package:flutter/material.dart';

class MorningWalkListWidget extends StatelessWidget {
  const MorningWalkListWidget({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.fromLTRB(12, height * 0.8, 12, 100),
      itemCount: 5,
      itemBuilder: (context, index) => Card(
        color: Colors.purple,
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/walking_icon.png',
                fit: BoxFit.cover,
                width: 70,
                height: 70,
              ),
              const SizedBox(
                width: 12,
              ),
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '08:24',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        'Morning walk',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '4 km in 50min',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ),
              const Icon(
                Icons.directions_walk_rounded,
                color: Colors.red,
              )
            ],
          ),
        ),
      ),
    );
  }
}
