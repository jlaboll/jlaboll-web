class ButtonItem {
  ButtonItem(
      {required this.screen_item_index,
      required this.sort_order,
      required this.text,
      required this.on_press});
  final int screen_item_index;
  final int sort_order;
  final String text;
  final Function()? on_press;
}
