import 'package:flutter/material.dart';

const List<String> list = <String>[
  'spx',
  'jnt-cargo',
  'jnt',
  'tokopedia',
  'sicepat',
  'jne'
];
const List<String> listStatus = <String>['tracking', 'done'];

class ExpeditionsDropdown extends StatefulWidget {
  final TextEditingController expeditionSelected;

  const ExpeditionsDropdown({super.key, required this.expeditionSelected});

  @override
  State<ExpeditionsDropdown> createState() => _ExpeditionsDropdownState();
}

class _ExpeditionsDropdownState extends State<ExpeditionsDropdown> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Select Expedition'),
        DropdownMenu<String>(
          width: double.infinity,
          hintText: 'Select Expedition',
          // initialSelection: list.first,
          onSelected: (String? value) {
            setState(() {
              dropdownValue = value!;
              widget.expeditionSelected.text = value;
            });
          },
          dropdownMenuEntries: list.map<DropdownMenuEntry<String>>((String value) {
            return DropdownMenuEntry<String>(
                value: value, label: value.toUpperCase());
          }).toList(),
        ),
      ],
    );
  }
}

class ExpeditionStatusDropdown extends StatefulWidget {
  final TextEditingController statusSelected;

  const ExpeditionStatusDropdown({super.key, required this.statusSelected});

  @override
  State<ExpeditionStatusDropdown> createState() =>
      _ExpeditionStatusDropdownState();
}

class _ExpeditionStatusDropdownState extends State<ExpeditionStatusDropdown> {
  String dropdownValue = listStatus.first;

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<String>(
      width: double.infinity,
      hintText: 'Select Status',
      onSelected: (String? value) {
        setState(() {
          dropdownValue = value!;
          widget.statusSelected.text = value;
        });
      },
      dropdownMenuEntries: listStatus.map<DropdownMenuEntry<String>>((String value) {
        return DropdownMenuEntry<String>(
            value: value, label: value.toUpperCase());
      }).toList(),
    );
  }
}
