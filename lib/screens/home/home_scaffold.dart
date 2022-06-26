import 'package:flutter/material.dart';

Scaffold homeScafold(context, widget) {
  return Scaffold(
    appBar: AppBar(
      // Here we take the value from the MyHomePage object that was created by
      // the App.build method, and use it to set our appbar title.
      title: Text(widget.title),
    ),
    body: const Center(
      // Center is a layout widget. It takes a single child and positions it
      // in the middle of the parent.
      child: Image(
          image: NetworkImage(
              'https://image.made-in-china.com/155f0j00eJqiwAVzlRbt/Double-Crazy-Flutter-Sleeve-Ruffle-Hem-Schiffy-Summer-Sexy-Women-Fashion-Short-Sleeves-Dress.jpg')),
    ),
  );
}
