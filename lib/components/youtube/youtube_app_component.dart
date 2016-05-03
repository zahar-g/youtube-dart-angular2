import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

import 'home_component.dart';

@Component(
    selector: 'youtube-app',
    templateUrl: 'youtube_app_component.html',
    directives: const [ROUTER_DIRECTIVES],
    providers: const [ROUTER_PROVIDERS]
)
@RouteConfig(const [
  const Route(
      path: '/home',
      name: 'Home',
      component: HomeComponent,
      useAsDefault: true)
])
class YoutubeAppComponent {}
