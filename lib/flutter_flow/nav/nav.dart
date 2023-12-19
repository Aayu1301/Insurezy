import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import '../flutter_flow_theme.dart';
import '../../backend/backend.dart';
import '../../auth/firebase_user_provider.dart';

import '../../index.dart';
import '../../main.dart';
import '../lat_lng.dart';
import '../place.dart';
import 'serialization_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  InsurezyFirebaseUser? initialUser;
  InsurezyFirebaseUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(InsurezyFirebaseUser newUser) {
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    if (notifyOnAuthChange) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, _) =>
          appStateNotifier.loggedIn ? HomePageWidget() : LoadingpageWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.loggedIn
              ? HomePageWidget()
              : LoadingpageWidget(),
          routes: [
            FFRoute(
              name: 'loadingpage',
              path: 'loadingpage',
              builder: (context, params) => LoadingpageWidget(),
            ),
            FFRoute(
              name: 'LoginPage',
              path: 'loginPage',
              builder: (context, params) => LoginPageWidget(),
            ),
            FFRoute(
              name: 'FormC1',
              path: 'formC1',
              asyncParams: {
                'formc': getDoc('Financeclaim', FinanceclaimRecord.serializer),
              },
              builder: (context, params) => FormC1Widget(
                formc: params.getParam('formc', ParamType.Document),
                emp: params.getParam('emp', ParamType.JSON),
                amount: params.getParam('amount', ParamType.int),
              ),
            ),
            FFRoute(
              name: 'FormC2',
              path: 'formC2',
              builder: (context, params) => FormC2Widget(
                form: params.getParam(
                    'form', ParamType.DocumentReference, false, 'Financeclaim'),
                emp: params.getParam('emp', ParamType.JSON),
                amount: params.getParam('amount', ParamType.int),
              ),
            ),
            FFRoute(
              name: 'FormC3',
              path: 'formC3',
              builder: (context, params) => FormC3Widget(
                details: params.getParam('details', ParamType.DocumentReference,
                    false, 'Financeclaim'),
                emp: params.getParam('emp', ParamType.JSON),
                amount: params.getParam('amount', ParamType.int),
              ),
            ),
            FFRoute(
              name: 'FormS1',
              path: 'formS1',
              asyncParams: {
                'formc': getDoc('Financeclaim', FinanceclaimRecord.serializer),
              },
              builder: (context, params) => FormS1Widget(
                formc: params.getParam('formc', ParamType.Document),
                emp: params.getParam('emp', ParamType.JSON),
                amount: params.getParam('amount', ParamType.int),
              ),
            ),
            FFRoute(
              name: 'FormS2',
              path: 'formS2',
              builder: (context, params) => FormS2Widget(
                form: params.getParam(
                    'form', ParamType.DocumentReference, false, 'Financeclaim'),
                emp: params.getParam('emp', ParamType.JSON),
                amount: params.getParam('amount', ParamType.int),
              ),
            ),
            FFRoute(
              name: 'FormS3',
              path: 'formS3',
              builder: (context, params) => FormS3Widget(
                details: params.getParam('details', ParamType.DocumentReference,
                    false, 'Financeclaim'),
                emp: params.getParam('emp', ParamType.JSON),
                amount: params.getParam('amount', ParamType.int),
              ),
            ),
            FFRoute(
              name: 'HomePage',
              path: 'homePage',
              builder: (context, params) => HomePageWidget(
                emp: params.getParam('emp', ParamType.JSON),
                amount: params.getParam('amount', ParamType.int),
              ),
            ),
            FFRoute(
              name: 'Claimtrack',
              path: 'claimtrack',
              builder: (context, params) => ClaimtrackWidget(
                claim: params.getParam('claim', ParamType.int),
                emp: params.getParam('emp', ParamType.JSON),
              ),
            ),
            FFRoute(
              name: 'TopupInsurance',
              path: 'topupInsurance',
              builder: (context, params) => TopupInsuranceWidget(
                emp: params.getParam('emp', ParamType.JSON),
                amount: params.getParam('amount', ParamType.int),
                plans: params.getParam('plans', ParamType.JSON),
              ),
            ),
            FFRoute(
              name: 'TopupInsuranceCopy',
              path: 'topupInsuranceCopy',
              builder: (context, params) => TopupInsuranceCopyWidget(
                emp: params.getParam('emp', ParamType.JSON),
                amount: params.getParam('amount', ParamType.int),
                plans: params.getParam('plans', ParamType.JSON),
              ),
            ),
            FFRoute(
              name: 'Dependents',
              path: 'dependents',
              builder: (context, params) => DependentsWidget(
                empdependents: params.getParam('empdependents', ParamType.JSON),
                amount: params.getParam('amount', ParamType.int),
              ),
            ),
            FFRoute(
              name: 'profile',
              path: 'profile',
              builder: (context, params) => ProfileWidget(
                profile: params.getParam('profile', ParamType.JSON),
                amount: params.getParam('amount', ParamType.int),
              ),
            ),
            FFRoute(
              name: 'password',
              path: 'password',
              builder: (context, params) => PasswordWidget(
                emp: params.getParam('emp', ParamType.JSON),
                amount: params.getParam('amount', ParamType.int),
              ),
            )
          ].map((r) => r.toRoute(appStateNotifier)).toList(),
        ).toRoute(appStateNotifier),
      ],
      urlPathStrategy: UrlPathStrategy.path,
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> params = const <String, String>{},
    Map<String, String> queryParams = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              params: params,
              queryParams: queryParams,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> params = const <String, String>{},
    Map<String, String> queryParams = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              params: params,
              queryParams: queryParams,
              extra: extra,
            );
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState =>
      (routerDelegate.refreshListenable as AppStateNotifier);
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void setRedirectLocationIfUnset(String location) =>
      (routerDelegate.refreshListenable as AppStateNotifier)
          .updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(params)
    ..addAll(queryParams)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, [
    bool isList = false,
    String? collectionName,
  ]) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(param, type, isList, collectionName);
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.location);
            return '/loadingpage';
          }
          return null;
        },
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: Colors.transparent,
                  child: Image.asset(
                    'assets/images/logo_m1.png',
                    fit: BoxFit.contain,
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder: PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).transitionsBuilder,
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}
