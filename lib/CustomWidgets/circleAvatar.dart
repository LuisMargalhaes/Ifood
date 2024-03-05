import 'package:flutter/material.dart';

//Widget que retorna uma imagem circular
Widget circleAvatar(String img) {
  return SizedBox(
    width: 50,
    height: 50,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
        radius: 50,
        backgroundImage: NetworkImage(img),
      ),
    ),
  );
}
