import 'package:flutter/material.dart';
import 'package:bnipersonalnotif/components/text_field_container.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        cursorColor: Colors.deepOrangeAccent,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: Colors.deepOrangeAccent,
          ),
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.teal),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
