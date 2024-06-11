import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController?  controller;
  final String labelText;
  bool noIcon;
  Function (String)? onChnaged;

   CustomTextField({super.key,required this.labelText,  this.noIcon= true ,required this.controller,required this.onChnaged});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
bool isObsucure=false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isObsucure,
      onChanged: widget.onChnaged,
      controller: widget.controller,
      decoration: InputDecoration(
        suffixIconColor:  const Color(0xFFE21A70),
        suffixIcon: widget.noIcon

        ?SizedBox()
        :IconButton(
          onPressed: (){
            setState(() {
              isObsucure==!isObsucure;
            });
          },
           icon: isObsucure
           ?Icon(Icons.visibility)
           :Icon(Icons.visibility_off)
           ),
           labelText: widget.labelText,
           contentPadding: EdgeInsets.all(15),
           focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Colors.grey[200]!
            )
           ),
            border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Colors.grey[200]!
            )
           )

      ),
    );
  }
}