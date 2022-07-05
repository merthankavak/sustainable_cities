class InfoModel {
  final String title;
  final String desc;
  final String imageName;

  InfoModel(this.title, this.desc, this.imageName);

  String get imageWithPath => 'asset/images/$imageName.png';
}

class InfoModels {
  static final List<InfoModel> infoModels = [
    InfoModel(
        'Step 1',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec id elementum nisi. Pellentesque sed egestas tellus. Nullam in lectus eu dui fermentum porta sagittis vel nulla. Ut id ex est. Nulla faucibus justo sapien, ut malesuada leo auctor vel. Aenean feugiat laoreet est, ut viverra lacus sollicitudin ut. Vestibulum vitae libero et magna cursus pellentesque ac in ante. Etiam convallis purus at auctor maximus. Pellentesque scelerisque a diam sit amet malesuada. Cras congue molestie aliquet. Sed ornare sem non sapien iaculis porta. Phasellus ultricies facilisis magna, id condimentum ipsum porttitor id.',
        'slider_1'),
    InfoModel(
        'Step 2',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque varius, ligula eu ornare eleifend, quam lectus accumsan nisi, aliquam tincidunt lorem erat sit amet ante. Proin a aliquet quam. Nunc feugiat sapien et libero scelerisque, sed scelerisque odio vestibulum. Nulla at ante non purus aliquam tempor. Mauris id egestas sem. Proin sed vehicula dolor, a finibus nulla. Maecenas ac eros vitae eros luctus convallis. Duis scelerisque lectus vitae sodales varius. Quisque aliquet est orci, ac cursus lacus tristique sed. Interdum et malesuada fames ac ante ipsum primis in faucibus. Aliquam quis nibh eget ante tristique fringilla. Nam ultricies arcu auctor, molestie ex sed, varius dolor. Duis finibus mi risus, quis aliquet elit finibus maximus.',
        'slider_2'),
    InfoModel(
        'Step 3',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque gravida odio venenatis, dapibus enim id, feugiat eros. Duis mattis elit tortor, sit amet blandit purus iaculis nec. Praesent rutrum tellus vitae porta consectetur. Morbi mollis rhoncus sapien, ac aliquam erat tincidunt et. Aliquam varius rutrum lacinia. Quisque vitae leo hendrerit, dignissim neque ac, accumsan sapien. Aliquam dictum justo mollis, iaculis neque sed, laoreet quam. Sed cursus dictum sem. Nullam sit amet vehicula mauris, tempus suscipit ex. Nulla tincidunt justo tortor, in hendrerit nulla dictum a.',
        'slider_3'),
    InfoModel(
        'Step 4',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ex metus, placerat eu ex vel, pharetra blandit tortor. Sed non velit non felis sagittis pulvinar at ac turpis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nunc vitae eros pretium, blandit quam eu, malesuada sem. Donec ut nisi posuere, ultricies leo in, iaculis arcu. Pellentesque ut urna facilisis, luctus sem et, feugiat justo. Ut rutrum porttitor diam vitae vestibulum. Integer scelerisque convallis risus vitae pharetra.',
        'slider_4')
  ];
}
