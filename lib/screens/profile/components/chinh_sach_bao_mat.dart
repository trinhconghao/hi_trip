
import 'package:flutter/material.dart';
import '../profile_screen.dart';
import 'package:webview_flutter/webview_flutter.dart';
class BaoMatScreen extends StatefulWidget {
  static String routeName = "/chinhsachbaomat";
  const BaoMatScreen({
    super.key,

  });
  @override
  State<BaoMatScreen> createState() => _BaoMatScreenState();

}
class _BaoMatScreenState extends State<BaoMatScreen> {
  late WebViewController _controller;
  bool _isLoading = true;
  /*
  WebViewController controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setBackgroundColor(const Color(0x00000000))
    ..setNavigationDelegate(
      NavigationDelegate(
        onProgress: (int progress) {
          // Update loading bar.
        },
        onPageStarted: (String url) {},
        onPageFinished: (String url) {},
        onWebResourceError: (WebResourceError error) {},
        onNavigationRequest: (NavigationRequest request) {
          if (request.url.startsWith('https://bnano.vn/chinh-sach-bao-mat/')) {
            return NavigationDecision.prevent;
          }
          return NavigationDecision.navigate;
        },
      ),
    )
    ..loadRequest(Uri.parse('https://bnano.vn/chinh-sach-bao-mat/'));

   */
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = WebViewController()
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            setState(() {
              _isLoading = true;
            });
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {setState(() {
            _isLoading = false;
          });},
        ),
      )
      ..loadRequest(Uri.parse('https://bnano.vn/chinh-sach-bao-mat/'));
  }
  @override
  void dispose() {

    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            const Text(
              "Chính sách bảo mật",
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),

          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child:  Stack(
          children: [
            WebViewWidget(controller: _controller,),
            if (_isLoading)
              Center(
                child: CircularProgressIndicator(), // Hiển thị widget loading
              ),
          ],
        ),
        /*WebViewWidget(controller: controller),*/
      ),
      bottomNavigationBar:  Container(
        padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 15,
        ),
        // height: 174,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, -15),
              blurRadius: 20,
              color: const Color(0xFFDADADA).withOpacity(0.15),
            )
          ],
        ),
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        /*
                        Navigator.pushNamed(context, ProfileScreen.routeName);

                         */
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Đóng',
                        //style: Theme.of(context).textTheme.titleLarge,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );



  }
}
