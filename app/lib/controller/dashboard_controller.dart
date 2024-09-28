import 'package:get/get.dart'; // Importe GetX pour utiliser les fonctionnalités de contrôleur

class DashboardController extends GetxController {
  // Propriété tabIndex pour stocker l'index de l'onglet actif
  var tabIndex = 0;

  // Méthode pour mettre à jour l'index de l'onglet sélectionné
  void updateIndex(int index){
    tabIndex = index; // Met à jour la valeur de tabIndex
    update(); // Notifie GetX qu'une mise à jour de l'état a eu lieu pour reconstruire les widgets liés
  }
}
