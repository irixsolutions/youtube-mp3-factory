import 'package:url_launcher/url_launcher.dart';

class SocialMediaLaunches {
  final String _urlfb = 'https://www.facebook.com/IRIXsolutions';
  final String _urllinkdin = 'https://www.linkedin.com/company/irix-solutions/';
  final String _urlinster = 'https://www.instagram.com/irix_solutions/';
  final String _urlweb = 'https://irix.solutions/';

  void launchURLfb() async {
    if (!await launch(_urlfb)) throw 'Could not launch $_urlfb';
  }

  void launchURLlinkedin() async {
    if (!await launch(_urllinkdin)) throw 'Could not launch $_urllinkdin';
  }

  void launchURLinster() async {
    if (!await launch(_urlinster)) throw 'Could not launch $_urlinster';
  }

  void launchURLweb() async {
    if (!await launch(_urlweb)) throw 'Could not launch $_urlweb';
  }
}
