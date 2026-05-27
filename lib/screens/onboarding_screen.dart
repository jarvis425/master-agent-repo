import 'package:flutter/material.dart';
import 'package:system_leveling/widgets/gender_selection.dart';
import 'package:system_leveling/widgets/body_metrics.dart';
import 'package:system_leveling/widgets/target_areas.dart';
import 'package:system_leveling/widgets/fitness_level.dart';
import 'package:system_leveling/widgets/frequency_selection.dart';
import 'package:system_leveling/widgets/core_goal_selection.dart';
import 'package:system_leveling/widgets/health_checklist_filter.dart';
import 'package:system_leveling/widgets/equipment_access_matrix.dart';
class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);
  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}
class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const GenderSelection(),
          const BodyMetrics(),
          const TargetAreas(),
          const FitnessLevel(),
          const FrequencySelection(),
          const CoreGoalSelection(),
          const HealthChecklistFilter(),
          const EquipmentAccessMatrix(),
        ],
      ),
    );
  }
}