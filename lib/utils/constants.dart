class Constants {
  //assets path
  static const path = 'assets/images/';
  static const ICON_PATH = 'assets/icons/';

  static String imageAssets(String img) {
    return "$path$img";
  }

  //icon assets function
  static String iconAssets(icn) => "$ICON_PATH$icn";
}
