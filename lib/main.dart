import 'dart:io';

import 'package:flutter/material.dart';
import 'package:window_size/window_size.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    setWindowTitle('WhatsApp Desktop');
    setWindowMinSize(const Size(800, 500));
    setWindowMaxSize(Size.infinite);
  }
  runApp(const WhatsAppDekstop());
}

class WhatsAppDekstop extends StatelessWidget {
  const WhatsAppDekstop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFF141B21),
        body: Row(
          children: [
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFF2A2F32),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFF23282B),
                          offset: Offset(0, 0),
                          blurRadius: 1,
                        )
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          CircleAvatar(
                            backgroundImage: AssetImage('assets/pp.jpg'),
                          ),
                          SizedBox(width: 20),
                          Icon(
                            Icons.circle_outlined,
                            color: Color(0xFFAFB4B7),
                          ),
                          SizedBox(width: 20),
                          Icon(
                            Icons.check_box_outline_blank_outlined,
                            color: Color(0xFFAFB4B7),
                          ),
                          SizedBox(width: 20),
                          Icon(
                            Icons.expand_more_outlined,
                            color: Color(0xFFAFB4B7),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 7),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: const Color(0xFF2A2F32),
                    ),
                    child: const ListTile(
                      leading: Icon(
                        Icons.search,
                        color: Color(0xFFAFB4B7),
                      ),
                      title: Text(
                        'Search or start new chat',
                        style: TextStyle(
                          color: Color(0xFFAFB4B7),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  const Divider(
                    color: Color(0xFFAFB4B7),
                  ),
                  Chat(
                      picture: 'assets/idcamp.jpg',
                      title: 'Team Flutter Dev',
                      date: '13/12/2021',
                      subtitle:
                          'Learn With Amaker : KBL KBL KBL Keren banget loch'),
                  Chat(
                    picture: 'assets/mcf.jpg',
                    title: 'MCF AZ 3000',
                    date: '12/12/2021',
                    subtitle: '+62 821-3456-7890 : Saya sudah login Pak',
                  ),
                  Chat(
                    picture: 'assets/ftk.jpg',
                    title: 'FTK Bali',
                    date: '10/12/2021',
                    subtitle:
                        'Made Bagus : Aku lancar-lancar aja kok, coba kamu ulang lagi',
                  ),
                  Chat(
                    picture: 'assets/sifors.jpg',
                    title: 'SIFORS 2018',
                    date: '09/12/2021',
                    subtitle:
                        'Putu Senang : Susah sekali nyari judul skripsi ini nok, pusing aku',
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                color: const Color(0xFF23282B),
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/wa.png',
                      height: 250,
                      width: 250,
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Text(
                      'Keep your phone connected',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'WhatsApp connects to your phone and to sync messages. To reduce data usage, connect your phone to Wi-Fi.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Chat extends StatelessWidget {
  final String picture;
  final String title;
  final String date;
  final String subtitle;

  const Chat({
    Key? key,
    required this.picture,
    required this.title,
    required this.date,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(backgroundImage: AssetImage(picture), radius: 23),
      title: Row(
        children: [
          Text(
            title,
            style: TextStyle(color: Colors.white),
            overflow: TextOverflow.ellipsis,
          ),
          Spacer(),
          Text(
            date,
            style: TextStyle(
              fontSize: 12,
              color: Color(0xFFAFB4B7),
            ),
          ),
        ],
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 8),
          Text(
            subtitle,
            style: TextStyle(
              color: Color(0xFFAFB4B7),
              fontSize: 14,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(
            height: 5,
          ),
          Divider(
            color: Color(0xFFAFB4B7),
          ),
        ],
      ),
    );
  }
}
