# Flutter Setup Guide for Hope Foundation NGO App

This guide will help you set up Flutter development environment and run the Hope Foundation NGO app.

## 📋 Prerequisites

### System Requirements
- **Windows 10/11** (64-bit)
- **RAM**: 8 GB minimum (16 GB recommended)
- **Storage**: 3 GB free space for Flutter SDK
- **Internet connection** for downloading dependencies

## 🛠️ Step-by-Step Installation

### Step 1: Install Flutter SDK

1. **Download Flutter SDK**
   - Go to [Flutter official website](https://flutter.dev/docs/get-started/install/windows)
   - Download the latest stable release
   - Extract the zip file to `C:\flutter` (avoid paths with spaces)

2. **Add Flutter to PATH**
   - Open System Properties → Advanced → Environment Variables
   - Under "User variables", find "Path" and click "Edit"
   - Click "New" and add: `C:\flutter\bin`
   - Click "OK" to save

3. **Verify Installation**
   ```powershell
   flutter --version
   ```

### Step 2: Install Development Tools

1. **Install Git**
   - Download from [git-scm.com](https://git-scm.com/download/win)
   - Install with default settings

2. **Install Android Studio**
   - Download from [developer.android.com](https://developer.android.com/studio)
   - Install with default settings
   - Open Android Studio and complete the setup wizard

3. **Install VS Code (Optional but Recommended)**
   - Download from [code.visualstudio.com](https://code.visualstudio.com/)
   - Install Flutter and Dart extensions

### Step 3: Configure Android Development

1. **Install Android SDK**
   - Open Android Studio
   - Go to Tools → SDK Manager
   - Install Android SDK (API level 30 or higher)

2. **Create Android Virtual Device (AVD)**
   - In Android Studio: Tools → AVD Manager
   - Click "Create Virtual Device"
   - Choose a device (e.g., Pixel 4)
   - Select system image (API 30+)
   - Click "Finish"

3. **Accept Android Licenses**
   ```powershell
   flutter doctor --android-licenses
   ```
   Type 'y' to accept all licenses

### Step 4: Verify Flutter Installation

Run Flutter Doctor to check your setup:
```powershell
flutter doctor
```

You should see checkmarks (✓) for:
- Flutter (Channel stable)
- Android toolchain
- Android Studio
- VS Code (if installed)

## 🚀 Running the NGO App

### Step 1: Navigate to Project Directory
```powershell
cd "c:\Users\Thota Sukanya\ngo_app"
```

### Step 2: Get Dependencies
```powershell
flutter pub get
```

### Step 3: Start Android Emulator
- Open Android Studio
- Click AVD Manager
- Click the play button next to your virtual device

### Step 4: Run the App
```powershell
flutter run
```

The app will build and launch on your emulator!

## 📱 Testing on Physical Device

### Android Device
1. Enable Developer Options on your Android device
2. Enable USB Debugging
3. Connect device via USB
4. Run: `flutter devices` to verify connection
5. Run: `flutter run` to install on device

### iOS Device (macOS only)
1. Install Xcode from Mac App Store
2. Connect iOS device
3. Trust the computer on iOS device
4. Run: `flutter run`

## 🔧 Troubleshooting

### Common Issues and Solutions

#### Issue: "flutter: command not found"
**Solution**: Flutter is not in your PATH
- Verify Flutter is extracted to `C:\flutter`
- Check PATH environment variable includes `C:\flutter\bin`
- Restart PowerShell/Command Prompt

#### Issue: "Android license status unknown"
**Solution**: Accept Android licenses
```powershell
flutter doctor --android-licenses
```

#### Issue: "No connected devices"
**Solution**: Start an emulator or connect a physical device
- Android Studio → AVD Manager → Start emulator
- Or connect physical device with USB debugging enabled

#### Issue: "Gradle build failed"
**Solution**: Clear cache and rebuild
```powershell
flutter clean
flutter pub get
flutter run
```

#### Issue: "SDK location not found"
**Solution**: Set Android SDK path
- Open Android Studio → File → Settings → System Settings → Android SDK
- Note the SDK path
- Set ANDROID_HOME environment variable to this path

### Performance Issues
- **Slow build times**: Use `flutter run --debug` for faster development builds
- **App crashes**: Check console output for error messages
- **Hot reload not working**: Try `flutter run --hot` or restart the app

## 📚 Additional Resources

### Flutter Documentation
- [Flutter Official Docs](https://flutter.dev/docs)
- [Dart Language Tour](https://dart.dev/guides/language/language-tour)
- [Flutter Widget Catalog](https://flutter.dev/docs/development/ui/widgets)

### Development Tools
- [Flutter Inspector](https://flutter.dev/docs/development/tools/flutter-inspector)
- [Dart DevTools](https://dart.dev/tools/dart-devtools)
- [Flutter Performance](https://flutter.dev/docs/perf)

### Community Resources
- [Flutter Community](https://flutter.dev/community)
- [Stack Overflow - Flutter](https://stackoverflow.com/questions/tagged/flutter)
- [Flutter GitHub](https://github.com/flutter/flutter)

## 🎯 Next Steps

Once you have the app running:

1. **Explore the Code**
   - Check `lib/main.dart` for app structure
   - Review `lib/screens/` for page implementations
   - Examine `lib/utils/` for helper functions

2. **Customize the App**
   - Update NGO information in `lib/utils/constants.dart`
   - Add your logo to `assets/images/`
   - Modify colors and themes in `lib/main.dart`

3. **Add Features**
   - Implement backend integration
   - Add more form fields
   - Include photo upload functionality
   - Add push notifications

4. **Deploy the App**
   - Build APK: `flutter build apk --release`
   - Build for iOS: `flutter build ios --release`
   - Publish to app stores

## 💡 Tips for Success

- **Use Hot Reload**: Press 'r' in terminal for quick UI updates
- **Use Hot Restart**: Press 'R' for full app restart
- **Check Console**: Always monitor console output for errors
- **Test on Multiple Devices**: Ensure compatibility across devices
- **Follow Flutter Best Practices**: Use proper widget structure and state management

## 🆘 Getting Help

If you encounter issues:

1. **Check Flutter Doctor**: `flutter doctor -v` for detailed diagnostics
2. **Search Documentation**: Flutter docs have comprehensive guides
3. **Community Support**: Stack Overflow and Flutter community forums
4. **GitHub Issues**: Check Flutter GitHub for known issues

---

**Happy Coding! 🚀**

This setup guide should get you up and running with the Hope Foundation NGO app. Remember to test thoroughly on different devices and screen sizes to ensure the best user experience.