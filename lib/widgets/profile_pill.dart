import 'package:baker_haven/screens/profile/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePill extends StatefulWidget {
  const ProfilePill({super.key});

  @override
  State<ProfilePill> createState() => _ProfilePillState();
}

class _ProfilePillState extends State<ProfilePill> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 225,
      right: 10,
      child: SizedBox(
        width: 160,
        height: 100,
        child: TextButton(
          style: ButtonStyle(
            overlayColor: WidgetStateProperty.all(Colors.transparent),
            splashFactory: NoSplash.splashFactory,
          ),
          child: AnimatedScale(
            scale: _isHovering ? 1.08 : 1.0,
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeInOut,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  'assets/icons/profile_tab_asset.png',
                  fit: BoxFit.fill,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24),
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
          onHover: (hovering) {
            setState(() {
              _isHovering = hovering;
            });
          },
          onPressed: () {
            setState(() {
              _isHovering = true;
            });
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ProfilePage()),
            );
          },
        ),
      ),
    );
  }
}
