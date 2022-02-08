import 'package:flutter/material.dart';

class TextFormFieldDecoration {
  final InputDecoration nameDecoration = InputDecoration(
    prefixIcon: const Icon(
      Icons.person,
      color: Color(0xffE88327),
    ),
    labelStyle:
        const TextStyle(color: Color(0xffE88327), fontWeight: FontWeight.w600),
    labelText: "Nome",
    hintText: "Carlos",
    hintStyle: const TextStyle(color: Color(0xffE88327)),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Color(0xffE88327), width: 3.0),
      borderRadius: BorderRadius.circular(40),
    ),
    border: OutlineInputBorder(
      borderSide: const BorderSide(color: Color(0xffE88327), width: 3.0),
      borderRadius: BorderRadius.circular(40),
    ),
  );
  final InputDecoration emailDecoration = InputDecoration(
    prefixIcon: const Icon(
      Icons.mail,
      color: Color(0xffE88327),
    ),
    labelStyle:
        const TextStyle(color: Color(0xffE88327), fontWeight: FontWeight.w600),
    labelText: "E-mail",
    hintText: "admin@gmail.com",
    hintStyle: const TextStyle(color: Color(0xffE88327)),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Color(0xffE88327), width: 3.0),
      borderRadius: BorderRadius.circular(40),
    ),
    border: OutlineInputBorder(
      borderSide: const BorderSide(color: Color(0xffE88327), width: 3.0),
      borderRadius: BorderRadius.circular(40),
    ),
  );
  final InputDecoration passDecoration = InputDecoration(
    prefixIcon: const Icon(
      Icons.vpn_key_rounded,
      color: Color(0xffE88327),
    ),
    labelStyle:
        const TextStyle(color: Color(0xffE88327), fontWeight: FontWeight.w600),
    labelText: "Senha",
    hintText: "123456",
    hintStyle: const TextStyle(color: Color(0xffE88327)),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Color(0xffE88327), width: 3.0),
      borderRadius: BorderRadius.circular(40),
    ),
    border: OutlineInputBorder(
      borderSide: const BorderSide(color: Color(0xffE88327), width: 3.0),
      borderRadius: BorderRadius.circular(40),
    ),
  );
  final Decoration bkDecoration = const BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      colors: [
        Color(0xffE8B09F),
        Color(0xffE8BC7C),
      ],
    ),
  );
}
