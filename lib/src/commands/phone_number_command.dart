import 'package:args/command_runner.dart';

class PhoneNumberCommand extends Command {
  @override
  String get description => '''
Clean up user-entered phone numbers so that they can be sent SMS messages.

The North American Numbering Plan (NANP) is a telephone numbering system used by many countries in North America like the United States, Canada or Bermuda. All NANP-countries share the same international country code: 1.

NANP numbers are ten-digit numbers consisting of a three-digit Numbering Plan Area code, commonly known as area code, followed by a seven-digit local number. The first three digits of the local number represent the exchange code, followed by the unique four-digit number which is the subscriber number.

The format is usually represented as

(NXX)-NXX-XXXX
where N is any digit from 2 through 9 and X is any digit from 0 through 9.

Your task is to clean up differently formatted telephone numbers by removing punctuation and the country code (1) if present.

For example, the inputs

+1 (613)-995-0253
613-995-0253
1 613 995 0253
613.995.0253
should all produce the output

6139950253

Note: As this exercise only deals with telephone numbers used in NANP-countries, only 1 is considered a valid country code.

A function with a return type can only return data of that type and null. However the function caller is only expecting one data type.

Example:

String hello(int a){
    if ( a == 0){
        return "a";
    } else {
        return null;
    }
}
To make it more clear that this function can also return null or more data types, use dynamic.

dynamic hello(int a){
    if ( a == 0){
        return "a";
    } else {
        return null;
    }
}
''';

  @override
  String get name => 'phone-number';
}
