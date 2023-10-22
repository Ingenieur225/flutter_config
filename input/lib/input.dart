library input;

// ignore_for_file: prefer_typing_uninitialized_variables, curly_braces_in_flow_control_structures, import_of_legacy_library_into_null_safe

import 'package:color/color.dart';
import 'package:flutter/material.dart';

class InputHelper extends StatefulWidget {
  final controller;
  final hintText;
  final type;
  final icon;
  const InputHelper({
    super.key,
    required this.controller,
    required this.hintText,
    required this.type,
    required this.icon,
  });

  @override
  State<InputHelper> createState() => _InputHelperState();
}

class _InputHelperState extends State<InputHelper> {
  bool _obscureText = true;

  void _toggle() => setState(() => _obscureText = !_obscureText);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 5, bottom: 2),
      child: TextFormField(
        controller: widget.controller,
        keyboardType: widget.type,
        obscureText: widget.hintText == 'Saisir votre mot de passe' || widget.hintText == 'Confirmer votre mot de passe'
            ? _obscureText
            : false,
        minLines: widget.hintText == 'Laisser un message' ? 3 : 1,
        maxLines: widget.hintText == 'Laisser un message' ? 3 : 1,
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color.fromARGB(255, 238, 238, 238),
          suffixIcon: widget.hintText == 'Saisir votre mot de passe' || widget.hintText == 'Confirmer votre mot de passe'
              ? IconButton(
                  onPressed: () => _toggle(),
                  icon: Icon(_obscureText
                      ? Icons.visibility_off
                      : Icons.visibility))
              : Icon(
                  widget.icon,
                  color: const Color.fromRGBO(105, 108, 121, 1),
                ),
          enabledBorder: OutlineInputBorder(
              borderRadius: widget.hintText == 'Ex: 00 00 00 00' ||
                      widget.hintText == 'Saisir votre nom' ||
                      widget.hintText == 'Saisir votre prénoms' ||
                      widget.hintText == 'Saisir votre contact' ||
                      widget.hintText == 'Saisir votre email' ||
                      widget.hintText == 'Saisir votre Lieu d\'habitation' ||
                      widget.hintText == 'Saisir votre mot de passe' ||
                      widget.hintText == 'Confirmer votre mot de passe' ||
                      widget.hintText == 'Laisser un message'
                  ? BorderRadius.circular(10)
                  : BorderRadius.circular(80),
              borderSide:
                  const BorderSide(color: AppColors.iconGray, width: 2)),
          focusedBorder: OutlineInputBorder(
            borderRadius: widget.hintText == 'Ex: 00 00 00 00' ||
                    widget.hintText == 'Saisir votre nom' ||
                    widget.hintText == 'Saisir votre prénoms' ||
                    widget.hintText == 'Saisir votre contact' ||
                    widget.hintText == 'Saisir votre email' ||
                    widget.hintText == 'Saisir votre Lieu d\'habitation' ||
                    widget.hintText == 'Saisir votre mot de passe' ||
                    widget.hintText == 'Confirmer votre mot de passe' ||
                    widget.hintText == 'Laisser un message'
                ? BorderRadius.circular(10)
                : BorderRadius.circular(80),
            borderSide: const BorderSide(color: AppColors.iconGray, width: 2),
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
          ),
          hintText: widget.hintText,
          hintStyle: const TextStyle(
            fontSize: 14.0,
            color: Color.fromRGBO(124, 124, 124, 1),
            fontWeight: FontWeight.w600,
          ),
        ),
        validator: (value) {
          if (value!.isEmpty)
            return 'Champs obligatoire !';
          else if (widget.hintText == TextInputType.phone && value.length < 8)
            return 'Au moins 8 caractères';
          else if (widget.type == TextInputType.emailAddress &&
              !value.contains('@')) return 'Email obligatoire !';
          return null;
        },
      ),
    );
  }
}
