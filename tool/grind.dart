import 'package:grinder/grinder.dart';

main(args) => grind(args);

@Task('clean')
void clean() => defaultClean();

@Task('Generate codes')
void generate() {
  run('fvm', arguments: [
    'flutter',
    'pub',
    'run',
    'build_runner',
    'build',
    '--delete-conflicting-outputs'
  ]);
}

@Task('run test')
void test() {
  run('fvm', arguments: ['flutter', 'test']);
}

@Task('analyze dart codes')
void analyze() {
  run('fvm', arguments: ['flutter', 'analyze']);
}
