import 'package:flutter/material.dart';

import 'package:compedia/config/gen/image_resources.dart';
import 'package:compedia/utils/widget/image_load.dart';

class EmptyStateWidget extends StatelessWidget {
  final String? image;
  final String? text;
  final TextStyle? textStyle;
  const EmptyStateWidget({
    super.key,
    this.image,
    this.text,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ImageLoad(
            src: image ?? appImages.imgEmpty.path,
            height: 90,
            width: 150,
            fit: BoxFit.contain,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
            ),
            child: Text(
              text ?? "Data is empty",
              style: textStyle ?? Theme.of(context).textTheme.bodyMedium,
            ),
          )
        ],
      ),
    );
  }
}
