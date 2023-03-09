

void main() {
  
  
  String hexString =
      ""; // put your hexa format request message here.
  List<String> splitted = [];
  for (int i = 0; i < hexString.length; i = i + 2) {
    splitted.add(hexString.substring(i, i + 2));
  }
  String ascii = List.generate(splitted.length,
      (i) => String.fromCharCode(int.parse(splitted[i], radix: 16))).join();
  
  
  // you can change the output depending on what you need
  print('Request Message in ASCII:\n$ascii\n');
  print('Request Message in Hex:\n${hexString.toString()}\n');
  print('Start of Text\t\t: ${hexString.substring(0, 2)} (HEX)');
  print('Message Length\t\t: ${hexString.substring(2, 6)} (HEX)');
  print('Version\t\t\t: ${hexString.substring(6, 8)} (HEX)');
  print('Transaction Type\t: ${ascii.substring(4, 6)}'
       ' (${hexString.substring(8, 12)}) (ASCII)');
  print('Transaction Amount\t: ${ascii.substring(6, 18)}'
       ' (${hexString.substring(12, 36)}) (ASCII)');
  print('Transaction Amount\t: ${ascii.substring(18, 30)}'
       ' (${hexString.substring(36, 60)}) (ASCII)');
  print('Primary Acc Number\t: ${ascii.substring(30, 49)}'
       ' (${hexString.substring(60, 98)})');
  print('Expiry Date\t\t: ${ascii.substring(49, 53)}'
       ' (${hexString.substring(98, 106)}) (ASCII)');
  print('Cancel Reason\t\t: ${ascii.substring(53, 55)}'
       ' (${hexString.substring(106, 110)}) (ASCII)');
  print('Invoice Number\t\t: ${ascii.substring(55, 61)}'
       ' (${hexString.substring(110, 122)}) (ASCII)');
  print('Auth Code\t\t: ${ascii.substring(61, 67)}'
        ' (${hexString.substring(122, 134)}) (ASCII)');
  print('Installment Flag\t: ${ascii.substring(67, 68)}'
       ' (${hexString.substring(134, 136)}) (ASCII)');
  print('Reedem Flag\t\t: ${ascii.substring(68, 69)}'
       ' (${hexString.substring(136, 138)}) (ASCII)');
  print('DCC Flag\t\t: ${ascii.substring(69, 70)}'
       ' (${hexString.substring(138, 140)}) (ASCII)');
  print('Installment Plan\t: ${ascii.substring(70, 73)}'
       ' (${hexString.substring(140, 146)}) (ASCII)');
  print('Installment tenor\t: ${ascii.substring(73, 75)}'
       ' (${hexString.substring(146, 150)}) (ASCII)');
  print('Generic Data\t\t: ${ascii.substring(75, 87)}'
       ' (${hexString.substring(150, 174)}) (ASCII)');
  print('Reff. Number\t\t: ${ascii.substring(87, 99)}'
       ' (${hexString.substring(174, 198)}) (ASCII)');
  print('Merchant Filler\t\t: ${ascii.substring(99, 150)}'
       ' (${hexString.substring(198, 276)}) (ASCII)');
  print('End Of Text\t\t: ${hexString.substring(306, 308)} (HEX)');
  print('LRC\t\t\t: ${hexString.substring(308, 310)} (HEX)');
  
  print('Total bytes\t\t: ${ascii.length} bytes');
}
