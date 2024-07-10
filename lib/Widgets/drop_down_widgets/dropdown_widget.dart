
import 'package:ezio_fitness/utils/constants.dart';
import 'package:flutter/material.dart';

class CustomDropdownWidget extends StatefulWidget {
  final List<String> items;
  final String? dropDownValue;
  final String? dateText;
  final Function(String?) onChanged;

  const CustomDropdownWidget({
    Key? key,
    required this.items,
    required this.dropDownValue,
    required this.onChanged,
    this.dateText,
  }) : super(key: key);

  @override
  _CustomDropdownWidgetState createState() => _CustomDropdownWidgetState();
}

class _CustomDropdownWidgetState extends State<CustomDropdownWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8),
              height: 30,
              decoration: BoxDecoration(
                border: Border.all(color: blueColor),
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(14),
              ),
              child: DropdownButton(
                items: widget.items.map((String item) {
                  return DropdownMenuItem(
                      value: item,
                      child: Text(
                        item,
                        style: style.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,color: Colors.black),)
                  );
                }).toList(),
                onChanged: widget.onChanged,
                value: widget.dropDownValue,
                icon: Icon(Icons.keyboard_arrow_down_outlined, color: Colors.black),
                borderRadius: BorderRadius.circular(16),
                underline: SizedBox(height: 0,),
                iconSize: 30,
                dropdownColor: Colors.white,
              ),
            ),
            widget.dateText!=null
                ?Text(widget.dateText??'',style: style.copyWith(fontSize: 14,fontWeight: FontWeight.w600),)
                :SizedBox.shrink()
          ],
        ),
        widget.dateText!=null
            ?Divider(
          height: 20,
          color: Colors.grey.shade200,
        )
            :SizedBox.shrink()
      ],
    );
  }
}