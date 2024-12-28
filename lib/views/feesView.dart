import 'package:flutter/material.dart';
import 'package:testt/viewmodels/fees_viewm.dart';
import 'package:testt/views/homeView.dart';

class FeesView extends StatelessWidget {
  final FeesViewModel viewModel = FeesViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: -50,
              bottom: -20,
              child: Image.asset(
                'assets/image2.png',
                height: 560,
                width: 513,
                fit: BoxFit.cover,
              ),
            ),
            // Contenu principal au-dessus de l'image
            Padding(
              padding: const EdgeInsets.all(25.15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        viewModel.title,
                        style: TextStyle(
                            fontSize: 32, fontWeight: FontWeight.bold),
                      ),
                      // Bouton "Skip"
                      TextButton(
                        onPressed: () {
                          // Action du bouton "Skip"
                        },
                        child: Text(
                          "Skip",
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Text(
                    viewModel.description,
                    style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                  ),
                  Spacer(),
                  // Bouton "Next"
                 ElevatedButton(
                    onPressed: () {
                      // Naviguer vers HomePage
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CategoriesView(),
                        ),
                      );
                    }, style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      minimumSize: Size(double.infinity, 50),
                    ),
                    child: Text('Next'),)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
