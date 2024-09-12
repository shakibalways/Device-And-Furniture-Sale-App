import 'package:belives_store_app_app/components/my_custom_container.dart';
import 'package:belives_store_app_app/components/my_custom_divider.dart';
import 'package:belives_store_app_app/components/my_custom_textfield.dart';
import 'package:belives_store_app_app/utilits/constant/image_list.dart';
import 'package:belives_store_app_app/utilits/constant/text_list.dart';
import 'package:belives_store_app_app/views/pages/search/widgets/my_custom_list_tile.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 15,
                ),
                MyCustomSearchField(
                  hintName: "Search On STStore",
                  controller: searchController,
                ),
                const SizedBox(
                  height: 8,
                ),
                const MyCustomDivider(),
                //Recent Searches
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "RECENT SEARCHES",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Column(
                  children: [
                    MyCustomListTile(
                      text: "Beosound 1",
                    ),
                    MyCustomDivider(),
                    MyCustomListTile(text: "Beosound Balance"),
                    MyCustomDivider(),
                    MyCustomListTile(text: "Beolit 17"),
                    MyCustomDivider(),
                  ],
                ),
                //Recent Searches
                const SizedBox(
                  height: 15,
                ),
                //Popular Searches
                const Column(
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "POPULAR SEARCHES",
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        MyCustomContainer(
                            image: RImages.beosound,
                            itemName: RTexts.name,
                            itemPrice: RTexts.amount),
                        SizedBox(
                          width: 8,
                        ),
                        MyCustomContainer(
                          image: RImages.biolit,
                          itemName: RTexts.name1,
                          itemPrice: RTexts.amount1,
                        )
                      ],
                    )
                  ],
                ),
                //Popular Searches
              ],
            ),
          ),
        ),
      ),
    );
  }
}
