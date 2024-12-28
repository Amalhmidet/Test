import 'package:testt/models/HomeModel.dart';

class CategoriesViewModel {
  final List<Category> categories = [
    Category(
      name: "Accounting",
      imageUrl: "assets/image3.png",
      courseCount: 20,
    ),
    Category(
      name: "Biology",
      imageUrl: "assets/image4.png",
      courseCount: 15,
    ),
    Category(
      name: "Photography",
      imageUrl: "assets/image5.png",
      courseCount: 25,
    ),
    Category(
      name: "Marketing",
      imageUrl: "assets/image6.png",
      courseCount: 18,
    ),
    // Ajouter un nom et un nombre de cours pour les catégories suivantes
    Category(
      name: "Physics", // Par défaut si aucun nom n'était spécifié
      imageUrl: "assets/image7.png",
      courseCount: 10, // Valeur par défaut
    ),
    Category(
      name: "Chemistry", // Par défaut
      imageUrl: "assets/image8.png",
      courseCount: 12, // Valeur par défaut
    ),
  ];
}
