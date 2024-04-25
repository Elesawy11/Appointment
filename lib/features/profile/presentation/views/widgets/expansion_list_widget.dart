import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/utils/color.dart';
import '../../../../../core/utils/styles.dart';

class ExpandsionListWidget extends StatefulWidget {
  const ExpandsionListWidget({super.key});

  @override
  State<ExpandsionListWidget> createState() => _ExpandsionListWidgetState();
}

class _ExpandsionListWidgetState extends State<ExpandsionListWidget> {
  final List<Item> data = List<Item>.generate(6, (index) {
    return Item(
      headerText: 'What should I expect during a doctor\'s appointment?',
      expandedText:
          'During a doctor\'s appointment, you can expect to discuss your medical history, current symptoms or concerns, and any medications or treatments you are taking. The doctor will likely perform a physical exam and may order additional tests or procedures if necessary.',
      isExpanded: false,
    );
  });
  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList(
      elevation: 1,
      expansionCallback: (index, isExpanded) {
        data[index].isExpanded = isExpanded;

        setState(() {});
      },
      children: data.map<ExpansionPanel>(
        (Item item) {
          return ExpansionPanel(
            headerBuilder: (context, isExpanded) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 6.w),
                child: Text(
                  item.headerText,
                  style: Styles.font14Regular.copyWith(
                    color: ColorManager.darkBlue,
                  ),
                ),
              );
            },
            body: Padding(
              padding: EdgeInsets.only(left: 6.w, right: 6.w, bottom: 6.h),
              child: Text(
                item.expandedText,
                style: Styles.font12Regular.copyWith(
                  color: ColorManager.grey75,
                ),
              ),
            ),
            isExpanded: item.isExpanded,
          );
        },
      ).toList(),
    );
  }
}

class Item {
  final String headerText, expandedText;
  bool isExpanded;

  Item({
    required this.headerText,
    required this.expandedText,
    this.isExpanded = false,
  });
}
