import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomTextFormField extends StatefulWidget {
  final bool readOnly;
  final TextEditingController controller;
  final TextStyle? hintStyle;

  final String hintText;
  final bool obscureText;
  final String? Function(String?)? validator;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final TextStyle? errorStyle;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final type;
  final String? value;
  final TextStyle? style;
  final maxlines;

  const CustomTextFormField(
      {Key? key,
      this.hintStyle,
      this.errorStyle,
      this.readOnly = false,
      this.style,
      required this.controller,
      this.type = TextInputType.text,
      required this.hintText,
      this.obscureText = false,
      this.validator,
      this.enabledBorder,
      this.focusedBorder,
      this. prefixIcon,
      this.suffixIcon,
      this.value,
      this.maxlines = 1}):super(key: key);

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        initialValue: widget.value,
        readOnly: widget.readOnly,
        style: Theme.of(context).textTheme.displaySmall,
        maxLines: widget.maxlines,
        keyboardType: widget.type,
        controller: widget.controller,
        decoration: InputDecoration(
          errorStyle: TextStyle(color: Colors.red.shade300),
          hintStyle: TextStyle(color: Colors.white60, fontSize: 12),
          hintText: widget.hintText,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.white,),
              ),
                prefixIcon: widget.prefixIcon,
              suffixIcon: widget.obscureText
                  ? IconButton(
                      onPressed: () {
                        setState(() {
                          obscureText = !obscureText;
                        });
                      },
                      icon: Icon(
                        obscureText ? Icons.visibility_off : Icons.visibility,
                        color: Colors.white,
                      ))
                  : widget.suffixIcon

        ),
                  obscureText: widget.obscureText && obscureText,
          validator: widget.validator,
        );
  }
}
