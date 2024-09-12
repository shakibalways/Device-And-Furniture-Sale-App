import 'package:flutter/material.dart';

class MyCustomShippingContainer extends StatelessWidget {
  const MyCustomShippingContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: Colors.grey.withOpacity(.60))),
      child: const Padding(
        padding: EdgeInsets.only(top: 15, bottom: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Icon(
                    Icons.shopping_cart_rounded,
                    size: 32,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Standard",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Text("2-3 days"),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              width: 40,
            ),
            Icon(
              Icons.arrow_downward_sharp,
              size: 30,
            ),
            SizedBox(),
          ],
        ),
      ),
    );
  }
}
