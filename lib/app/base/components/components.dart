import 'package:flutter/material.dart';


Widget myTextFormField({
  required TextEditingController controller,
  required TextInputType type,
  required String? Function(String?) validate,
  Function Function()? onTap,
  required String labelText,
  Widget? widget,
  IconData? suffixIcon,
  Widget? prefixIcon,
  Color? focusColor,
  Color? cursorColor,
  Color? iconColor,
  Color? writingColor,
  Color enabledBorderColor = Colors.grey,
  Color? hintColor,
  Color? labelColor,
  Color? suffixColor,
  Color? hoverColor,
  Color? fillColor,
  Color? errorColor,
  Color? suffixColorGesture,
  bool obscureText = false,
  double? fontSize,
  InputBorder? border,
  EdgeInsets? contentPadding,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      cursorColor: cursorColor,
      obscureText: obscureText,
      decoration: InputDecoration(
        errorStyle: TextStyle(color:errorColor),
        hoverColor: hoverColor,
        fillColor: fillColor,
        prefixIcon: prefixIcon,
        focusColor: focusColor,
        labelText: labelText,
        iconColor: iconColor,
        suffixIcon: widget,
        contentPadding: contentPadding,
        labelStyle: TextStyle(color: labelColor),
        hintStyle: TextStyle(
          color: hintColor,
          fontSize: fontSize,
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: enabledBorderColor,
          ),
        ),
        border: border,
        helperMaxLines: 2,
      ),
      validator: validate,

    );

















// Widget myTextFormField({
//   required TextEditingController controller,
//   required TextInputType type,
//   required String? Function(String?) validate,
//   required String labelText,
//   Function Function()? onTap,
//   IconData? suffixIcon,
//   Color? focus,
//   Color? cursor,
//   Color? iconColor,
//   Color? enabledBorderColor,
//   Color? hintColor,
//   Color? labelColor,
//   Color? suffixColor,
//   Color? suffixColorGesture,
//   bool obscureText = false,
// }) =>
//     TextFormField(
//       controller: controller,
//       keyboardType: type,
//       cursorColor: Colors.black,
//       obscureText: obscureText,
//       decoration: InputDecoration(
//         focusColor: focus,
//         labelText: labelText,
//         iconColor: iconColor,
//         suffixIcon: Icon(
//           suffixIcon,
//           color: suffixColor,
//         ),
//         labelStyle: TextStyle(color: labelColor),
//         suffix: GestureDetector(
//           onTap: onTap,
//           child: Icon(
//             obscureText ? Icons.visibility_off : Icons.visibility,
//             color: suffixColorGesture,
//           ),
//         ),
//         hintStyle: TextStyle(
//           color: hintColor,
//         ),
//         enabledBorder: UnderlineInputBorder(
//           borderSide: BorderSide(
//             color: enabledBorderColor!,
//           ),
//         ),
//         helperMaxLines: 2,
//       ),
//       validator: validate,
//     );































// Widget myTextFormField({
//   required TextEditingController controller,
//   required TextInputType type,
//   required String? Function(String?) validate,
//   required String label,
//   required IconData prefix,
//   bool obscureText = false,
//   void Function()? toggleObscure,
// }) =>
//     TextFormField(
//       controller: controller,
//       keyboardType: type,
//       cursorColor: Colors.black,
//       obscureText: obscureText,
//       decoration: InputDecoration(
//         focusColor: Colors.black,
//         labelText: label,
//         iconColor: Colors.black,
//         suffixIcon: GestureDetector(
//           onTap: toggleObscure,
//           child: Icon(obscureText ? Icons.visibility_off : Icons.visibility),
//         ),
//         hintStyle: const TextStyle(
//           color: Color.fromARGB(255, 182, 182, 179),
//         ),
//       ),
//       validator: validate,
//     );

// Widget myTextFormField2({
//   required TextEditingController controller,
//   required TextInputType type,
//   required Function? Function(String?) validate,
//   required String label,
//   required IconData prefix,
//
// }) =>
//     TextFormField(
//       controller: controller,
//       keyboardType: TextInputType.visiblePassword,
//       cursorColor: Colors.black,
//       decoration: InputDecoration(
//         focusColor: Colors.black,
//         labelText: label,
//         iconColor: Colors.black,
//         suffixIcon: GestureDetector(
//           child: Icon(prefix),
//         ),
//         hintStyle: const TextStyle(
//           color: Color.fromARGB(255, 182, 182, 179),
//         ),
//       ),
//     );

// Widget myTextFormField1({
//   required TextEditingController controller,
//   required TextInputType type,
//   required Function(String?) validate,
//   required String label,
//   required IconData prefix,
//   String? value,
//
// }) =>
//     TextFormField(
//       controller: controller,
//       keyboardType: TextInputType.visiblePassword,
//       cursorColor: Colors.black,
//       decoration: InputDecoration(
//         focusColor: Colors.black,
//         labelText: label,
//         iconColor: Colors.black,
//         suffixIcon: GestureDetector(
//
//           child: Icon(prefix),
//         ),
//         hintStyle: const TextStyle(
//           color: Color.fromARGB(255, 182, 182, 179),
//         ),
//       ),
//       validator: validate(value),
//     );
