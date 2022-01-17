import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  List<MenuRowData> menuRow = [
    MenuRowData(Icons.bookmark, "Избранное"),
    MenuRowData(Icons.call, "Недавние звонки"),
    MenuRowData(Icons.computer, "Устройства"),
    MenuRowData(Icons.folder, "Папки с чатами"),
  ];

  List<MenuRowData> secondMenuRow = [
    MenuRowData(Icons.notifications_active, "Уведомления и звуки"),
    MenuRowData(Icons.lock, "Конфиденциальность"),
    MenuRowData(Icons.memory, "Данные и память"),
    MenuRowData(Icons.brush, "Оформление"),
    MenuRowData(Icons.language, "Язык"),
  ];

  UserProfile();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text("Flutter App"),
        ),
        body: Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _UserInfo(),
                  SizedBox(height: 30),
                  _MenuBlock(menuRow: menuRow),
                  SizedBox(height: 30),
                  _MenuBlock(menuRow: secondMenuRow)
                ],
              ),
            )));
  }
}

class MenuRowData {
  final IconData icon;
  final String text;

  MenuRowData(this.icon, this.text);
}

class _MenuBlock extends StatelessWidget {
  final List<MenuRowData> menuRow;

  const _MenuBlock({Key? key, required this.menuRow}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: menuRow.map((data) => _MenuWidgetRow(data: data)).toList(),
      ),
    );
  }
}

class _MenuWidgetRow extends StatelessWidget {
  final MenuRowData data;

  const _MenuWidgetRow({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(data.icon),
          SizedBox(width: 15),
          Expanded(child: Text(data.text)),
          Icon(Icons.chevron_right)
        ],
      ),
    );
  }
}

class _UserInfo extends StatelessWidget {
  const _UserInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(height: 30),
          _UserAvatarWidget(),
          SizedBox(height: 30),
          _UserNameWidget(),
          SizedBox(height: 10),
          _UserPhoneNumberWidget(),
          SizedBox(height: 10),
          _UserUsernameWidget(),
        ],
      ),
    );
  }
}

class _UserUsernameWidget extends StatelessWidget {
  const _UserUsernameWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '@username',
      style: TextStyle(color: Colors.grey, fontSize: 18),
    );
  }
}

class _UserPhoneNumberWidget extends StatelessWidget {
  const _UserPhoneNumberWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '+998 (99) 0674369',
      style: TextStyle(color: Colors.grey, fontSize: 15),
    );
  }
}

class _UserNameWidget extends StatelessWidget {
  const _UserNameWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Nuriddin Tashpulatov',
      style: TextStyle(
          color: Colors.black, fontSize: 25, fontWeight: FontWeight.w600),
    );
  }
}

class _UserAvatarWidget extends StatelessWidget {
  const _UserAvatarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(width: 100, height: 100, child: Placeholder());
  }
}
