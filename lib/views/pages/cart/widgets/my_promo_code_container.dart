import 'package:flutter/material.dart';

class MyPromoCodeContainer extends StatelessWidget {
  const MyPromoCodeContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: Colors.grey.withOpacity(.60))),
      child: Padding(
        padding: const EdgeInsets.only(top: 15, bottom: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Icon(
              Icons.percent,
              size: 35,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Promo Code",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Text("-\$100.00")
              ],
            ),
            Container(
              height: 35,
              width: 80,
              decoration: BoxDecoration(
                  color: const Color(0xffC6AB59),
                  borderRadius: BorderRadius.circular(10)),
              child: const Center(
                child: Text(
                  "ST#132",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                ),
              ),
            ),
            const Icon(
              Icons.check,
              color: Color(0xff02C697),
            )
          ],
        ),
      ),
    );
  }
}
