import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:purr_pedia_app/core/config/design/tokens.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool centerTitle;
  final bool forceMaterialTransparency;

  const CustomAppBar({
    required this.title,
    this.centerTitle = true,
    this.forceMaterialTransparency = true,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: const TextStyle(
          fontFamily: 'Montserrat',
          fontSize: 24,
          fontWeight: FontWeight.w800,
          color: Colors.white,
        ),
      ),
      centerTitle: centerTitle,
      forceMaterialTransparency: forceMaterialTransparency,
      leading: IconButton(
        onPressed: () => context.pop(),
        icon: AssetsToken.icons.back.svg(),
        color: ColorsToken.primary,
        splashColor: ColorsToken.transparent,
        highlightColor: ColorsToken.transparent,
        hoverColor: ColorsToken.transparent,
        focusColor: ColorsToken.transparent,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
