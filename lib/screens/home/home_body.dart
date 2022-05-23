import 'package:flutter/material.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 10,
        ),
        Card(
          clipBehavior: Clip.antiAlias,
          elevation: 2,
          child: Column(
            children: [
              ListTile(
                leading: Icon(
                  Icons.account_circle,
                  size: 40,
                ),
                trailing: Icon(
                  Icons.more_horiz,
                  size: 40,
                ),
                title: const Text('Balevane - Warden'),
                subtitle: Text(
                  '12:00 pm',
                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                ),
              ),
              Image.asset(
                'assets/images/img.png',
                width: 150,
                fit: BoxFit.fitHeight,
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Card(
          clipBehavior: Clip.antiAlias,
          elevation: 2,
          child: Column(
            children: [
              ListTile(
                leading: Icon(
                  Icons.account_circle,
                  size: 40,
                ),
                trailing: Icon(
                  Icons.more_horiz,
                  size: 40,
                ),
                title: const Text('Balevane - Warden'),
                subtitle: Text(
                  '12:00 pm',
                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                ),
              ),
              Image.asset(
                'assets/images/rit_logo.png',
                width: 150,
                fit: BoxFit.fitHeight,
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Card(
          clipBehavior: Clip.antiAlias,
          elevation: 2,
          child: Column(
            children: [
              ListTile(
                leading: Icon(
                  Icons.account_circle,
                  size: 40,
                ),
                trailing: Icon(
                  Icons.more_horiz,
                  size: 40,
                ),
                title: const Text('Balevane - Warden'),
                subtitle: Text(
                  '12:00 pm',
                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                ),
              ),
              Image.asset(
                'assets/images/img.png',
                width: 150,
                fit: BoxFit.fitHeight,
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Card(
          clipBehavior: Clip.antiAlias,
          elevation: 2,
          child: Column(
            children: [
              ListTile(
                leading: Icon(
                  Icons.account_circle,
                  size: 40,
                ),
                trailing: Icon(
                  Icons.more_horiz,
                  size: 40,
                ),
                title: const Text('Balevane - Warden'),
                subtitle: Text(
                  '12:00 pm',
                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                ),
              ),
              Image.asset(
                'assets/images/rit_logo.png',
                width: 150,
                fit: BoxFit.fitHeight,
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Card(
          clipBehavior: Clip.antiAlias,
          elevation: 2,
          child: Column(
            children: [
              ListTile(
                leading: Icon(
                  Icons.account_circle,
                  size: 40,
                ),
                trailing: Icon(
                  Icons.more_horiz,
                  size: 40,
                ),
                title: const Text('Balevane - Warden'),
                subtitle: Text(
                  '12:00 pm',
                  style: TextStyle(color: Colors.black.withOpacity(0.6)),
                ),
              ),
              Image.asset(
                'assets/images/img.png',
                width: 150,
                fit: BoxFit.fitHeight,
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
