import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:get/get.dart';
import 'package:app/controller/dashboard_controller.dart';

class DashboardScreen extends StatelessWidget {
  // Classe DashboardScreen étendant StatelessWidget, ce qui signifie que l'UI de cette page est statique
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // La méthode build est obligatoire dans un widget et est responsable de générer l'UI
    return GetBuilder<DashboardController>(
      // Utilisation de GetX pour obtenir le controller 'DashboardController' afin de gérer l'état de la page
      builder: (controller) => Scaffold(
        // Scaffold est la structure de base pour un écran avec appbar, body, bottom navigation, etc.
        body: SafeArea(
          // SafeArea garantit que le contenu n'empiète pas sur les zones réservées par l'OS (comme les barres de notification)
          child: IndexedStack(
            // IndexedStack permet d'empiler les widgets, mais d'afficher uniquement celui correspondant à 'index'
            index: controller.tabIndex, // Sélectionne le widget à afficher en fonction de 'tabIndex'
            children: [
              // Liste des widgets qui seront affichés en fonction de l'index
              Container(), // Premier widget vide
              Container(
                color: Colors.red, // Deuxième widget, un conteneur avec un fond rouge
              ),
              Container(
                color: Colors.blue, // Troisième widget, un conteneur avec un fond bleu
              ),
              Container(
                color: Colors.orange, // Quatrième widget, un conteneur avec un fond orange
              )
            ],
          ),
        ),
        bottomNavigationBar: Container(
          // Container pour le fond de la barre de navigation en bas
          decoration: BoxDecoration(
            // Style de décoration pour la barre de navigation
              color: Colors.white, // Fond blanc pour la barre
              border: Border(
                // Définit une bordure en haut de la barre
                  top: BorderSide(
                      color: Theme.of(context).colorScheme.secondary, // Couleur de la bordure basée sur le thème
                      width: 0.7 // Largeur de la bordure
                  )
              )
          ),
          child: SnakeNavigationBar.color(
            // Utilisation du widget SnakeNavigationBar pour créer une barre de navigation "snake-like"
            behaviour: SnakeBarBehaviour.floating, // Comportement de la barre flottante
            snakeShape: SnakeShape.circle, // Forme du curseur snake en cercle
            padding: const EdgeInsets.symmetric(vertical: 5), // Padding vertical pour l'espacement
            unselectedLabelStyle: const TextStyle(fontSize: 11), // Style pour les étiquettes non sélectionnées (taille de police)
            snakeViewColor: Theme.of(context).primaryColor, // Couleur du curseur snake selon la couleur primaire du thème
            unselectedItemColor: Theme.of(context).colorScheme.secondary, // Couleur des éléments non sélectionnés
            showUnselectedLabels: true, // Affiche les labels même pour les items non sélectionnés
            currentIndex: controller.tabIndex, // L'index actuel du controller pour gérer la navigation
            onTap: (val){
              // Lorsqu'un utilisateur clique sur un élément de la barre de navigation
              controller.updateIndex(val); // Appelle la méthode pour mettre à jour l'index (onglet actuel)
            },
            items: const [
              // Définition des items de navigation en bas (icônes et labels)
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'), // Icône et label pour l'accueil
              BottomNavigationBarItem(icon: Icon(Icons.category), label: 'Category'), // Icône et label pour les catégories
              BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu'), // Icône et label pour le menu
              BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'Account') // Icône et label pour le compte
            ],
          ),
        ),
      ),
    );
  }
}
