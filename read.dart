/**import 'package:flutter/services.dart' show rootBundle;
    //import 'package:flutter_test/flutter_test.dart';
    import 'package:csv/csv.dart';


    class read {
      List<List<dynamic>> data = [];

      // This function is triggered when the floating button is pressed
      Future<String> reading() async {
        final rawData = await rootBundle.loadString("assets/kindacode.csv");
        List<List<dynamic>> listData = CsvToListConverter().convert(rawData);

        data = listData;


        String username = data[0][0].toString();
        return username;
      }
    }
**/