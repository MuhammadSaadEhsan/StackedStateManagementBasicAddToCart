import 'package:stackclass/app/app.locator.dart';
import 'package:stackclass/app/app.router.dart';
import 'package:stackclass/services/counter_data_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final navigationService = locator<NavigationService>();
  // var counter = 0;
  // counterUpdater() {
  //   counter++;
  //   rebuildUi();   //like update of get

  // agr 2 viewmodel me chahie ye to?

  //to iski service bnalonga
  //or dependeny injection ki through isko app me register krlonga
  // }
  final counterDataService = locator<CounterDataService>();

  myCounter() {
    counterDataService.counterUpdater();
    rebuildUi();
  }

  updater(num) {
    counterDataService.cartAdder(num);
    rebuildUi();
  }

  navigateToAbout() {
    navigationService.navigateToAboutView();
  }
}
