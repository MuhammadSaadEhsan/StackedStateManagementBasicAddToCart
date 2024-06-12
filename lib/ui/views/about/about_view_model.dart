import 'package:stackclass/app/app.locator.dart';
import 'package:stackclass/app/app.router.dart';
import 'package:stackclass/services/counter_data_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class AboutViewModel extends BaseViewModel {
  final counterDataService = locator<CounterDataService>();
  final navigationService = locator<NavigationService>();

  navigateToHome() {
    navigationService.navigateToHomeView();
  }

  deleter(int num) {
    counterDataService.cartDeleter(num);
    rebuildUi();
    // notifyListeners();
  }
}
