import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// ignore: camel_case_types
class teamvsteam extends StatefulWidget {
  final String? team1name;
  final String? team2name;
  final String? team1logo;
  final String? team2logo;
  final String? time;

  const teamvsteam({
    Key? key,
    this.team1name,
    this.team2name,
    this.team1logo,
    this.team2logo,
    this.time,
  }) : super(key: key);

  @override
  _teamvsteamState createState() => _teamvsteamState();
}

// ignore: camel_case_types
class _teamvsteamState extends State<teamvsteam> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                height: 70,
                width: 70,
                child: SvgPicture.asset(
                  "${widget.team1logo}",
                ),
              ),
              Text(
                "${widget.team1name}",
                style: TextStyle(fontSize: 15),
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                  "${widget.time}",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
              Container(
                  height: 20,
                  width: 90,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Colors.deepOrange,
                    ),
                    borderRadius: BorderRadius.circular(10),
                    // color: Colors.amber,
                  ),
                  child: Center(
                    child: Text(
                      "Tickets",
                      style: TextStyle(fontSize: 13),
                    ),
                  )),
            ],
          ),
          Column(
            children: [
              Container(
                height: 70,
                width: 70,
                child: SvgPicture.asset(
                  "${widget.team2logo}",
                ),
              ),
              Text(
                "${widget.team2name}",
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
