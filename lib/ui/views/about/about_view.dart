import 'package:flutter/material.dart';
import 'package:stackclass/ui/views/about/about_view_model.dart';
import 'package:stacked/stacked.dart';

class AboutView extends StatelessWidget {
  const AboutView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => AboutViewModel(),
        builder: (context, viewModel, child) {
          return Scaffold(
            body: Column(
              children: [
                const Text(
                  "Cart Screen",
                  style: TextStyle(color: Colors.green, fontSize: 30),
                ),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: viewModel.counterDataService.cart.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(viewModel
                          .counterDataService.cart[index]["name"]
                          .toString()),
                      subtitle: Text(viewModel
                          .counterDataService.cart[index]["price"]
                          .toString()),
                      trailing: IconButton(
                        onPressed: () {
                          viewModel.deleter(index);
                        },
                        icon: const Icon(Icons.delete),
                      ),
                    );
                  },
                ),
                ElevatedButton(
                    onPressed: () {
                      viewModel.navigateToHome();
                    },
                    child: const Text("Product List"))
              ],
            ),
          );
        });
  }
}
