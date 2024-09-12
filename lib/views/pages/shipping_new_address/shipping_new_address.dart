import 'package:belives_store_app_app/components/my_custom_appbar.dart';
import 'package:belives_store_app_app/components/my_custom_bottom_sheet.dart';
import 'package:belives_store_app_app/components/my_custom_divider.dart';
import 'package:belives_store_app_app/components/my_custom_text.dart';
import 'package:belives_store_app_app/components/my_custom_textfield.dart';
import 'package:belives_store_app_app/global_wieght/custom_container.dart';
import 'package:belives_store_app_app/views/pages/shipping_new_address/widgets/my_list_title.dart';
import 'package:flutter/material.dart';

class ShippingNewAddressPage extends StatelessWidget {
  const ShippingNewAddressPage({super.key});

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
        child: Stack(
          children: [
            SizedBox(
              height: height * 1,
              width: double.infinity,
              child: MyCustomBottomSheets(
                height: height * .40,
                width: double.infinity,
                mAxisAli: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      MyCustomSearchField(
                        hintName: "139 Haystreet,Perth",
                        controller: searchController,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const MyCustomDivider(),
                    ],
                  ),
                  const Column(
                    children: [
                      MyListTitle(
                        tText: "139 Haystreet ,Perth",
                      ),
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
            Positioned(
              left: 150,
              top: 200,
              child: Image.asset("assets/map/Bullet.png"),
            ),
          ],
        ),
      ),
    );
  }
}
