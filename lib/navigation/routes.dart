import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
import "package:idt_flutter/screens/goal_selector/goal_selector_screen.dart";
import "package:idt_flutter/screens/landing/landing_screen.dart";
import "package:go_router/go_router.dart";
import "package:idt_flutter/screens/scan/scan_screen.dart";

const paramId = "id";
const paramItemId = "itemId";
const paramItemType = "itemType";
const paramUrl = "url";
const paramIsSolution = "isSolution";
const paramRefresh = "refresh";
const paramCourseId = "courseId";
const paramNotebookId = "notebookId";
const paramQuizId = "quizId";
const paramResultId = "resultId";
const paramColorScheme = "colorScheme";
const paramIndex = "index";

const landingName = "landing";
const landingPath = "/$landingName";

const goalSelectorName = "goal-selector";
const goalSelectorPath = "/$goalSelectorName";

const scanName = "scan";
const scanPath = "/$scanName";

GoRouter goRouter() {
  return GoRouter(
    initialLocation: goalSelectorPath,
    errorBuilder: (context, state) => Center(
      child: Text(state.error.toString()),
    ),
    restorationScopeId: "app",
    debugLogDiagnostics: kDebugMode,
    routes: [
      GoRoute(
        name: goalSelectorName,
        path: goalSelectorPath,
        builder: (context, state) => const GoalSelectorScreen(),
      ),
      GoRoute(
        name: landingName,
        path: landingPath,
        builder: (context, state) => const LandingScreen(),
      ),
      GoRoute(
        name: scanName,
        path: scanPath,
        builder: (context, state) => const ScanScreen(),
      ),
    ],
  );
}
