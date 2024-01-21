import 'dart:math';

import 'package:flutter/material.dart';
import 'package:messeger_app/core/ui_kits/ui_kits.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({
    super.key,
    required this.fullName,
    required this.lastMessage,
    required this.lastUpdate,
    required this.isYouLast,
    required this.onPressed,
  });

  final String fullName;
  final String lastMessage;
  final String lastUpdate;
  final bool isYouLast;
  final VoidCallback onPressed;

  ///METHODS => Replace Bloc

  //TODO change check first char name
  Gradient getRandomGradient() {
    final gradientList = [
      AppColors.blueSky,
      AppColors.orangeRed,
      AppColors.whiteGreen,
    ];

    Random random = Random();
    int randomIndex = random.nextInt(gradientList.length);

    return gradientList[randomIndex];
  }

  String getInitialsFromFullName(String fullName) {
    List<String> nameParts = fullName.split(' ');

    if (nameParts.length < 2) {
      return '';
    }

    String firstInitial = nameParts[0][0].toUpperCase();
    String lastInitial = nameParts[1][0].toUpperCase();

    return '$firstInitial$lastInitial';
  }

  ///

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        InkWell(
          onTap: onPressed,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
            ),
            child: SizedBox(
              height: 50,
              child: Row(
                children: [
                  //Avatar
                  Container(
                    width: 50,
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: getRandomGradient(),
                    ),
                    child: Text(
                      getInitialsFromFullName(fullName),
                      textAlign: TextAlign.center,
                      style: AppTextStyles.avatarTitle,
                    ),
                  ),

                  const SizedBox(width: 12),

                  //Content
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '$fullName\n',
                          style: AppTextStyles.titleTile,
                        ),
                        TextSpan(
                          text: isYouLast ? 'Вы: ' : '',
                          style: AppTextStyles.titleDescription,
                        ),
                        TextSpan(
                          text: lastMessage,
                          style: AppTextStyles.titleDescription.copyWith(
                            color: AppColors.textSecondary,
                          ),
                        )
                      ],
                    ),
                  ),

                  const Spacer(),

                  //Last Update
                  Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      lastUpdate,
                      style: AppTextStyles.titleDescription.copyWith(
                        color: AppColors.textSecondary,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        const Divider(),
      ],
    );
  }
}
