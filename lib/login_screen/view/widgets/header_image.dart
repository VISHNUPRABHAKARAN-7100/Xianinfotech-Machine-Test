import 'package:flutter/material.dart';

import '../../../utils/asset_paths.dart';

class HeaderImage extends StatelessWidget {
  const HeaderImage({super.key});

  @override
  Widget build(BuildContext context) {
    // Retrieves the size of the device screen.
    final screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      height: screenHeight * 0.4,
      child: Center(
        child: Image.asset(
          AssetPaths.profile,
          width: screenHeight * 0.2,
          height: screenHeight * 0.2,
          cacheHeight: (screenHeight * 0.2).toInt(),
          cacheWidth: (screenHeight * 0.2).toInt(),
        ),
      ),
    );
  }
}
