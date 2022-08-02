Duration watcher(String name, Function() function) {
  Stopwatch stopwatch = Stopwatch()..start();
  function();
  stopwatch.stop();
  print('- $name excuted in ${stopwatch.elapsed} .');
  return stopwatch.elapsed;
}
