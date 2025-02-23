import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:provider/provider.dart';
import '../../providers/settingsProvider.dart';
import '../../CONSTANTS.dart';
import '../../utils/launchUrl.dart';
import '../debug_widgets.dart';
import '../contributionPage.dart';
import '../faq.dart';

class AboutAppPage extends StatelessWidget {
  const AboutAppPage({Key? key, this.packageInfo}) : super(key: key);
  final PackageInfo? packageInfo;
  final appLegalese = 'Copyright © 2020-2022 Fareez Iqmal';

  @override
  Widget build(BuildContext context) {
    bool isFirstTry = true;
    TextStyle _linkTextStyle = Theme.of(context).brightness == Brightness.light
        ? const TextStyle(color: Colors.blueAccent)
        : TextStyle(color: Colors.blueAccent.shade100);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('About App'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8.0),
          child: Consumer<SettingProvider>(
            builder: (context, setting, child) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onLongPress: () {
                      if (isFirstTry && !setting.isDeveloperOption!) {
                        Fluttertoast.showToast(msg: '(⌐■_■)');
                        isFirstTry = false;
                      } else {
                        if (!setting.isDeveloperOption!) {
                          Fluttertoast.showToast(
                              msg: 'Developer mode discovered',
                              toastLength: Toast.LENGTH_LONG,
                              backgroundColor: Colors.teal);

                          setting.isDeveloperOption = true;
                        }
                        // Show the debug dialog
                        showDialog(
                            context: context,
                            builder: (context) => DebugWidgets.debugDialog());
                      }
                    },
                    child: Hero(
                      tag: kAppIconTag,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(18),
                        child: CachedNetworkImage(
                          width: 70,
                          height: 70,
                          fit: BoxFit.scaleDown,
                          imageUrl: kAppIconUrl,
                          progressIndicatorBuilder:
                              (context, url, downloadProgress) => Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: CircularProgressIndicator(
                                value: downloadProgress.progress),
                          ),
                          errorWidget: (context, url, error) =>
                              const FaIcon(FontAwesomeIcons.exclamation),
                        ),
                      ),
                    ),
                  ),
                  const Text(
                    '\nMPT 2021',
                    textAlign: TextAlign.center,
                  ),
                  GestureDetector(
                    onLongPress: () {
                      Clipboard.setData(
                              ClipboardData(text: packageInfo!.version))
                          .then((value) => Fluttertoast.showToast(
                              msg: 'Copied version info'));
                    },
                    child: Text(
                      'Version ${packageInfo!.version}\n',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.aBeeZee(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Theme.of(context).bottomAppBarColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: TextStyle(
                              color:
                                  Theme.of(context).textTheme.bodyText2!.color),
                          children: [
                            const TextSpan(
                              text: 'Prayer times data are from',
                            ),
                            TextSpan(
                              text: ' Jabatan Kemajuan Islam Malaysia',
                              style: _linkTextStyle,
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  LaunchUrl.normalLaunchUrl(
                                      url: kSolatJakimLink);
                                },
                            ),
                            const TextSpan(text: '.')
                          ],
                        ),
                      )),
                  const SizedBox(height: 8),
                  Card(
                    child: InkWell(
                      child: ListTile(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4)),
                        title: const Text(
                          'Contribution and Support',
                          textAlign: TextAlign.center,
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const ContributionPage()));
                        },
                      ),
                    ),
                  ),
                  Card(
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                      title: const Text(
                        'Release Notes',
                        textAlign: TextAlign.center,
                      ),
                      onTap: () {
                        LaunchUrl.normalLaunchUrl(
                            url: kReleaseNotesLink, useCustomTabs: true);
                      },
                    ),
                  ),
                  Card(
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                      title: const Text(
                        'Frequently Asked Questions (FAQ)',
                        textAlign: TextAlign.center,
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const FaqPage(),
                          ),
                        );
                      },
                    ),
                  ),
                  Card(
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                      title: const Text(
                        'Open Source Licenses',
                        textAlign: TextAlign.center,
                      ),
                      onTap: () {
                        showLicensePage(
                            context: context,
                            applicationName: packageInfo!.appName,
                            applicationVersion: packageInfo!.version,
                            applicationIcon: Hero(
                              tag: kAppIconTag,
                              child: CachedNetworkImage(
                                width: 70,
                                imageUrl: kAppIconUrl,
                                progressIndicatorBuilder:
                                    (context, url, downloadProgress) =>
                                        CircularProgressIndicator(
                                            value: downloadProgress.progress),
                                errorWidget: (context, url, error) =>
                                    const Icon(Icons.error),
                              ),
                            ));
                      },
                    ),
                  ),
                  Card(
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                      title: const Text(
                        'Privacy Policy',
                        textAlign: TextAlign.center,
                      ),
                      onTap: () {
                        LaunchUrl.normalLaunchUrl(
                            url: kPrivacyPolicyLink, useCustomTabs: true);
                      },
                    ),
                  ),
                  const Divider(height: 16),
                  Card(
                    child: ListTile(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4)),
                        title: const Text('More apps',
                            textAlign: TextAlign.center),
                        onTap: () {
                          LaunchUrl.normalLaunchUrl(url: kPlayStoreDevLink);
                        }),
                  ),
                  Card(
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                      title: const Text('Twitter', textAlign: TextAlign.center),
                      onTap: () {
                        LaunchUrl.normalLaunchUrl(url: kDevTwitter);
                      },
                    ),
                  ),
                  Card(
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                      title: const Text(
                        'Dev logs',
                        textAlign: TextAlign.center,
                      ),
                      onTap: () {
                        LaunchUrl.normalLaunchUrl(url: kInstaStoryDevlog);
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30.0),
                    child: Opacity(
                      opacity: 0.58,
                      child: Text(
                        appLegalese,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
