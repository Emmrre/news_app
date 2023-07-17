// * Uygulamada kullanılan textfield
// * alanlarının default ayarları buradan gelmektedir.
// * Yeni bir textfield asla oluşturmuyoruz. Eğer ihtiyacınız farklı ise lütfen
// * buradan customizable seçenekler ile yönetin.
import 'package:flutter/material.dart';
import 'package:news_app/global/theme_of_helper/theme_of_helper.dart';

class TextFieldComponent extends StatelessWidget {
  const TextFieldComponent(
      {this.labelText,
      Key? key,
      this.validator,
      this.onEditingComplete,
      this.autofillHints,
      this.onSaved,
      this.onChanged,
      this.controller,
      this.onFieldSubmitted,
      this.maxLines,
      this.prefixIcon,
      this.suffixIcon,
      this.hintText,
      this.enable,
      this.expands,
      this.readOnly,
      this.focusedBorder,
      this.textAlignVertical,
      this.enabledBorder,
      this.keyboardType,
      this.obsecureText})
      : super(key: key);
  final String? labelText;
  final TextInputType? keyboardType;

  final String? hintText;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;
  final void Function(String)? onChanged;
  final TextEditingController? controller;
  final void Function(String value)? onFieldSubmitted;
  final IconData? prefixIcon;
  final Widget? suffixIcon;
  final int? maxLines;
  final bool? obsecureText;
  final bool? readOnly;
  final bool? expands;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final Iterable<String>? autofillHints;
  final void Function()? onEditingComplete;
  final bool? enable;
  final TextAlignVertical? textAlignVertical;

  @override
  Widget build(BuildContext context) => AutofillGroup(
        child: TextFormField(
          enabled: enable,
          autocorrect: false,
          readOnly: readOnly ?? false,
          controller: controller,
          cursorColor: Colors.grey,
          autofillHints: autofillHints,

          onEditingComplete: onEditingComplete,
          style: context.themeOf.inputDecorationTheme.helperStyle,
          textAlignVertical: textAlignVertical,

          decoration: InputDecoration(
              fillColor:
                  (enable == false) ? Colors.grey.shade200 : Colors.transparent,
              filled: !(enable ?? false),
              prefixIcon: (prefixIcon != null)
                  ? Icon(prefixIcon, color: Colors.amber)
                  : null,
              suffixIcon: suffixIcon,
              hintText: hintText,
              errorMaxLines: 3,
              enabledBorder: enabledBorder ??
                  context.themeOf.inputDecorationTheme.enabledBorder,
              focusedBorder: focusedBorder ??
                  context.themeOf.inputDecorationTheme.focusedBorder,

              // fillColor: Theme.of(context).inputDecorationTheme.fillColor,
              labelStyle: context.themeOf.inputDecorationTheme.labelStyle,
              labelText: labelText),
          //   hintStyle: abeezeFamilyTextStyle(context)),
          validator: validator,

          maxLines: maxLines,
          keyboardType: keyboardType,
          expands: expands ?? false,
          obscureText: obsecureText ?? false,
          onFieldSubmitted: onFieldSubmitted,
          onChanged: onChanged,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          onSaved: onSaved,
        ),
      );
}