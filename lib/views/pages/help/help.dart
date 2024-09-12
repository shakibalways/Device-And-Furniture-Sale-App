import 'package:belives_store_app_app/components/my_custom_appbar.dart';
import 'package:belives_store_app_app/components/my_custom_text.dart';
import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyCustomAppBar(
        title: MyCustomText(
          title: "Help",
          fSize: 25,
          fWeight: FontWeight.w700,
        ),
        icon: Icons.more_horiz,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 10, right: 10, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyCustomText(
                title: "Please Document Read ?",
                fSize: 25,
                fWeight: FontWeight.bold,
              ),
              SizedBox(
                height: 15,
              ),
              MyCustomText(
                  mLines: 50,
                  fWeight: FontWeight.w400,
                  title:
                      "It seems you're looking for assistance with Google Docs. You can create and collaborate on online documents using Google Docs, which allows for real-time editing and secure sharing from any device. For help with any issues or to find tips, you might want to visit the official Google Docs Help Community.User Manuals. These comprehensive documents provide detailed information about all product or service aspects. ...!A study from Microsoft says that more than 90% of consumers expect brands to offer an online portal for self-service support, highlighting the growing preference for accessing information at one’s own pace and convenience.In this blog, we will explore the types of user documentation and some examples from real brands. We will also discuss how user documentation software can help.A thoughtful, well-written user manual provides concise and accurate information on operating the product, reducing the chances of mistakes and frustration.User documentation helps users understand and effectively use a product or service. It usually includes step-by-step instructions, usage scenarios, and explanatory diagrams that guide users through various processes, from basic setup and daily operations to more complicated functionalities.As discussed above, user documentation is significant in providing the necessary information to understand and effectively use a product or service")
            ],
          ),
        ),
      ),
    );
  }
}
