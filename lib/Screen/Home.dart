import 'package:flutter/material.dart';
import 'package:padma_technology/AppHelper/AppColors.dart';
import 'package:padma_technology/AppProvider/UserProvider.dart';
import 'package:padma_technology/Widgets/UserCard.dart';
import 'package:padma_technology/main.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Provider.of<UserProvider>(context)..getUser();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          language.home,
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      backgroundColor: AppColors.backgroundColor,
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0.0,
            left: 0.0,
            right: 0.0,
            bottom: 0.0,
            child: Consumer<UserProvider>(
              builder: (context, userProvider, _) {
                if (userProvider.user == null) {
                  return Align(
                    alignment: Alignment.center,
                    child: CircularProgressIndicator(),
                  );
                } else {
                  return ListView.builder(
                      itemCount: userProvider.user.data.length,
                      itemBuilder: (context, int index) {
                        print("Data Found");
                        return UserCard(
                          data: userProvider.user.data[index],
                        );
                      });
                }
              },
            ),
          ),
          Positioned(
            bottom: 10.0,
            right: 10,
            child: FloatingActionButton(
              backgroundColor: Colors.green,
              onPressed: () {},
              child: Icon(Icons.add),
            ),
          ),
        ],
      ),
    );
  }
}
