import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testt/views/feesView.dart';
import 'package:testt/viewmodels/onboarding_viewm.dart';

class OnboardingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<OnboardingViewModel>(context);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              // Espace en haut
              SizedBox(height: 50),
              // Image et cercle
              Stack(
                alignment: Alignment.center,
                children: [
                  // Cercle avec taille personnalisée
                  Positioned(
                     top: 296, // Déviation Y = 296
                     left: 56, // Déviation X = 56t
                    child: Container(
                      height: 188,
                      width: 188,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFE14B5A), // Couleur du cercle
                      ),
                    ),
                  ),
                  // Image centrée
                  ClipOval(
                    child: Image.asset(
                      'assets/image1.png', // Remplacez par votre image
                      fit: BoxFit.cover,
                      width: 598, // Taille de l'image
                      height: 398,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12),
              // Titre
              Text(
                "Welcome To\nLearner",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 8),
              // Description
              Text(
                "Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod tempor\nincididunt dolore magna aliqua",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                  height: 1.5,
                ),
              ),
              Spacer(),
              // Bouton
              ElevatedButton(
                onPressed: () {
                  // Naviguer vers FeesView
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FeesView()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF4E74F9), // Couleur bleue
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 15),
                  minimumSize: Size(double.infinity, 50),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Get Started",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                    SizedBox(width: 10),
                    Icon(Icons.arrow_forward, color: Colors.white, size: 20),
                  ],
                ),
              ),
              SizedBox(height: 10), // Espace en bas
            ],
          ),
        ),
      ),
    );
  }
}
