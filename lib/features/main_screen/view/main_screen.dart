import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:messeger_app/core/ui_kits/ui_kits.dart';
import 'package:messeger_app/features/main_screen/view/widgets/chat_tile.dart';
import 'package:messeger_app/features/register_screen/view/widgets/main_text_field.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Чаты',
          textAlign: TextAlign.start,
          style: AppTextStyles.h2,
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(68),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: MainTextField(
                  textEditingController: searchController,
                  title: 'Поиск',
                  icon: SvgPicture.asset('assets/icons/Search_s.svg'),
                ),
              ),
              const SizedBox(height: 24),
              const Divider(),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, index) => ChatTile(
            fullName: 'Виктор Власов',
            lastMessage: "Уже сделал?",
            lastUpdate: "2.12.23",
            isYouLast: true,
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
