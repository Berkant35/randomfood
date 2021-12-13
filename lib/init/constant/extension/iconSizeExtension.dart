
enum IconSizeExtension{SMALL,SMALLTOMEDIUM,MEDIUM,MEDIUMTOHIGH,HIGH,HUGE}


extension IconSizeValue on IconSizeExtension{

  double get sizeValue  {
    switch(this){
      case IconSizeExtension.SMALL:
        return 8.0;
      case IconSizeExtension.SMALLTOMEDIUM:
        return 12.0;
      case IconSizeExtension.MEDIUM:
        return 16.0;
      case IconSizeExtension.MEDIUMTOHIGH:
        return 24.0;
      case IconSizeExtension.HIGH:
        return 32.0;
      case IconSizeExtension.HUGE:
        return 64.0;
      default:
        throw Exception('NOT VALİD FONT SİZE');
    }
  }

}

