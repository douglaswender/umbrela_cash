import 'package:flutter/material.dart';
import 'package:umbrela_cash/core/styles/app_colors.dart';

class AppButton extends StatefulWidget {
  final String label;
  final Widget? icon;
  final Function() onPressed;
  const AppButton({
    Key? key,
    required this.onPressed,
    required this.label,
    this.icon,
  }) : super(key: key);

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(AppColors.primaryRed),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ),
          ),
        ),
        onPressed: widget.onPressed,
        child: widget.icon == null
            ? Text(
                widget.label,
                style: Theme.of(context).textTheme.button,
              )
            : Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    widget.icon!,
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      widget.label,
                      style: Theme.of(context).textTheme.button,
                    )
                  ],
                ),
              ));
  }
}
