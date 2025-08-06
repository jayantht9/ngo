import 'package:flutter/material.dart';

/// App-wide constants and configuration
class AppConstants {
  // App Information
  static const String appName = 'Hope Foundation';
  static const String appTagline = 'Connecting Hearts, Changing Lives';
  static const String appVersion = '1.0.0';

  // Colors
  static const Color primaryColor = Color(0xFF2E7D32);
  static const Color primaryLightColor = Color(0xFF60AD5E);
  static const Color primaryDarkColor = Color(0xFF005005);
  static const Color accentColor = Color(0xFF4CAF50);
  static const Color backgroundColor = Color(0xFFF5F5F5);
  static const Color cardColor = Colors.white;
  static const Color textPrimaryColor = Color(0xFF212121);
  static const Color textSecondaryColor = Color(0xFF757575);

  // Dimensions
  static const double defaultPadding = 16.0;
  static const double largePadding = 24.0;
  static const double smallPadding = 8.0;
  static const double borderRadius = 12.0;
  static const double cardElevation = 4.0;

  // Text Styles
  static const TextStyle headingStyle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: primaryColor,
  );

  static const TextStyle subHeadingStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: textPrimaryColor,
  );

  static const TextStyle bodyStyle = TextStyle(
    fontSize: 16,
    color: textPrimaryColor,
    height: 1.5,
  );

  static const TextStyle captionStyle = TextStyle(
    fontSize: 12,
    color: textSecondaryColor,
  );

  // NGO Information
  static const String ngoDescription = 
      'Hope Foundation is a dedicated non-profit organization committed to making a positive impact in communities around the world. Our mission is to provide hope, support, and resources to those who need it most.';

  static const String ngoEmail = 'info@hopefoundation.org';
  static const String ngoPhone = '+1 (555) 123-4567';
  static const String ngoWebsite = 'www.hopefoundation.org';
  static const String ngoAddress = '123 Hope Street, City, State 12345';

  // Mission Areas
  static const List<Map<String, dynamic>> missionAreas = [
    {
      'icon': Icons.school,
      'title': 'Education',
      'description': 'Providing quality education and learning opportunities',
      'color': Colors.blue,
    },
    {
      'icon': Icons.local_hospital,
      'title': 'Healthcare',
      'description': 'Ensuring access to essential healthcare services',
      'color': Colors.red,
    },
    {
      'icon': Icons.eco,
      'title': 'Environment',
      'description': 'Protecting our planet for future generations',
      'color': Colors.green,
    },
    {
      'icon': Icons.group,
      'title': 'Community',
      'description': 'Building stronger, more resilient communities',
      'color': Colors.orange,
    },
  ];

  // Statistics
  static const Map<String, String> impactStats = {
    'Lives Touched': '10,000+',
    'Volunteers': '500+',
    'Projects': '50+',
    'Communities': '25+',
  };

  // Volunteer Benefits
  static const List<Map<String, dynamic>> volunteerBenefits = [
    {
      'icon': Icons.favorite,
      'text': 'Make a meaningful difference in your community',
    },
    {
      'icon': Icons.group,
      'text': 'Meet like-minded people and build lasting friendships',
    },
    {
      'icon': Icons.school,
      'text': 'Develop new skills and gain valuable experience',
    },
    {
      'icon': Icons.emoji_events,
      'text': 'Receive volunteer certificates and recognition',
    },
    {
      'icon': Icons.schedule,
      'text': 'Flexible scheduling to fit your availability',
    },
  ];

  // Form Validation
  static const int minNameLength = 2;
  static const int phoneNumberLength = 10;
  static const int minCityLength = 2;

  // Animation Durations
  static const Duration shortAnimation = Duration(milliseconds: 300);
  static const Duration mediumAnimation = Duration(milliseconds: 500);
  static const Duration longAnimation = Duration(milliseconds: 800);

  // API Endpoints (for future backend integration)
  static const String baseUrl = 'https://api.hopefoundation.org';
  static const String volunteersEndpoint = '/volunteers';
  static const String contactEndpoint = '/contact';
}