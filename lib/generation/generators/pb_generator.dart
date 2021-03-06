import 'package:parabeac_core/generation/generators/pb_widget_manager.dart';
import 'package:parabeac_core/interpret_and_optimize/entities/subclasses/pb_intermediate_node.dart';

abstract class PBGenerator {
  final String WIDGET_TYPE_IDENTIFIER = 'widgetType';
  final String OBJECTID = 'do_objectID';
  final String widgetType;
  PBGenerationManager _manager;
  set manager (PBGenerationManager generationManager) => _manager = generationManager;
  PBGenerationManager get manager => _manager;

  PBGenerator(this.widgetType);
  String generate(PBIntermediateNode source);

  ///Generating just a line in the code; this is used when to 'special' handleing is
  String generateMapEntry(String key, String value) =>
      value == null || key == WIDGET_TYPE_IDENTIFIER ? '' : '$key : $value,';
}
