import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';

import '/auth/base_auth_user_provider.dart';

import '/index.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
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

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
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
      errorBuilder: (context, state) => appStateNotifier.loggedIn
          ? const AccueilWidget()
          : const AuthLoginAssociationWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => appStateNotifier.loggedIn
              ? const AccueilWidget()
              : const AuthLoginAssociationWidget(),
        ),
        FFRoute(
          name: 'AjoutMission_Association',
          path: '/ajoutMissionAssociation',
          builder: (context, params) => const AjoutMissionAssociationWidget(),
        ),
        FFRoute(
          name: 'Accueil',
          path: '/accueil',
          builder: (context, params) => const AccueilWidget(),
        ),
        FFRoute(
          name: 'Gestion_Ressources',
          path: '/gestionRessources',
          builder: (context, params) => const GestionRessourcesWidget(),
        ),
        FFRoute(
          name: 'AjoutRessource',
          path: '/ajoutRessource',
          builder: (context, params) => const AjoutRessourceWidget(),
        ),
        FFRoute(
          name: 'ListeMissions',
          path: '/listeMissions',
          builder: (context, params) => const ListeMissionsWidget(),
        ),
        FFRoute(
          name: 'ListeAnnonce',
          path: '/listeAnnonce',
          builder: (context, params) => const ListeAnnonceWidget(),
        ),
        FFRoute(
          name: 'Profile_Association',
          path: '/profileAssociation',
          builder: (context, params) => const ProfileAssociationWidget(),
        ),
        FFRoute(
          name: 'ListeMaison',
          path: '/listeMaison',
          builder: (context, params) => const ListeMaisonWidget(),
        ),
        FFRoute(
          name: 'AjoutMaison',
          path: '/ajoutMaison',
          builder: (context, params) => const AjoutMaisonWidget(),
        ),
        FFRoute(
          name: 'AjoutEvaluation',
          path: '/ajoutEvaluation',
          builder: (context, params) => const AjoutEvaluationWidget(),
        ),
        FFRoute(
          name: 'Evaluation',
          path: '/evaluation',
          builder: (context, params) => const EvaluationWidget(),
        ),
        FFRoute(
          name: 'Auth_Login_Association',
          path: '/authLoginAssociation',
          builder: (context, params) => const AuthLoginAssociationWidget(),
        ),
        FFRoute(
          name: 'Modification_Profile_Association',
          path: '/modificationProfileAssociation',
          asyncParams: {
            'modifierProfil': getDoc(['users'], UsersRecord.fromSnapshot),
          },
          builder: (context, params) => ModificationProfileAssociationWidget(
            modifierProfil: params.getParam(
              'modifierProfil',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'Detail_maison',
          path: '/detailMaison',
          builder: (context, params) => DetailMaisonWidget(
            maisonDetails: params.getParam(
              'maisonDetails',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['maison'],
            ),
          ),
        ),
        FFRoute(
          name: 'Complete_profil_association',
          path: '/completeProfilAssociation',
          asyncParams: {
            'completeProfil': getDoc(['users'], UsersRecord.fromSnapshot),
          },
          builder: (context, params) => CompleteProfilAssociationWidget(
            completeProfil: params.getParam(
              'completeProfil',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'Detail_annonce',
          path: '/detailAnnonce',
          builder: (context, params) => DetailAnnonceWidget(
            annonceDetails: params.getParam(
              'annonceDetails',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['annonce'],
            ),
          ),
        ),
        FFRoute(
          name: 'ModifierRessource',
          path: '/modifierRessource',
          asyncParams: {
            'modifierRessource':
                getDoc(['ressource'], RessourceRecord.fromSnapshot),
          },
          builder: (context, params) => ModifierRessourceWidget(
            modifierRessource: params.getParam(
              'modifierRessource',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'ModifierEvaluation',
          path: '/modifierEvaluation',
          asyncParams: {
            'modifEvaluation': getDoc(
                ['note_association'], NoteAssociationRecord.fromSnapshot),
          },
          builder: (context, params) => ModifierEvaluationWidget(
            modifEvaluation: params.getParam(
              'modifEvaluation',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'Reccurente',
          path: '/reccurente',
          asyncParams: {
            'recurrenteDetails':
                getDoc(['recurrence'], RecurrenceRecord.fromSnapshot),
          },
          builder: (context, params) => ReccurenteWidget(
            recurrenteDetails: params.getParam(
              'recurrenteDetails',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'CodeValidation',
          path: '/codeValidation',
          builder: (context, params) => const CodeValidationWidget(),
        ),
        FFRoute(
          name: 'Detail_missionComblee',
          path: '/detailMissionComblee',
          asyncParams: {
            'missionDetails':
                getDoc(['missionaComble'], MissionaCombleRecord.fromSnapshot),
          },
          builder: (context, params) => DetailMissionCombleeWidget(
            missionDetails: params.getParam(
              'missionDetails',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'ListeMissionsaComblee',
          path: '/listeMissionsaComblee',
          builder: (context, params) => const ListeMissionsaCombleeWidget(),
        ),
        FFRoute(
          name: 'ListUser',
          path: '/listUser',
          builder: (context, params) => const ListUserWidget(),
        ),
        FFRoute(
          name: 'Role',
          path: '/role',
          builder: (context, params) => const RoleWidget(),
        ),
        FFRoute(
          name: 'Complete_profil_educateur',
          path: '/completeProfilEducateur',
          asyncParams: {
            'completerProfil': getDoc(['users'], UsersRecord.fromSnapshot),
          },
          builder: (context, params) => CompleteProfilEducateurWidget(
            completerProfil: params.getParam(
              'completerProfil',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'Question1',
          path: '/question1',
          builder: (context, params) => const Question1Widget(),
        ),
        FFRoute(
          name: 'Question2',
          path: '/question2',
          builder: (context, params) => const Question2Widget(),
        ),
        FFRoute(
          name: 'Question3',
          path: '/question3',
          builder: (context, params) => const Question3Widget(),
        ),
        FFRoute(
          name: 'Profile_Educateur',
          path: '/profileEducateur',
          builder: (context, params) => ProfileEducateurWidget(
            detailProfil: params.getParam(
              'detailProfil',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['users'],
            ),
          ),
        ),
        FFRoute(
          name: 'Engagement',
          path: '/engagement',
          builder: (context, params) => const EngagementWidget(),
        ),
        FFRoute(
          name: 'Modification_Profil',
          path: '/modificationProfil',
          builder: (context, params) => ModificationProfilWidget(
            detailProfil: params.getParam(
              'detailProfil',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['users'],
            ),
          ),
        ),
        FFRoute(
          name: 'ListeMissions_EducateurEncours',
          path: '/listeMissionsEducateurEncours',
          builder: (context, params) => const ListeMissionsEducateurEncoursWidget(),
        ),
        FFRoute(
          name: 'ListeMissions_EducateurAnnuler',
          path: '/listeMissionsEducateurAnnuler',
          builder: (context, params) => const ListeMissionsEducateurAnnulerWidget(),
        ),
        FFRoute(
          name: 'DetailMission',
          path: '/detailMission',
          builder: (context, params) => DetailMissionWidget(
            missionDetails: params.getParam(
              'missionDetails',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['mission'],
            ),
            recurrenceMission: params.getParam(
              'recurrenceMission',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['recurrence'],
            ),
          ),
        ),
        FFRoute(
          name: 'DetailMission_Encours',
          path: '/detailMissionEncours',
          builder: (context, params) => DetailMissionEncoursWidget(
            missionDetailsEncours: params.getParam(
              'missionDetailsEncours',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['missionenCours'],
            ),
            recurrenceMission: params.getParam(
              'recurrenceMission',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['recurrence'],
            ),
          ),
        ),
        FFRoute(
          name: 'EvaluationMission_Educateur',
          path: '/evaluationMissionEducateur',
          builder: (context, params) => EvaluationMissionEducateurWidget(
            missionEvaluation: params.getParam(
              'missionEvaluation',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['missionenCours'],
            ),
          ),
        ),
        FFRoute(
          name: 'Evaluation_Educateur',
          path: '/evaluationEducateur',
          builder: (context, params) => const EvaluationEducateurWidget(),
        ),
        FFRoute(
          name: 'AjoutEvaluation_Educateur',
          path: '/ajoutEvaluationEducateur',
          builder: (context, params) => const AjoutEvaluationEducateurWidget(),
        ),
        FFRoute(
          name: 'Mission_valider',
          path: '/missionValider',
          builder: (context, params) => const MissionValiderWidget(),
        ),
        FFRoute(
          name: 'ListeMissions_EducateurAComblee',
          path: '/listeMissionsEducateurAComblee',
          builder: (context, params) => const ListeMissionsEducateurACombleeWidget(),
        ),
        FFRoute(
          name: 'ModificationEvaluation_Educateur',
          path: '/modificationEvaluationEducateur',
          asyncParams: {
            'modifierNoteEducateur':
                getDoc(['note_educateur'], NoteEducateurRecord.fromSnapshot),
          },
          builder: (context, params) => ModificationEvaluationEducateurWidget(
            modifierNoteEducateur: params.getParam(
              'modifierNoteEducateur',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'motdepasseoublie',
          path: '/motdepasseoublie',
          builder: (context, params) => const MotdepasseoublieWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
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
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
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
      (state.allParams.length == 1 &&
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
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
  }) {
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
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
    );
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
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/authLoginAssociation';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
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
                    'assets/images/jackson-david-cIcBInoyb7U-unsplash.jpeg',
                    fit: BoxFit.cover,
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
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

  static TransitionInfo appDefault() => const TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
