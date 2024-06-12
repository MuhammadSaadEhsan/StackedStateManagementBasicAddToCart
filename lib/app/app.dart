import 'package:stackclass/services/counter_data_service.dart';
import 'package:stackclass/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:stackclass/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:stackclass/ui/views/about/about_view.dart';
import 'package:stackclass/ui/views/home/home_view.dart';
// import 'package:stackclass/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView, initial: true),
    MaterialRoute(page: AboutView,)
    // MaterialRoute(page: StartupView),
    // @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    Singleton(classType: CounterDataService)
    // @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
