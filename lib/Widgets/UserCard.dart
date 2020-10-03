import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:padma_technology/ApiHelper/ApiUrl.dart';
import 'package:padma_technology/AppHelper/AppSpaces.dart';
import 'package:padma_technology/AppHelper/AppStyle.dart';
import 'package:padma_technology/Model/User.dart';
import 'package:padma_technology/main.dart';

class UserCard extends StatelessWidget {
  Data data;

  UserCard({this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16, right: 16, top: 16),
      height: 100,
      width: mainWidth - 32,
      decoration: BoxDecoration(color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          image(),
          AppSpaces.spaces_width_25,
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                data.name,
                style: AppStyle.title(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Colors.black87),
              ),
              Text(
                data.email,
                style: AppStyle.title(
                    fontWeight: FontWeight.w300,
                    fontSize: 12,
                    color: Colors.black87),
              ),
              Text(
                data.phone,
                style: AppStyle.title(
                    fontWeight: FontWeight.w300,
                    fontSize: 12,
                    color: Colors.black87),
              ),
              Text(
                data.email,
                style: AppStyle.title(
                    fontWeight: FontWeight.w300,
                    fontSize: 12,
                    color: Colors.black87),
              ),
              Text(
                data.address,
                style: AppStyle.title(
                    fontWeight: FontWeight.w300,
                    fontSize: 12,
                    color: Colors.black87),
              ),
            ],
          ))
        ],
      ),
    );
  }

  image() {
    return Container(
      height: 70,
      width: 70,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage("${ApiUrl.image_url}${data.picture}"),
              fit: BoxFit.cover),
          shape: BoxShape.circle),
    );
  }
}
