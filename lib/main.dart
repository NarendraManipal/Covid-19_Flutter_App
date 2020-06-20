import 'package:covid_19/datasource.dart';
import 'package:covid_19/homepage.dart';
import 'package:covid_19/pages/countries.dart';
import 'package:covid_19/pages/faqs.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      fontFamily: 'Lato',
      primaryColor: primaryBlack,
    ),
    initialRoute: '/countryPage',
    routes: {
      '/': (context) => HomePage(),
      '/faqspage': (context) => FAQSPage(),
      '/countryPage': (context) => CountryPage(),
    },
  ));
}