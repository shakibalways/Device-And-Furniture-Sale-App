import 'package:belives_store_app_app/utilits/constant/icon.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomCacheNetwork extends StatelessWidget {
  const CustomCacheNetwork({
    super.key,
    required this.imageUrl,
    this.assetImage,
    this.height,
    this.width,
    this.fit,
  });
  final String imageUrl;
  final String? assetImage;
  final double? height;
  final double? width;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      width: width ?? Get.width * 0.7,
      height: height,
      imageUrl: imageUrl,
      fit: fit,
      placeholder: (context, url) => Image.asset(
        RIcons.loading,
        height: 80,
        width: 80,
      ),
      errorWidget: (context, url, error) => Image.asset(
        assetImage ?? RIcons.alert,
        height: 100,
      ),
    );
  }
}
