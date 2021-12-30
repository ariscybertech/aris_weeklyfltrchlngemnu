import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blue,
        child: Stack(
          children: <Widget>[
            Image(
              image: AssetImage('assets/images/menu_background.jpg'),
              fit: BoxFit.cover,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            ),
            ListView(
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 30,
                  ),
                  child: Row(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage('assets/images/doge.jpg'),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Jacek Kawiak",
                              style: TextStyle(
                                fontSize: 21,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "jacek@kawiak.com",
                              style: TextStyle(
                                height: 2,
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                MenuTile("Upcoming vacations", Icons.beach_access),
                MenuTile("Activity", Icons.show_chart),
                MenuTile("Near by area", Icons.zoom_in),
                MenuTile("Account settings", Icons.settings),
                MenuTile("Logout", Icons.exit_to_app),
                MenuTile("Tasks", Icons.access_time),
                MenuTile("Account settings", Icons.settings),
                MenuTile("Dashboard", Icons.dashboard),
              ],
            )
          ],
        ));
  }
}

class MenuTile extends StatelessWidget {
  final String title;
  final IconData icon;

  MenuTile(
    this.title,
    this.icon,
  );

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 3,
        ),
        leading: Icon(
          icon,
          color: Colors.white,
        ),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w300,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
