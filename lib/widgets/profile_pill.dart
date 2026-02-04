import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePill extends StatelessWidget {
  const ProfilePill({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 12,
      right: 1,
      child: SizedBox(
        width: 125,
        height: 150,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              'assets/icons/profile_tab_asset.png',
              fit: BoxFit.contain,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Text(
                'username45',
                style: GoogleFonts.handjet(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink.shade900,
                ),
                textAlign: TextAlign.right,
                maxLines: 1,
                overflow: TextOverflow.fade,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
