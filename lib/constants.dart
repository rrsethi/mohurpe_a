import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const kPrimaryColor = Color(0xff0d6efd);
// const kPrimaryColor = Color(0xff000000);
const kPrimaryLightColor = Color(0xFFF1E6FF);

void hideKeyboard(BuildContext context) {
  SystemChannels.textInput.invokeMethod('TextInput.hide');
  FocusScope.of(context).requestFocus(FocusNode());
}
