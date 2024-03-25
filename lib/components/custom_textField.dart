import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController? controller;
  final String labelText;
  final TextInputType keyboardType;
  final bool isPassword;
  final Color color;
  final double maxWidth;
  final String? Function(String?)? validator;
  final bool hasError;
  //final List<FilteringTextInputFormatter>? inputFormatters;


   CustomTextField({super.key, 
  this.controller, 
  required this.labelText, 
  this.keyboardType= TextInputType.text, 
  this.isPassword= false, 
  this.color= const Color(0xFFA3A3A3),  
   this.maxWidth= 400,
   this.validator,
   this.hasError= false,
   //this.inputFormatters= 
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool obscureText= false;
  @override
  void initState() {
    super.initState();
    obscureText= widget.isPassword;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: widget.maxWidth),
      child: TextFormField(
        controller: widget.controller,
        obscureText: obscureText,
        keyboardType: widget.keyboardType,
        //inputFormatters: widget.inputFormatters,
        decoration: InputDecoration(
        labelText: widget.labelText,
          suffixIcon: widget.isPassword? GestureDetector(
            onTap: (){
              setState(() {
                obscureText =!obscureText;
              });
            },
            child: Icon(obscureText? Icons.visibility_off_outlined: Icons.visibility_outlined),
          )
          : null,
          border: const OutlineInputBorder(),
          labelStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color(0xFFA3A3A3),
            ),
            
            focusedBorder: const OutlineInputBorder(
            //borderSide: BorderSide(color: Color(0xFF1780C2)),
             borderSide: BorderSide(
          //  color: hasError ? Colors.red : Colors.grey, // Set border color based on error state
          ),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFA3A3A3)),
          ),
          floatingLabelStyle: const TextStyle(color: Color(0xFF1780C2)),
        ),
      ),
    );
  }
}