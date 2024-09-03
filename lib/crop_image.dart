// // ignore_for_file: prefer_const_constructors

// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:crop_image/crop_image.dart';

// class ProfilePicturePicker extends StatefulWidget {
//   @override
//   _ProfilePicturePickerState createState() => _ProfilePicturePickerState();
// }

// class _ProfilePicturePickerState extends State<ProfilePicturePicker> {
//   final ImagePicker _picker = ImagePicker();
//   XFile? _image;
//   final CropController _cropController = CropController();

//   Future<void> _pickImage() async {
//     try {
//       final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
//       if (image != null) {
//         setState(() {
//           _image = image;
//         });
//       }
//     } catch (e) {
//       print('Error picking image: $e');
//     }
//   }

//   Future<void> _cropImage() async {
//     if (_image == null) return;

//     try {
//       final croppedImage = await _cropController.croppedImage();
//       if (croppedImage != null) {
//         setState(() {
//           _image = croppedImage;
//         });
//       }
//     } catch (e) {
//       print('Error cropping image: $e');
//     }
//   }

//   @override
//   void dispose() {
//     _cropController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Profile Picture Picker'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             _image != null
//                 ? CropImage(
//                     controller: _cropController,
//                     image: Image.file(File(_image!.path)),
//                   )
//                 : Text('No image selected.'),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: _pickImage,
//               child: Text('Pick Image'),
//             ),
//             ElevatedButton(
//               onPressed: _cropImage,
//               child: Text('Crop Image'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }