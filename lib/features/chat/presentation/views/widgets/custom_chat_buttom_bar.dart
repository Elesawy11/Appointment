import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/color.dart';
import '../../../../../core/utils/spacer.dart';
import '../../../../../core/widgets/app_text_form_field.dart';

class CustomChatButtomBar extends StatefulWidget {
  const CustomChatButtomBar({
    super.key,
  });

  @override
  State<CustomChatButtomBar> createState() => _CustomChatButtomBarState();
}

bool isActive = false;
final ImagePicker picker = ImagePicker();

class _CustomChatButtomBarState extends State<CustomChatButtomBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AppTextFormField(
            hintText: 'Type a message ...',
            onTapOutside: (p0) {
              isActive = false;
              setState(() {});
            },
            onTap: () {
              isActive = true;
              setState(() {});
            },
            validator: (value) {},
            prefixIcon: const Icon(
              Icons.emoji_emotions_outlined,
              color: ColorManager.grey9E,
            ),
            suffixIcon: SizedBox(
              width: 24.w,
              child: Row(
                children: [
                  const Icon(
                    FontAwesomeIcons.paperclip,
                    color: ColorManager.grey9E,
                  ),
                  horizontalSpace(4),
                  GestureDetector(
                    onTap: () async {
                      await picker.pickImage(source: ImageSource.gallery);

                      setState(() {});
                    },
                    child: const Icon(
                      Icons.camera_alt_rounded,
                      color: ColorManager.grey9E,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        horizontalSpace(12),
        SvgPicture.asset(
          isActive ? Assets.sendMessage : Assets.record,
        )
      ],
    );
  }
}
