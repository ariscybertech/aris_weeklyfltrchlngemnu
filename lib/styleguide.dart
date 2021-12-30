import 'package:flutter/material.dart';

const InputDecoration inputDecoration = const InputDecoration(
  suffixIcon: Icon(
    Icons.person_outline,
    color: Colors.white,
    size: 25,
  ),
  labelText: "Name",
  labelStyle: TextStyle(
    color: Colors.white,
    letterSpacing: 1,
  ),
  enabledBorder: UnderlineInputBorder(
    borderSide: BorderSide(
      color: Colors.white,
    ),
  ),
  focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(
      color: Colors.white,
    ),
  ),
  errorStyle: TextStyle(
    color: Colors.white,
  ),
  errorBorder: UnderlineInputBorder(
    borderSide: BorderSide(
      color: Colors.white,
    ),
  ),
  focusedErrorBorder: UnderlineInputBorder(
    borderSide: BorderSide(
      color: Colors.white,
    ),
  ),
);
