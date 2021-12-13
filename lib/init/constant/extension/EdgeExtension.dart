enum EdgeExtension{tinyEdge,lowEdge,lowToNormalEdge,normalEdge,mediumEdge,highEdge,hugeEdge,mediumtoHighEdge}



extension EdgeValueExtension on EdgeExtension{

  double get edgeValue {
    switch(this){
      case EdgeExtension.tinyEdge:
        return 6;
      case EdgeExtension.lowEdge:
        return 8;
      case EdgeExtension.lowToNormalEdge:
        return 12;
      case EdgeExtension.normalEdge:
        return 15;
      case EdgeExtension.mediumEdge:
        return 22;
      case EdgeExtension.mediumtoHighEdge:
        return 28;
      case EdgeExtension.highEdge:
        return 36;
      case EdgeExtension.hugeEdge:
        return 42;
      default:
        throw Exception('NOT VALİD FONT SİZE');
    }
  }
}