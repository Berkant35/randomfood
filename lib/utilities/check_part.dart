
import 'package:flutter/material.dart';
import 'package:randomfood/utilities/widgets/create_food_checkbox.dart';


class CheckWidget extends StatefulWidget {
  final double w;
  final bool initialValue;
  final Function(bool)? checkYes;
  final Function(bool)? checkNo;

  const CheckWidget(this.w, this.initialValue, this.checkYes,
      this.checkNo, {Key? key}) : super(key: key);
  @override
  _CheckWidgetState createState() => _CheckWidgetState();
}

class _CheckWidgetState extends State<CheckWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CreateCheckBox(
                w: widget.w,
                nameMeal: 'Yes',
                initialValue: widget.initialValue,
                onChanged: widget.checkYes),
            CreateCheckBox(
                w: widget.w,
                nameMeal: 'No',
                initialValue: !widget.initialValue,
                onChanged: widget.checkNo
            ),
          ],
        ),
      ],
    );
  }
}
