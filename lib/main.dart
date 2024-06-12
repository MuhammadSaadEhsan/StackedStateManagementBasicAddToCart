import 'package:flutter/material.dart';
import 'package:stackclass/app/app.bottomsheets.dart';
import 'package:stackclass/app/app.dialogs.dart';
import 'package:stackclass/app/app.locator.dart';
import 'package:stackclass/app/app.router.dart';

import 'package:stacked_services/stacked_services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  setupDialogUi();
  setupBottomSheetUi();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // initialRoute: Routes.homeView,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      navigatorKey: StackedService.navigatorKey,
      // navigatorObservers: [
      //   StackedService.routeObserver,
      // ],
    );
  }
}

// sbse pehle cli install
//then create app
//context wala kam app.dart
//new page ko app.dart ki dependencies me add krenge



//==============================code with owais stacked service
// app
// screens 
// services


//singleton pori app me 1 object bnane me help krta he
//har view ka viewmodel hona zrori he
//
//kisi 1 ka viewmodel kisi or ka viewmodel nh ban skta

// agr 1 ke viewmodel ko hame ka kuch hissa hamen dosre ko dena he to hame services k pas jana hoga

//wo service different viewmodel se connected hogi or sbko data provide kr rhi hogi

// jb bh kuch change krenge especially app me to wo rebuild runner wali command chalani hogi


// flutter pub run build_runner build --delete-conflicting-outputs


//app run hogi to instance bna lega --- singleton
//app run hogi phir jab need hogi to instance banegi --- lazysingleton



//api integration 2 types 
// with model
// without model


//http   simple and common api
//dio    complex and advance


// CRUD

// c = create => http.Post
// r = read => http.get
// u = update => http.put   pora data ko
// u = update => http.patch   specific field ko
// d = delete => http.delete


//to tell it is not string it is url     (inside http.get)
// uri.https()
// uri.parse()