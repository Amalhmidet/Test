import 'package:testt/models/FeesModel.dart';
class FeesViewModel {
  final FeesModel _feesModel;

  FeesViewModel()
      : _feesModel = FeesModel(
          title: 'Fees',
          description:
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt dolore magna aliqua',
        );

  String get title => _feesModel.title;
  String get description => _feesModel.description;
}