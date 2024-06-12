import 'package:flutter/material.dart';
import 'package:stackclass/ui/views/home/home_viewmodel.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        //reactive (statefull) and non-reactive (stateless)
        viewModelBuilder: () => HomeViewModel(), //oska model
        builder: (context, viewModel, child) {
          //3 chezen
          return Scaffold(
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(viewModel.counterDataService.counter.toString()),
                  ElevatedButton(
                      onPressed: () {
                        viewModel.myCounter();
                      },
                      child: const Text("Update")),
                  ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: viewModel.counterDataService.productList.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        child: ListTile(
                          title: Text(viewModel
                              .counterDataService.productList[index]["name"]
                              .toString()),
                          subtitle: Text(viewModel
                              .counterDataService.productList[index]["price"]
                              .toString()),
                          trailing: Text(viewModel
                              .counterDataService.productList[index]["quality"]
                              .toString()),
                        ),
                        onTap: () {
                          viewModel.updater(index);
                        },
                      );
                    },
                  ),

                  // const Text("Cart Items"),

                  ElevatedButton(
                      onPressed: () {
                        viewModel.navigateToAbout();
                      },
                      child: const Text("Cart Items"))
                ],
              ),
            ),
          );
        });
  }
}
