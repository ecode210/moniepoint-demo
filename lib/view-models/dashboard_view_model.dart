import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final dashboardProvider = ChangeNotifierProvider<DashboardViewModel>((ref) => DashboardViewModel(ref));

class DashboardViewModel extends ChangeNotifier {
  DashboardViewModel(this._ref);

  final ChangeNotifierProviderRef<DashboardViewModel> _ref;
  final pageController = PageController(initialPage: 2);
  var _pageIndex = 2;

  set setPageIndex(int value) => _pageIndex = value;

  int get pageIndex => _pageIndex;

  var _animValue = 60.w;

  set setAnimValue(double value) => _animValue = value;

  double get animValue => _animValue;

  var _showMarkerDetails = true;

  set setShowMarkerDetails(bool value) => _showMarkerDetails = value;

  bool get showMarkerDetails => _showMarkerDetails;

  final searchController = TextEditingController();

  void initDashboard() {
    pageController.jumpToPage(2);
    setPageIndex = 2;
    notifyListeners();
  }

  void dashboardOnPageChanged(int value) {
    setPageIndex = value;
    notifyListeners();
  }

  void animateDashboard(int page) {
    pageController.jumpToPage(page);
    setPageIndex = page;
    notifyListeners();
  }

  Future<void> animateSlider() async {
    setAnimValue = 60.w;
    await Future.delayed(1.seconds);
    setAnimValue = 368.w;
  }

  void toggleMarkerDetails() {
    setShowMarkerDetails = !showMarkerDetails;
    notifyListeners();
  }

  @override
  void dispose() {
    pageController.dispose();
    searchController.dispose();
    super.dispose();
  }
}
