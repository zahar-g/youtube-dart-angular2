import 'package:angular2/core.dart';
import 'package:angular2/router.dart';

import 'components/welcome_component.dart';
import 'components/youtube/youtube_app_component.dart';
import 'entities/user.dart';
import 'services/auth_service.dart';

@Component(
    selector: 'my-app',
    templateUrl: 'app_component.html',
    directives: const [ROUTER_DIRECTIVES],
    providers: const [AuthService, ROUTER_PROVIDERS, Location]
)
@RouteConfig(const [
  const Route(
      path: '/welcome',
      name: 'Welcome',
      component: WelcomeComponent,
      useAsDefault: true),
  const Route(
      path: '/youtube/...',
      name: 'Youtube',
      component: YoutubeAppComponent)
])
class AppComponent implements OnInit {
  User userInfo;
  bool isLoggedIn = true;

  final Router _router;
  final AuthService _authService;
  final Location _location;

  AppComponent(this._authService, this._router, this._location);

  ngOnInit() async =>
    userInfo = await _authService.getUser();
//    userInfo = await _authService.getUser();


  login () {
//    _authService.login()
//        .then(() => {
//    loadUserInfo();
    _router.navigate(['./Youtube','home']);
//    });
  }

  logout () {
//    userInfo = null;
//    _authService.logout()
//        .error(function () {
    _router.navigate(['Welcome']);
//    });
  }

  bool isActive (Map stateName) {
    // todo : investiagate what with Location !
    return this._location.path() === _router.generate(stateName);
  }

//////
//  loadUserInfo() {
//    if (!userInfo) {
//      userInfo = _authService.getUser();
//    }
//  }
}
