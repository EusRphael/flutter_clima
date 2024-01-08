import 'package:flutter/material.dart';
import 'package:flutter_clima/screens/loading_screen.dart';
import 'package:flutter_clima/services/networking.dart';
import 'package:flutter_clima/screens/location_screen.dart';
import 'package:flutter_clima/utilities/constants.dart';

class CityScreen extends StatefulWidget {
  const CityScreen({super.key});

  @override
  State<CityScreen> createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  String newcity = '' ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/city_background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        constraints: const BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back_ios,
                    size: 50.0,
                  ),
                ),
              ),
              Container(
                  padding: const EdgeInsets.all(20.0),
                  child:   TextField(
                    onChanged: (value){
                      newcity = value;
                    },
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        icon:  Icon(
                          Icons.location_city,
                          color: Colors.white,
                        ),
                        hintText: 'Type city here',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                          borderSide: BorderSide.none,
                        )
                    ),
                  )
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context,newcity);
                },
                child: const Text(
                  'Get Weather',
                  style: kButtonTextStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}