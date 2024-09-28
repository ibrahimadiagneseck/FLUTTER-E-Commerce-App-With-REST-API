import 'package:get/get.dart'; // Importe GetX pour la gestion de la navigation et des pages
import 'package:app/route/app_route.dart'; // Importe les routes définies dans l'application
import 'package:app/view/dashboard/dashboard_binding.dart'; // Importe le binding pour le tableau de bord
import 'package:app/view/dashboard/dashboard_screen.dart'; // Importe l'écran du tableau de bord

class AppPage {
  // Liste des pages de l'application, utilisée pour la navigation
  static var list = [
    GetPage(
      // Déclare une nouvelle page dans GetX
        name: AppRoute.dashboard, // Le nom ou la route de la page, défini dans AppRoute
        page: () => const DashboardScreen(), // La fonction qui renvoie le widget de la page à afficher
        binding: DashboardBinding() // Le binding associé, pour injecter les dépendances avant de charger la page
    )
  ];
}
