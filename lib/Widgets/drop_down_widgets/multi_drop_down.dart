
import 'package:ezio_fitness/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

class MultiDropdownWidget extends StatelessWidget {
  final List<String> items;
  final List<String> selectedItems;
  final Function(List<String>) onSelectionChanged;
  final String? dateText;

  const MultiDropdownWidget({
    Key? key,
    required this.items,
    required this.selectedItems,
    required this.onSelectionChanged,
    this.dateText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              height: 30,
              decoration: BoxDecoration(
                border: Border.all(color: blueColor),
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(14),
              ),
              child: InkWell(
                onTap: () async {
                  final selectedValues = await showDialog<List<String>>(
                    context: context,
                    builder: (context) {
                      return MultiSelectDialog(
                        items: items,
                        initialSelectedItems: selectedItems,
                      );
                    },
                  );
                  if (selectedValues != null) {
                    onSelectionChanged(selectedValues);
                  }
                },
                child: Row(
                  children: [
                    Text(
                      selectedItems.isEmpty
                          ? 'Select Days'
                          : selectedItems.join(', '),
                      style: style.copyWith(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                    const Icon(Icons.keyboard_arrow_down_outlined, color: Colors.black),
                  ],
                ),
              ),
            ),
            dateText != null
                ? Text(
              dateText ?? '',
              style: style.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            )
                : const SizedBox.shrink(),
          ],
        ),
        dateText != null
            ? Divider(
          height: 20,
          color: Colors.grey.shade200,
        )
            : const SizedBox.shrink()
      ],
    );
  }
}

class MultiSelectDialog extends StatefulWidget {
  final List<String> items;
  final List<String> initialSelectedItems;

  const MultiSelectDialog({
    Key? key,
    required this.items,
    required this.initialSelectedItems,
  }) : super(key: key);

  @override
  _MultiSelectDialogState createState() => _MultiSelectDialogState();
}

class _MultiSelectDialogState extends State<MultiSelectDialog> {
  List<String> _selectedItems = [];

  @override
  void initState() {
    super.initState();
    _selectedItems = List.from(widget.initialSelectedItems);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Select Days'),
      content: SingleChildScrollView(
        child: ListBody(
          children: widget.items.map((item) {
            return CheckboxListTile(
              activeColor: Colors.green,
              value: _selectedItems.contains(item),
              title: Text(item),
              controlAffinity: ListTileControlAffinity.leading,
              onChanged: (bool? value) {
                setState(() {
                  if (value != null) {
                    if (value) {
                      _selectedItems.add(item);
                    } else {
                      _selectedItems.remove(item);
                    }
                  }
                });
              },
            );
          }).toList(),
        ),
      ),
      actions: <Widget>[

        TextButton(
          child: Text('Cancel'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        TextButton(
          child: Text('OK'),
          onPressed: () {
            Navigator.of(context).pop(_selectedItems);
          },
        ),
      ],
    );
  }
}
