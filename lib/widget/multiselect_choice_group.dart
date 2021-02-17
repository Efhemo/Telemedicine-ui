import 'package:flutter/material.dart';


class MultiSelectChipGroup extends StatefulWidget {
  final List<String> items;
  final Function(List<String>) onSelectionChanged;
  final Color selectedColor;
  final Color disabledColor;
  final Color labelSelectedColor;
  final Color labelDisabledColor;
  final EdgeInsetsGeometry padding;
  final double labelFontSize;
  final double horizontalChipSpacing;
  final double verticalChipSpacing;
  final List<String> preSelectedItems;
  MultiSelectChipGroup(
      {@required this.items,
        @required this.selectedColor,
        @required this.disabledColor,
        this.onSelectionChanged,
        this.labelSelectedColor,
        this.labelDisabledColor,
        this.padding,
        this.labelFontSize,
        this.horizontalChipSpacing,
        this.verticalChipSpacing,
        this.preSelectedItems});
  @override
  _MultiSelectChipGroupState createState() =>
      _MultiSelectChipGroupState(preSelectedItems, onSelectionChanged);
}
class _MultiSelectChipGroupState extends State<MultiSelectChipGroup> {
  List<String> selectedChoices = List<String>();
  _MultiSelectChipGroupState(List<String> preSelectedItems,
      Function(List<String>) onSelectionChanged) {
    if (preSelectedItems != null) {
      selectedChoices = preSelectedItems;
      if (onSelectionChanged != null) onSelectionChanged(selectedChoices);
    }
  }
  @override
  Widget build(BuildContext context) {
    final List<Widget> choiceChips = List<Widget>();
    widget.items.asMap().forEach((index, item) {
      choiceChips.add(choiceChip(item));
    });

    return Wrap(
      spacing: widget.horizontalChipSpacing == null
          ? 0
          : widget.horizontalChipSpacing,
      runSpacing:
      widget.verticalChipSpacing == null ? 0 : widget.verticalChipSpacing,
      children: choiceChips,
    );
  }
  Widget choiceChip(String item, {IconData leftIcon}) {
    return ChoiceChip(
      labelStyle: TextStyle(
          fontSize: widget.labelFontSize == null ? 18 : widget.labelFontSize,
          fontWeight: FontWeight.w400,
          color: selectedChoices.contains(item)
              ? widget.labelSelectedColor == null
              ? widget.disabledColor
              : widget.labelSelectedColor
              : widget.labelDisabledColor == null
              ? widget.selectedColor
              : widget.labelDisabledColor),
      selectedColor: widget.selectedColor,
      disabledColor: widget.disabledColor,
      backgroundColor: widget.disabledColor,
      labelPadding: widget.padding,
      padding: widget.padding,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
          side: BorderSide(
              color: selectedChoices.contains(item)
                  ? widget.labelSelectedColor == null
                  ? widget.disabledColor
                  : widget.labelSelectedColor
                  : widget.labelDisabledColor == null
                  ? widget.selectedColor
                  : widget.labelDisabledColor)
      ),
      label: Padding(
        padding: const EdgeInsets.symmetric(vertical: 6.0),
        child: Text(item),
      ),
      selected: selectedChoices.contains(item) ? true : false,
      onSelected: (selected) {
        setState(() {
          selectedChoices.contains(item)
              ? selectedChoices.remove(item)
              : selectedChoices.add(item);
          if (widget.onSelectionChanged != null)
            widget.onSelectionChanged(selectedChoices); // +added
        });
      },
    );
  }
}