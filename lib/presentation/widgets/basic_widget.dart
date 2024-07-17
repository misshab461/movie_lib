import 'package:flutter/material.dart';

class CustumLoading extends StatelessWidget {
  const CustumLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/mainloading.gif',
      filterQuality: FilterQuality.high,
      width: 60,
    );
  }
}

class UserInputField extends StatefulWidget {
  final TextEditingController? controller;
  final String hint;
  final bool obscureText;
  final String? Function(String? value)? validator;
  final IconData? icon;
  final TextInputType textInputType;
  const UserInputField({
    this.controller,
    required this.hint,
    this.obscureText = false,
    this.validator,
    this.icon,
    this.textInputType = TextInputType.name,
  });

  @override
  State<UserInputField> createState() => _UserInputFieldState();
}

class _UserInputFieldState extends State<UserInputField> {
  late bool obscure = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: widget.textInputType,
      controller: widget.controller,
      obscureText: widget.obscureText ? obscure : false,
      obscuringCharacter: '*',
      validator: widget.validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintStyle: TextStyle(color: Theme.of(context).hintColor),
        icon: Icon(widget.icon),
        iconColor: Theme.of(context).hintColor,
        hintText: widget.hint,
        fillColor: Colors.white,
        filled: true,
        hintFadeDuration: Duration(milliseconds: 500),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(20),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(20),
        ),
        suffixIcon: widget.obscureText
            ? IconButton(
                icon: Icon(
                  obscure ? Icons.visibility_off : Icons.visibility,
                ),
                onPressed: () {
                  setState(() {
                    obscure = !obscure;
                  });
                },
              )
            : const SizedBox(),
      ),
    );
  }
}
