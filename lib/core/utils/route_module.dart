abstract class RouteModule {
  final String name;
  final List<Function> dependencies;

  RouteModule({required this.name, required this.dependencies}) {
    for (Function dependencie in dependencies) {
      dependencie;
    }
  }
}
