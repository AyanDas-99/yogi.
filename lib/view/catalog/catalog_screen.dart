import 'package:flutter/material.dart';

class CatalogScreen extends StatefulWidget {
  const CatalogScreen({super.key});

  @override
  State<CatalogScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<CatalogScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Text("Catalog")],
    );
  }
}
