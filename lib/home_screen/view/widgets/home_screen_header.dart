import 'package:flutter/material.dart';

import '../../../utils/asset_paths.dart';
import '../../../utils/custom_colors.dart';

class HomeScreenHeader extends StatelessWidget {
  const HomeScreenHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(AssetPaths.menuIcon),
        const SizedBox(width: 10),
        Expanded(
          child: TextFormField(
            decoration: InputDecoration(
              filled: true,
              hintText: "Search",
              contentPadding: const EdgeInsets.only(top: 10, left: 20),
              fillColor: const Color(0xffebf0f8),
              border: InputBorder.none,
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(30),
              ),
              suffixIcon: Container(
                width: 80,
                decoration: BoxDecoration(
                  color: CustomColors.mainBlue,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 10),
        Image.asset(AssetPaths.bellIcon),
        const SizedBox(width: 5),
        const Icon(
          Icons.logout,
          size: 32,
        )
      ],
    );
  }
}
