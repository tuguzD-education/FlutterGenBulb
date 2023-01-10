import 'util/id.dart';
import 'util/node.dart';

class Mode implements Node {
  @override
  final Id<Mode> id;
  final String name;

  const Mode({
    required this.id,
    required this.name,
  });
}
