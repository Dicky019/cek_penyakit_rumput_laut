import '../../../core/core.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
    required this.textEditingController,
    required this.hintText,
    this.validator,
    this.isPassword = false,
    this.onChanged,
    this.onTap,
  }) :
        // icon = null,
        iconSuffix = null;

  const TextFieldWidget.withIcon({
    super.key,
    required this.textEditingController,
    required this.hintText,
    this.validator,
    this.isPassword = false,
    // required this.icon,
    this.onChanged,
    this.onTap,
  }) : iconSuffix = null;

  const TextFieldWidget.withIconSuffix({
    super.key,
    required this.textEditingController,
    required this.hintText,
    this.validator,
    this.isPassword = false,
    this.onChanged,
    this.onTap,
    required this.iconSuffix,
  })
  // :  icon = null
  ;

  final TextEditingController textEditingController;
  final String hintText;
  final String? Function(String? value)? validator;
  final bool isPassword;
  // final SvgGenImage? icon;
  final IconData? iconSuffix;
  final void Function(String)? onChanged;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeApp.customHeight(50),
      child: TextFormField(
        controller: textEditingController,
        validator: validator,
        obscureText: isPassword,
        readOnly: onTap != null,
        onTap: onTap,
        obscuringCharacter: "*",
        onChanged: onChanged,
        style: TypographyApp.body,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.r),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.r),
            borderSide: BorderSide.none,
          ),
          counterStyle: TypographyApp.body,
          fillColor: ColorApp.primaryBackgroundColor,
          filled: true,
          // prefixIcon: icon != null
          //     ? Padding(
          //         padding: EdgeInsets.symmetric(
          //           horizontal: SizeApp.w20,
          //           vertical: SizeApp.h16,
          //         ),
          //         child: icon!.svg(),
          //       )
          //     : null,
          contentPadding: EdgeInsets.symmetric(
            horizontal: SizeApp.w20,
          ),
          suffixIcon: iconSuffix != null
              ? Icon(
                  iconSuffix,
                  color: ColorApp.primaryColor,
                )
              : null,
          hintText: hintText,
          hintStyle: TypographyApp.body.copyWith(
            color: ColorApp.secondaryTextColor,
          ),
        ),
      ),
    );
  }
}
