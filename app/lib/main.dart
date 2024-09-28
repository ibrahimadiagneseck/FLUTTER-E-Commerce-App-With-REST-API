import 'package:flutter/material.dart'; // Importe le package Flutter pour la création d'UI
import 'package:get/get.dart'; // Importe GetX pour la gestion de l'application, la navigation et les thèmes
import 'package:app/route/app_page.dart'; // Importe la liste des pages définie dans AppPage
import 'package:app/route/app_route.dart'; // Importe les routes de l'application
import 'package:app/theme/app_theme.dart'; // Importe les thèmes de l'application

void main() {
  // Le point d'entrée principal de l'application Flutter
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // Classe MyApp qui étend StatelessWidget pour définir l'application
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Méthode build qui génère l'interface utilisateur de l'application
    return GetMaterialApp(
      // Utilisation de GetMaterialApp de GetX pour gérer l'application avec la navigation et les dépendances
      getPages: AppPage.list, // Liste des pages de navigation définie dans AppPage
      initialRoute: AppRoute.dashboard, // Définit la route initiale de l'application (le premier écran à afficher)
      debugShowCheckedModeBanner: false, // Désactive le banner de debug affiché par défaut en haut à droite
      theme: AppTheme.lightTheme, // Applique le thème clair défini dans AppTheme
      themeMode: ThemeMode.light, // Définit que le thème par défaut est en mode clair
    );
  }
}
