import 'package:esign/view/pages/dashboard.dart';
import 'package:esign/view/pages/inbox.dart';
import 'package:esign/view/pages/profile.dart';
import 'package:esign/view/pages/star.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Layout extends StatefulWidget {
  const Layout({super.key});

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {

  int currentTab = 0;

  Widget getContent() {
    switch (currentTab) {
      case 0:
        return Dashboard();
      case 1:
        return Inbox();
      case 2:
        return Star();
      case 3:
        return Profle();
      default:
        return Dashboard();
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("uus",style: const TextStyle(fontSize: 14,color: Colors.black)),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0
      ),
      body: getContent(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.create),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 6,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget> [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home,
                          color: currentTab == 0 ? Colors.blue : Colors.grey,
                        ),
                        Text('Home',style: TextStyle(color: currentTab == 0 ? Colors.blue : Colors.grey),)
                      ],
                      )
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.mail,
                          color: currentTab == 1 ? Colors.blue : Colors.grey,
                        ),
                        Text('Inbox',style: TextStyle(color: currentTab == 1 ? Colors.blue : Colors.grey),)
                      ],
                      )
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star,
                          color: currentTab == 2 ? Colors.blue : Colors.grey,
                        ),
                        Text('Star',style: TextStyle(color: currentTab == 2 ? Colors.blue : Colors.grey),)
                      ],
                      )
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person,
                          color: currentTab == 3 ? Colors.blue : Colors.grey,
                        ),
                        Text('Profile',style: TextStyle(color: currentTab == 3 ? Colors.blue : Colors.grey),)
                      ],
                      )
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}