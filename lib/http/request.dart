
import 'package:epharmalyical/http/url.dart';
import 'package:http/http.dart' as http;

class Request {
  final String url;
  final dynamic body;
  final dynamic query;


  Request({this.url, this.body,this.query});

  Future<http.Response> post() {
    return http.post(urlBase + url, body: body).timeout(Duration(minutes: 2));
  }
  Future<http.Response> get() {

    if(query!=null){

      return http.get(url3Base + url+query).timeout(Duration(minutes: 2));
    }
    else{

      return http.get(url3Base + url).timeout(Duration(minutes: 2));
    }
   // return http.get(url3Base + url+).timeout(Duration(minutes: 2));
  }
}