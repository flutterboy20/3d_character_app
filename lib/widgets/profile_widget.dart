import 'package:flutter/material.dart';

import 'circle_clipper.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Stack(
      alignment: Alignment.center,
      children: [
        ClipPath(
          clipper: CircleClipper(),
          child: Container(
            color: Colors.white,
          ),
        ),
        Positioned(
          bottom: 30,
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  minimumSize: Size(size.width * 0.9, 50),
                ),
                child: const Text(
                  "See weekly activity",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  minimumSize: Size(size.width * 0.9, 50),
                ),
                child: const Row(
                  children: [
                    Text(
                      "Logout",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Icon(
                      Icons.logout,
                      color: Colors.white,
                      size: 24,
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
