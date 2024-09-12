import 'package:belives_store_app_app/components/my_custom_appbar.dart';
import 'package:belives_store_app_app/components/my_custom_bottom_sheet.dart';
import 'package:belives_store_app_app/components/my_custom_divider.dart';
import 'package:belives_store_app_app/components/my_custom_list_tile.dart';
import 'package:belives_store_app_app/components/my_custom_text.dart';
import 'package:belives_store_app_app/components/my_custom_textfield.dart';
import 'package:belives_store_app_app/global_wieght/custom_container.dart';
import 'package:flutter/material.dart';

class ShippingAddressPage extends StatelessWidget {
  const ShippingAddressPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchController = TextEditingController();
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: const MyCustomAppBar(
        title: MyCustomText(
          title: "SHIPPING",
          fSize: 16,
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: height * 1,
          width: double.infinity,
          child: MyCustomBottomSheets(
            height: height * .65,
            width: double.infinity,
            mAxisAli: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  MyCustomSearchField(
                    hintName: "Enter Your Address",
                    controller: searchController,
                  ),
                  const SizedBox(height: 20),
                  const MyCustomDivider(),
                ],
              ),
              const Column(
                children: [
                  Row(
                    children: [Text("My Address"), Icon(Icons.arrow_right_alt)],
                  ),
                  SizedBox(height: 10),
                  MyCustomListTile(
                    leadingIcon: Icons.location_on_outlined,
                    titleText: "Perth",
                    color: Colors.grey,
                    subtitleText: "139 Haystreet",
                    fWeight: FontWeight.bold,
                    fSize: 18,
                    trailingIcon: Icons.check_circle_outline_rounded,
                    iFSize: 40,
                    iColor: Color(0xff02C697),
                  ),
                  MyCustomDivider(),
                  MyCustomListTile(
                    leadingIcon: Icons.location_on_outlined,
                    titleText: "Perth",
                    color: Colors.grey,
                    subtitleText: "Apple Perth City",
                    fWeight: FontWeight.bold,
                    fSize: 18,
                    trailingIcon: Icons.check_circle_outline,
                    iFSize: 40,
                  ),
                  MyCustomDivider(),
                ],
              ),
              const CustomContainer(
                title: "CONTINUE TO PAYMENT",
                icon: Icons.arrow_right_alt,
              ),
            ],
            child: Image.asset(
              "assets/map/location.png",
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
