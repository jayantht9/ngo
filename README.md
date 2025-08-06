# Hope Foundation NGO App

A cross-platform Flutter application for Hope Foundation NGO, designed to connect volunteers with meaningful opportunities to make a positive impact in their communities.

## 🌟 Features

### ✅ Completed Requirements
- **Home Page**: Complete NGO information with logo and welcome message
- **Volunteer Form**: Registration form with name, phone, and city fields
- **Navigation**: Both navigation drawer and bottom tab navigation
- **Cross-Platform**: Built with Flutter for Android and iOS compatibility

### 🎯 Key Features
- **Beautiful UI**: Modern, responsive design with Material Design principles
- **Form Validation**: Comprehensive input validation for volunteer registration
- **Navigation Options**: Both drawer and bottom navigation for easy access
- **Mission Display**: Visual representation of NGO's mission areas
- **Impact Statistics**: Display of NGO's achievements and impact
- **Volunteer Benefits**: Clear information about volunteering advantages
- **Success Feedback**: Confirmation dialogs and success messages

## 📱 Screenshots

The app includes:
1. **Home Page** with NGO logo, welcome message, and mission areas
2. **Volunteer Form** with validated input fields
3. **Navigation Drawer** with menu options
4. **Bottom Navigation** for quick screen switching

## 🛠️ Technical Stack

- **Framework**: Flutter (Dart)
- **UI**: Material Design
- **State Management**: StatefulWidget
- **Form Handling**: Flutter Forms with validation
- **Navigation**: Bottom Navigation + Drawer Navigation
- **Responsive Design**: Adaptive layouts for different screen sizes

## 📋 Prerequisites

Before running this app, ensure you have:

1. **Flutter SDK** installed (version 3.8.1 or higher)
2. **Dart SDK** (comes with Flutter)
3. **Android Studio** or **VS Code** with Flutter extensions
4. **Android SDK** for Android development
5. **Xcode** for iOS development (macOS only)

## 🚀 Installation & Setup

### 1. Install Flutter
```bash
# Download Flutter SDK from https://flutter.dev/docs/get-started/install
# Add Flutter to your PATH environment variable
```

### 2. Verify Installation
```bash
flutter doctor
```

### 3. Get Dependencies
```bash
flutter pub get
```

### 4. Run the App
```bash
# For Android
flutter run

# For iOS (macOS only)
flutter run -d ios

# For Web
flutter run -d web

# For Windows
flutter run -d windows
```

## 📁 Project Structure

```
lib/
├── main.dart                 # App entry point and main navigation
├── screens/
│   ├── home_page.dart       # Home page with NGO information
│   └── volunteer_form.dart  # Volunteer registration form
assets/
├── images/                  # Logo and image assets
├── icons/                   # Custom icons
└── README.md               # Assets documentation
```

## 🎨 Design Features

### Color Scheme
- **Primary Color**: Green (#2E7D32) - representing growth and hope
- **Accent Colors**: Various shades of green and complementary colors
- **Background**: Clean whites and light greens

### Typography
- **Headers**: Bold, clear fonts for readability
- **Body Text**: Comfortable reading with proper line height
- **Form Labels**: Clear, accessible labeling

### UI Components
- **Cards**: Elevated cards with shadows for content organization
- **Buttons**: Rounded, accessible buttons with proper states
- **Forms**: Well-structured forms with validation feedback
- **Icons**: Material Design icons with custom NGO branding

## 📝 Form Validation

The volunteer form includes:
- **Name**: Required, minimum 2 characters
- **Phone**: Required, exactly 10 digits
- **City**: Required, minimum 2 characters
- **Real-time validation** with error messages
- **Success confirmation** with submitted data display

## 🧭 Navigation Features

### Bottom Navigation
- **Home Tab**: Quick access to main page
- **Volunteer Tab**: Direct access to registration form

### Navigation Drawer
- **Home**: Navigate to main page
- **Volunteer**: Access volunteer form
- **About Us**: NGO information dialog
- **Contact**: Contact information dialog

## 🌐 Cross-Platform Compatibility

This app is designed to work seamlessly across:
- **Android** (API level 21+)
- **iOS** (iOS 12.0+)
- **Web** browsers
- **Windows** desktop
- **macOS** desktop
- **Linux** desktop

## 🔧 Customization

### Adding Your Logo
1. Place your logo in `assets/images/logo.png`
2. Update the image reference in `home_page.dart`
3. Run `flutter pub get` to refresh assets

### Changing Colors
1. Modify the color scheme in `main.dart`
2. Update individual screen colors as needed
3. Maintain accessibility contrast ratios

### Adding New Screens
1. Create new screen files in `lib/screens/`
2. Add navigation routes in `main.dart`
3. Update navigation drawer and bottom navigation

## 🧪 Testing

### Running Tests
```bash
# Run all tests
flutter test

# Run with coverage
flutter test --coverage
```

### Manual Testing Checklist
- [ ] Home page loads correctly
- [ ] Navigation drawer opens and closes
- [ ] Bottom navigation switches screens
- [ ] Volunteer form validation works
- [ ] Form submission shows success message
- [ ] App works on different screen sizes
- [ ] All buttons and links are functional

## 📦 Building for Production

### Android APK
```bash
flutter build apk --release
```

### Android App Bundle
```bash
flutter build appbundle --release
```

### iOS
```bash
flutter build ios --release
```

### Web
```bash
flutter build web --release
```

## 🤝 Contributing

This is a demonstration project for NGO app development. To contribute:

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## 📄 License

This project is created for educational and demonstration purposes. Feel free to use it as a template for your own NGO applications.

## 📞 Support

For questions about this implementation:
- Review the code comments for detailed explanations
- Check Flutter documentation for framework-specific questions
- Test the app on multiple devices for compatibility

## 🎯 Assignment Completion

This project fulfills all the specified requirements:

✅ **Cross-platform app** (Android/iOS) using Flutter
✅ **Home Page** with NGO information, logo, and welcome message  
✅ **Volunteer Form** with name, phone, and city fields
✅ **Navigation Drawer** for screen switching
✅ **Bottom Tab Navigation** as alternative navigation
✅ **Flutter/Dart** technology stack
✅ **Professional UI/UX** design
✅ **Form validation** and error handling
✅ **Responsive design** for different screen sizes
✅ **Complete documentation** and setup instructions

## 🚀 Next Steps

To enhance this app further, consider adding:
- Backend integration for data persistence
- User authentication and profiles
- Push notifications for volunteer opportunities
- Photo upload functionality
- Social media integration
- Multi-language support
- Offline functionality
- Advanced form fields (skills, availability, etc.)

---

**Hope Foundation NGO App** - Connecting Hearts, Changing Lives 💚