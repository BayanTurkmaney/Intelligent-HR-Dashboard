//import 'package:crypto/crypto.dart';
import 'dart:convert';
import 'dart:io';

class EncodeUtil {
  /*
     * Md5 encryption
  * */
  // static String generateMd5(String data) {
  //   var content = new Utf8Encoder().convert(data);
  //   var digest = md5.convert(content);
  //   return digest.toString();
  // }

  /*
     * Base64 encryption
  */
  static String encodeBase64(String data) {
    var content = utf8.encode(data);
    var digest = base64Encode(content);
    return digest;
  }

  /*
     * Base64 decryption
  */
  static String decodeBase64(String data) {
    return String.fromCharCodes(base64Decode(data));
  }

  /*
     * Convert images to Base64 strings via image path
  */
  static Future image2Base64(String path) async {
    File file = new File(path);
    List<int> imageBytes = await file.readAsBytes();
    return base64Encode(imageBytes);
  }
}
