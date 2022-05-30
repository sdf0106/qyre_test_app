import 'package:qyre_test_app/features/productions/domain/entities/production.dart';

import '../consts/image_paths.dart';

class ProductionGenerator {
  ProductionGenerator._();
  static Iterable<Production> productionGenerator() sync* {
    yield Production(
      productName: 'Production Name That is Long',
      imagePath: ImagePaths.firstProdImage,
      location: 'Sweden',
      startTime: DateTime(2022, 1, 14),
      endTime: DateTime(2023, 2, 23),
    );

    yield Production(
      productName: 'What has bee seen very very long te...',
      imagePath: ImagePaths.secondProdImage,
      location: 'Sweden',
      startTime: DateTime(2022, 1, 14),
      endTime: DateTime(2023, 2, 23),
    );
  }
}
