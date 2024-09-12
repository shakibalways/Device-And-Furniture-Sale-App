import 'package:belives_store_app_app/components/my_custom_container.dart';
import 'package:belives_store_app_app/components/my_custom_divider.dart';
import 'package:belives_store_app_app/components/my_custom_textfield.dart';
import 'package:belives_store_app_app/controller/getx/uiController/search_result/search_result.dart';
import 'package:belives_store_app_app/views/pages/single_product_view/single_product_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchResultPage extends StatelessWidget {
  const SearchResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller =
        Get.put(SearchResultController()); // Create the controller
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: MyCustomSearchField(
                    hintName: "Search",
                    onChanged: controller.searchUser,
                    controller: controller.searchController,
                    suffixIcon: Obx(
                      () => controller.isLoading.value
                          ? const CircularProgressIndicator() // Show loading indicator
                          : controller.searchController.text.isNotEmpty
                              ? InkWell(
                                  onTap: () {
                                    controller.clearSearch();
                                  },
                                  child: const Icon(Icons.close),
                                )
                              : const Icon(Icons.search),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const MyCustomDivider(),
                const SizedBox(height: 20),
                Obx(
                  () => Text(
                    "FOUND ${controller.searchResults.length} RESULTS", // Display count of results
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.grey[500],
                    ),
                  ),
                ),
                const SizedBox(height: 60),
                Obx(
                  () => controller.searchResults.isNotEmpty
                      ? GridView.builder(
                          padding: const EdgeInsets.all(10),
                          shrinkWrap: true,
                          itemCount: controller.searchResults
                              .length, // Use the filtered search results
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 0.7,
                            crossAxisCount: 2,
                            mainAxisSpacing: 20,
                            crossAxisSpacing: 20,
                          ),
                          itemBuilder: (context, index) {
                            var data = controller.searchResults[
                                index]; // Use the searchResults list
                            return GestureDetector(
                              onTap: (){
                                Get.offAll(()=> const SingleProductViewPage());
                              },
                              child: MyCustomContainer(
                                image: data.image,
                                itemName: data.itemName,
                                itemPrice: data.itemPrice,
                              ),
                            );
                          },
                        )
                      : const Text("No Data Found"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
