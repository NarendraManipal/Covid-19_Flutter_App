import 'package:covid_19/datasource.dart';
import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';

class InfoPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget> [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/faqspage');
            },
            child: InfoPanelWidgets(title: 'FAQs')
          ),
          GestureDetector(
            onTap: () {
              // launch('covid19responsefund.org/en/');
            }, 
            child: InfoPanelWidgets(title: 'Donate')
          ),
          GestureDetector(
            onTap: () {
              // launch('https://www.who.int/emergencies/diseases/novel-coronavirus-2019/advice-for-public/myth-busters?gclid=CjwKCAjwxLH3BRApEiwAqX9arV-eYqzNjChVNvvdLGk_gyBf_TWxV3KHPUMDsJu-ZRWWt0jdxDGv5BoClRoQAvD_BwE');
            },
            child: InfoPanelWidgets(title: 'Myth Busters')
          ),
        ],
      ),
    );
  }
}

class InfoPanelWidgets extends StatelessWidget {

  final String title;

  const InfoPanelWidgets({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: primaryBlack,
        borderRadius: BorderRadius.all(Radius.circular(8.0))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          Icon(
            Icons.arrow_forward,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}