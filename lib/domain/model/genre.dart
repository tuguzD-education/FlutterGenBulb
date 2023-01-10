import 'util/id.dart';
import 'util/node.dart';

class Genre implements Node {
  @override
  final Id<Genre> id;
  final String name;

  const Genre({
    required this.id,
    required this.name,
  });
}
