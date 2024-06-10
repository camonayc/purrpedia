import 'package:flutter/material.dart';
import 'package:purr_pedia_app/core/config/design/tokens.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.textController,
    this.height,
    this.padding,
    this.onSearch,
    this.onSubmitted,
    this.onChanged,
    this.focusNode,
  });

  final double? height;
  final EdgeInsets? padding;
  final TextEditingController textController;
  final void Function(String value)? onSearch;
  final void Function(String value)? onSubmitted;
  final void Function(String value)? onChanged;
  final FocusNode? focusNode;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(10),
      child: SizedBox(
        height: height,
        child: TextField(
          controller: textController,
          focusNode: focusNode,
          decoration: InputDecoration(
            filled: true,
            fillColor: ColorsToken.white,
            hintText: 'Search...',
            hintStyle: const TextStyle(
                fontFamily: FontFamilyToken.montserrat,
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: ColorsToken.gray),
            suffixIcon: Material(
              color: ColorsToken.transparent, // Fondo transparente
              child: IconButton(
                onPressed: () {
                  FocusScope.of(context).unfocus();
                  onSearch?.call(textController.text);
                },
                icon: const Icon(Icons.search),
                color: ColorsToken.primary,
                splashColor: ColorsToken.transparent,
                highlightColor: ColorsToken.transparent,
                hoverColor: ColorsToken.transparent,
                focusColor: ColorsToken.transparent,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none,
            ),
          ),
          onSubmitted: onSubmitted,
          onChanged: onChanged,
        ),
      ),
    );
  }
}
