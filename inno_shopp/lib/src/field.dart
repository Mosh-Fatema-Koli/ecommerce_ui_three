//
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:inno_shopp/src/widget/validation.dart';
//
//
// class TextFieldPage extends StatelessWidget {
//
//   TextFieldPage({super.key});
//
//   TextEditingController _controller =TextEditingController();
//   final _formKey = GlobalKey<FormState>();
//   var isEmpty = false.obs;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//       body: Form(
//
//
//         child:Obx(() =>  Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Card(
//
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(10), // Adjust the value as needed
//                 side: BorderSide(
//                   color: isEmpty.value == true ? Colors.red : Colors.white,
//                   width: 1,
//                   style: BorderStyle.solid,
//                 ),
//               ),
//              // shape: Border(right: BorderSide(color: isEmpty.value == true ? Colors.red : Colors.white,width: 1,style:BorderStyle.solid),top: BorderSide(color: isEmpty.value == true ? Colors.red : Colors.white,width: 1,style:BorderStyle.solid  ),left: BorderSide(color: isEmpty.value == true ? Colors.red : Colors.white,width: 1,style:BorderStyle.solid  ),bottom: BorderSide(color: isEmpty.value == true ? Colors.red : Colors.white,width: 1,style:BorderStyle.solid  )),
//               child: Padding(
//                 padding: const EdgeInsets.all(5),
//                 child: SignUpTextField(
//                   hintText: "Email",
//                   controller: _controller,
//                   lebelText:"Email",
//                   validator: Validators.emailValidator,
//                   suffixIcon: isEmpty.value == true ? Icon(Icons.close,color: Colors.red,size: 14,) : null,
//                 ),
//               ),
//             ),
//             isEmpty.value == true ? Text("Not a valid email address. Should be your@email.com",style: TextStyle(color: Colors.red),):Container(),
//
// SizedBox(
//   height: 10,
// ),
//             MaterialButton(onPressed: (){
//
//               if (_controller.text == isEmpty) {
//
//                      print("Clicked");
//               }else{
//                 print(isEmpty);
//                 isEmpty.value = true;
//               }
//
//
//             },child: Text("Send"),)
//
//
//           ],
//         )),
//       ),
//     );
//   }
// }
