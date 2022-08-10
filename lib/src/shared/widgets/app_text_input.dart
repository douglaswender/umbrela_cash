import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

import '../../../core/styles/app_text_style.dart';

class InputWidget extends StatefulWidget {
  final String label;
  final TextEditingController? controller;
  final void Function(String)? onChange;
  final String? type;
  final bool? isPassword;
  final bool? isCapitalization;
  final TextInputAction? textInputAction;
  final VoidCallback? onTap;
  final FocusNode? focusNode;
  final bool readOnly;
  final String? Function(String?)? validator;
  final List<MaskTextInputFormatter>? maskFormatter;

  InputWidget({
    super.key,
    required this.label,
    this.controller,
    this.type = "normal",
    this.isPassword = false,
    this.onChange,
    this.isCapitalization = false,
    this.textInputAction = TextInputAction.done,
    this.onTap,
    this.focusNode,
    this.readOnly = false,
    this.validator,
    this.maskFormatter,
  }) : assert(['normal', 'email', 'number'].contains(type));

  @override
  State<InputWidget> createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  final keyBoard = {
    'normal': TextInputType.text,
    'email': TextInputType.emailAddress,
    'number': TextInputType.number
  };

  TextInputType get keyboardType => keyBoard[widget.type]!;
  bool textVisibility = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: widget.maskFormatter,
      validator: widget.validator,
      focusNode: widget.focusNode,
      onTap: widget.onTap,
      textInputAction: widget.textInputAction,
      keyboardType: keyboardType,
      controller: widget.controller,
      onChanged: widget.onChange,
      textCapitalization: widget.isCapitalization!
          ? TextCapitalization.words
          : TextCapitalization.none,
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xFFFFFFFF),
        //╚contentPadding: const EdgeInsets.only(bottom: 0.0, top: 15.0),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(color: Color(0xffFFFFFF)),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(color: Color(0xffFFFFFF)),
        ),
        errorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(color: Color(0xffFFFFFF)),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(color: Color(0xffFFFFFF)),
        ),
        disabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(color: Color(0xffFFFFFF)),
        ),
        errorMaxLines: 1,
        hintText: widget.label,
        labelStyle: AppTextStyles.body,
        suffixIcon: widget.isPassword!
            ? IconButton(
                icon: textVisibility
                    ? const Icon(Icons.visibility)
                    : const Icon(Icons.visibility_off),
                onPressed: () {
                  setState(() {
                    textVisibility = !textVisibility;
                  });
                },
              )
            : null,
      ),
      obscureText: widget.isPassword! ? !textVisibility : false,
      readOnly: widget.readOnly,
    );
  }
}
