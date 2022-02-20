import 'dart:io';

void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print('Usage: totals <csv file path name>');
    exit(1);
  }

  String csvFilePathName = arguments.first;
  List fileContent = File(csvFilePathName).readAsLinesSync();

  // remove col titles line
  fileContent = fileContent.sublist(1);
  final Map<String, double> jobTimeTotal = {};

  for (String line in fileContent) {
    final List<String> lineElements = line.split(',');
    final String tag = lineElements[5].replaceAll('"', '');
    final String durationStr = lineElements[3].replaceAll('"', '');
    final double duration = double.parse(durationStr);

    if (jobTimeTotal.containsKey(tag)) {
      final double totalDuration = jobTimeTotal[tag] ?? 0;
      jobTimeTotal[tag] = totalDuration + duration;
    } else {
      jobTimeTotal[tag] = duration;
    }
  }

  double totalDuration = 0;

  for (var entry in jobTimeTotal.entries) {
    final double tagDuration = entry.value;
    totalDuration += tagDuration;
    print(
        '${entry.key == '' ? 'Undefined' : entry.key} ${tagDuration.toStringAsFixed(2)}');
  }

  print('Total duration ${totalDuration.toStringAsFixed(2)}');
}
