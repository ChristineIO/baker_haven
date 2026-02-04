import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePill extends StatelessWidget {
  const ProfilePill({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 225,
      right: 10,
      child: SizedBox(
        width: 160,
        height: 100,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              'assets/icons/profile_tab_asset.png',
              fit: BoxFit.fill,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                'username45',
                style: GoogleFonts.handjet(
                  fontSize: 17,
                  fontWeight: FontWeight.w800,
                  color: Colors.pink.shade900,
                  letterSpacing: 0.8,
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
