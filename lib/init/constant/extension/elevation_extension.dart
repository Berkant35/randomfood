enum ElevationExtensions{none,lowElevation,normalElevation,mediumElevation,hugeElevation,mediumtoHighElevation,highElevation}


extension ElevationExtensionValues on ElevationExtensions{

  double get elevateValue{
    switch(this){
      case ElevationExtensions.none:
        return 0;
      case ElevationExtensions.lowElevation:
       return 8;
      case ElevationExtensions.normalElevation:
        return 12;
      case ElevationExtensions.mediumElevation:
        return 15;
      case ElevationExtensions.mediumtoHighElevation:
        return 18;
      case ElevationExtensions.highElevation:
        return 25;
      case ElevationExtensions.hugeElevation:
        return 50;
      default:
        throw Exception('NOT VALİD ELEVATION');
    }

  }
}