import 'package:get/get.dart'; // Importe GetX pour la gestion de l'état et les dépendances
import 'package:app/controller/dashboard_controller.dart'; // Importe le DashboardController

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    // Cette méthode est utilisée pour définir les dépendances nécessaires pour cette page
    Get.put(DashboardController());
    // Ici, GetX place une instance de DashboardController dans le gestionnaire de dépendances.
    // Cela permet à toute la page ou aux widgets enfants d'accéder à cette instance sans recréer le controller.
  }
}
