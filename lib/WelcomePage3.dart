import 'package:easy_localization/easy_localization.dart';
import 'package:ShoppingProject/Login.dart';
import 'package:ShoppingProject/Signup.dart';
import 'package:ShoppingProject/WelcomePage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Welcomepage3 extends StatefulWidget {
  const Welcomepage3({super.key});

  @override
  State<Welcomepage3> createState() => _Welcomepage3State();
}

class _Welcomepage3State extends State<Welcomepage3> {
  bool _hoverAsset = false;
  bool _hoverNetwork = false;
  bool _hoverSignUp = false;
  bool _hoverSignIn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (context) => const WelcomePage(),
                ),
              );
            },
            icon: const Icon(
              Icons.arrow_back,
              size: 30,
            )),
        title: Text(
          "✨ Discover & Shop",
          style: GoogleFonts.suwannaphum(
            textStyle: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(
                  "ShopCraft",
                  style: GoogleFonts.suwannaphum(
                    textStyle: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  tr("Shopping_heading_message"),
                  style: GoogleFonts.suwannaphum(
                    textStyle: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),

            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MouseRegion(
                  onEnter: (_) => setState(() => _hoverAsset = true),
                  onExit: (_) => setState(() => _hoverAsset = false),
                  child: AnimatedScale(
                    scale: _hoverAsset ? 1.1 : 1.0,
                    duration: const Duration(milliseconds: 200),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.asset(
                        'assets/Shopping_app_image2.png',
                        width: 150.0,
                        height: 150.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20.0),
                MouseRegion(
                  onEnter: (_) => setState(() => _hoverNetwork = true),
                  onExit: (_) => setState(() => _hoverNetwork = false),
                  child: AnimatedScale(
                    scale: _hoverNetwork ? 1.1 : 1.0,
                    duration: const Duration(milliseconds: 200),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.network(
                        'https://picsum.photos/250?image=9',
                        width: 150.0,
                        height: 150.0,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return const Icon(
                            Icons.error_outline,
                            size: 100.0,
                            color: Colors.red,
                          );
                        },
                        loadingBuilder: (context, child, loadingProgress) {
                          if (loadingProgress == null) return child;
                          return const SizedBox(
                            width: 100.0,
                            height: 100.0,
                            child: CircularProgressIndicator(),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 50),
            MouseRegion(
              onEnter: (_) => setState(() => _hoverSignUp = true),
              onExit: (_) => setState(() => _hoverSignUp = false),
              child: AnimatedScale(
                scale: _hoverSignUp ? 1.05 : 1.0,
                duration: const Duration(milliseconds: 200),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (context) => const Signup(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                    ),
                    child: Text(
                      tr("sign_up_message"),
                      style:  GoogleFonts.suwannaphum(
                        textStyle: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20.0),

            MouseRegion(
              onEnter: (_) => setState(() => _hoverSignIn = true),
              onExit: (_) => setState(() => _hoverSignIn = false),
              child: AnimatedScale(
                scale: _hoverSignIn ? 1.05 : 1.0,
                duration: const Duration(milliseconds: 200),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (context) => const Login(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                    ),
                    child: Text(
                      tr("log_in_message"),
                      style:  GoogleFonts.suwannaphum(
                        textStyle: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
