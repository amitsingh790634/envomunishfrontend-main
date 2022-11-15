// ignore_for_file: file_names, must_be_immutable, prefer_const_constructors

import 'package:envo_munish/essitnails/essentail_files.dart';

class Textfields extends StatelessWidget {
  Textfields(
      {Key? key,
      required this.controller,
      required this.validator,
      required this.label,
      this.obscure = false})
      : super(key: key);
  final String? Function(String?) validator;
  bool obscure;
  String label;
  TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PhysicalModel(
          color: Colors.white,
          elevation: 4,
          borderRadius: BorderRadius.all(Radius.circular(50)),
          child: SizedBox(
            width: 100.w,
            height: 6.h,
          ),
        ),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 2.w),
          child: TextFormField(
            obscureText: obscure,
            validator: validator,
            controller: controller,
            decoration: InputDecoration(
              prefixText: "+91 |",
                constraints: BoxConstraints(maxWidth: 100.w),
                border: InputBorder.none,
                hintText: label
                
                ),
          ),
        )
      ],
    );
  }
}
