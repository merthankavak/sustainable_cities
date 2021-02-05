import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:sustainable_cities/UI/loadingBar.dart';

class InformationPage extends StatefulWidget {
  static const String routeName = '/informationpage';
  @override
  _InformationPageState createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {
  bool _loadingVisible = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 70,
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text("INFORMATION"),
        leading: Padding(
          padding: const EdgeInsets.only(left: 12.0, top: 5),
          child: CircleAvatar(
            backgroundColor: Colors.blue,
            child: IconButton(
              color: Colors.white,
              icon: Icon(FontAwesomeIcons.arrowLeft),
              onPressed: () async {
                await _changeLoadingVisible();
                await Navigator.popAndPushNamed(context, '/homepage');
              },
            ),
          ),
        ),
      ),
      body: Loading(
        inAsyncCall: _loadingVisible,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Container(
              child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut blandit, ipsum ac sagittis interdum, risus massa pulvinar sem, nec laoreet tortor eros et mi. Nulla eget elit cursus, iaculis urna a, imperdiet tortor. Nunc non placerat felis. Etiam a tincidunt felis. Curabitur tincidunt urna id sagittis maximus. Cras congue odio vitae purus suscipit convallis. Nullam non odio ac odio placerat lacinia. Cras suscipit nisl justo, quis placerat ante scelerisque quis. Suspendisse ex nunc, auctor ut felis interdum, condimentum maximus tortor.Duis posuere tortor nec enim finibus aliquam. Donec in tristique nibh, a aliquam justo. Ut pretium augue at dui varius, quis gravida dolor commodo. Suspendisse et ligula id lectus mattis scelerisque sed luctus enim. Integer elementum tempus sem, sed condimentum lacus semper eget. Aenean posuere convallis risus, non posuere neque viverra quis. Etiam malesuada lobortis pulvinar. Maecenas in erat dictum urna vehicula fermentum at id dui. Pellentesque posuere, mauris congue malesuada placerat, quam neque facilisis quam, sit amet malesuada massa mi ac erat. Sed nulla tortor, porta viverra dapibus ac, interdum non lorem. Mauris ac vestibulum diam. Curabitur vitae dui eu metus rutrum hendrerit. Proin mi lectus, molestie at lorem quis, cursus vestibulum nisl. Praesent nunc neque, aliquet bibendum velit eu, consequat semper arcu.Phasellus velit dui, ornare vitae cursus ac, lacinia in justo. Pellentesque maximus mi sed neque malesuada elementum. Maecenas volutpat et mauris at semper. Nunc venenatis quam ac massa elementum pretium. Maecenas non dapibus lectus, nec elementum dolor. Fusce sit amet efficitur eros, vel posuere neque. Morbi pharetra vehicula eros a varius.Integer luctus nisl vitae consequat fermentum. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed luctus justo iaculis diam posuere, ac pellentesque orci gravida. Donec molestie finibus interdum. Ut congue nec neque id varius. Nunc aliquet neque ac velit laoreet semper. Ut tempor ligula sed orci accumsan ornare. Donec maximus mauris sed leo sollicitudin, eu blandit diam vehicula. Fusce vestibulum tristique porta. Suspendisse mollis eleifend sem, at consectetur dolor varius non. Vestibulum dapibus sapien at blandit rutrum. Suspendisse lobortis, urna at convallis egestas, neque ipsum tempus metus, sed porta magna nisi vitae libero.Cras ultricies tincidunt mi, nec tempor nunc tincidunt quis. In vel diam vitae ipsum laoreet sodales non sit amet augue. Fusce eu tempus dui. Duis id rhoncus purus. Vivamus auctor orci ut maximus vestibulum. Praesent ac gravida mauris. Donec lacinia, ligula non pellentesque sollicitudin, quam nulla imperdiet ligula, at pretium nulla est id lorem. Aliquam sed enim vehicula, vehicula enim at, malesuada dui. Donec hendrerit viverra molestie. Proin nisl dolor, molestie non augue at, lobortis facilisis neque. Phasellus commodo a arcu dictum vestibulum. Integer ante ex, facilisis in rutrum id, suscipit id magna. Vestibulum accumsan malesuada metus, et venenatis nisl ullamcorper sed. Pellentesque quis varius ligula. "),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _changeLoadingVisible() async {
    setState(() {
      _loadingVisible = !_loadingVisible;
    });
  }
}
