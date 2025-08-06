# Deployment Guide - Hope Foundation NGO App

This guide covers how to build and deploy the Hope Foundation NGO app for production on various platforms.

## 📱 Platform Support

This Flutter app supports deployment to:
- ✅ **Android** (Google Play Store)
- ✅ **iOS** (Apple App Store) - requires macOS
- ✅ **Web** (Progressive Web App)
- ✅ **Windows** (Microsoft Store / Standalone)
- ✅ **macOS** (Mac App Store / Standalone)
- ✅ **Linux** (Snap Store / Standalone)

## 🏗️ Pre-Deployment Checklist

### Code Quality
- [ ] All features tested and working
- [ ] Form validation working correctly
- [ ] Navigation functioning properly
- [ ] UI responsive on different screen sizes
- [ ] No debug prints or test code in production
- [ ] App icons and splash screens configured

### Configuration
- [ ] Update app version in `pubspec.yaml`
- [ ] Configure app signing certificates
- [ ] Update app metadata (name, description, etc.)
- [ ] Add privacy policy and terms of service
- [ ] Configure analytics and crash reporting (if needed)

## 🤖 Android Deployment

### Step 1: Prepare for Release

1. **Update App Configuration**
   ```yaml
   # pubspec.yaml
   version: 1.0.0+1  # Update version number
   ```

2. **Configure App Signing**
   - Create keystore file:
   ```bash
   keytool -genkey -v -keystore ~/upload-keystore.jks -keyalg RSA -keysize 2048 -validity 10000 -alias upload
   ```

3. **Create key.properties file**
   ```properties
   # android/key.properties
   storePassword=<password>
   keyPassword=<password>
   keyAlias=upload
   storeFile=<path-to-keystore>
   ```

4. **Update build.gradle**
   ```gradle
   // android/app/build.gradle
   android {
       ...
       signingConfigs {
           release {
               keyAlias keystoreProperties['keyAlias']
               keyPassword keystoreProperties['keyPassword']
               storeFile keystoreProperties['storeFile'] ? file(keystoreProperties['storeFile']) : null
               storePassword keystoreProperties['storePassword']
           }
       }
       buildTypes {
           release {
               signingConfig signingConfigs.release
           }
       }
   }
   ```

### Step 2: Build Release APK

```bash
# Build APK
flutter build apk --release

# Build App Bundle (recommended for Play Store)
flutter build appbundle --release
```

### Step 3: Test Release Build

```bash
# Install APK on device
flutter install --release
```

### Step 4: Deploy to Google Play Store

1. **Create Google Play Console Account**
   - Go to [play.google.com/console](https://play.google.com/console)
   - Pay one-time $25 registration fee

2. **Create New App**
   - Click "Create app"
   - Fill in app details
   - Upload app bundle (`build/app/outputs/bundle/release/app-release.aab`)

3. **Complete Store Listing**
   - App description
   - Screenshots
   - Feature graphic
   - Privacy policy URL

4. **Submit for Review**

## 🍎 iOS Deployment (macOS Required)

### Step 1: Setup Xcode Project

1. **Open iOS project in Xcode**
   ```bash
   open ios/Runner.xcworkspace
   ```

2. **Configure Bundle Identifier**
   - Select Runner target
   - Update Bundle Identifier (e.g., com.hopefoundation.ngoapp)

3. **Configure Signing**
   - Select your Apple Developer Team
   - Enable "Automatically manage signing"

### Step 2: Build for iOS

```bash
# Build iOS release
flutter build ios --release
```

### Step 3: Archive and Upload

1. **In Xcode:**
   - Product → Archive
   - Window → Organizer
   - Select archive → Distribute App
   - Choose "App Store Connect"

2. **Submit to App Store**
   - Go to [appstoreconnect.apple.com](https://appstoreconnect.apple.com)
   - Create new app
   - Fill in metadata
   - Submit for review

## 🌐 Web Deployment

### Step 1: Build Web Version

```bash
# Build for web
flutter build web --release
```

### Step 2: Deploy to Hosting Service

#### Option A: Firebase Hosting
```bash
# Install Firebase CLI
npm install -g firebase-tools

# Initialize Firebase
firebase init hosting

# Deploy
firebase deploy
```

#### Option B: GitHub Pages
1. Push `build/web` contents to `gh-pages` branch
2. Enable GitHub Pages in repository settings

#### Option C: Netlify
1. Drag and drop `build/web` folder to [netlify.com](https://netlify.com)
2. Or connect GitHub repository for automatic deployment

### Step 3: Configure PWA (Optional)

Update `web/manifest.json` for Progressive Web App features:
```json
{
  "name": "Hope Foundation NGO",
  "short_name": "Hope Foundation",
  "start_url": ".",
  "display": "standalone",
  "background_color": "#2E7D32",
  "theme_color": "#2E7D32",
  "description": "NGO app for volunteer registration and information",
  "orientation": "portrait-primary",
  "prefer_related_applications": false,
  "icons": [
    {
      "src": "icons/Icon-192.png",
      "sizes": "192x192",
      "type": "image/png"
    },
    {
      "src": "icons/Icon-512.png",
      "sizes": "512x512",
      "type": "image/png"
    }
  ]
}
```

## 🖥️ Windows Deployment

### Step 1: Build Windows App

```bash
# Build Windows executable
flutter build windows --release
```

### Step 2: Create Installer (Optional)

Use tools like:
- **Inno Setup** for Windows installer
- **MSIX** for Microsoft Store deployment

```bash
# Build MSIX package
flutter build windows --release
dart pub global activate msix
dart pub global run msix:create
```

### Step 3: Deploy to Microsoft Store

1. **Create Microsoft Partner Center account**
2. **Upload MSIX package**
3. **Complete store listing**
4. **Submit for certification**

## 🖥️ macOS Deployment

### Step 1: Build macOS App

```bash
# Build macOS app
flutter build macos --release
```

### Step 2: Code Signing (for distribution)

```bash
# Sign the app
codesign --force --verify --verbose --sign "Developer ID Application: Your Name" build/macos/Build/Products/Release/ngo_app.app
```

### Step 3: Create DMG (Optional)

Use tools like **create-dmg** to create installer:
```bash
create-dmg build/macos/Build/Products/Release/ngo_app.app
```

## 🐧 Linux Deployment

### Step 1: Build Linux App

```bash
# Build Linux executable
flutter build linux --release
```

### Step 2: Create Snap Package

1. **Create snapcraft.yaml**
   ```yaml
   name: hope-foundation-ngo
   version: '1.0.0'
   summary: Hope Foundation NGO App
   description: |
     Cross-platform app for Hope Foundation NGO volunteer registration
   
   grade: stable
   confinement: strict
   base: core20
   
   parts:
     ngo-app:
       plugin: flutter
       source: .
       flutter-target: lib/main.dart
   
   apps:
     hope-foundation-ngo:
       command: ngo_app
       extensions: [flutter-master]
   ```

2. **Build Snap**
   ```bash
   snapcraft
   ```

3. **Deploy to Snap Store**
   ```bash
   snapcraft upload --release=stable ngo-app_1.0.0_amd64.snap
   ```

## 📊 Analytics and Monitoring

### Firebase Analytics (Optional)

1. **Add Firebase to project**
   ```bash
   flutter pub add firebase_core firebase_analytics
   ```

2. **Configure Firebase**
   - Create Firebase project
   - Add Android/iOS apps
   - Download configuration files

3. **Initialize in app**
   ```dart
   import 'package:firebase_core/firebase_core.dart';
   import 'package:firebase_analytics/firebase_analytics.dart';
   
   void main() async {
     WidgetsFlutterBinding.ensureInitialized();
     await Firebase.initializeApp();
     runApp(NGOApp());
   }
   ```

### Crashlytics (Optional)

```bash
flutter pub add firebase_crashlytics
```

## 🔒 Security Considerations

### Code Obfuscation

```bash
# Build with obfuscation
flutter build apk --release --obfuscate --split-debug-info=build/debug-info
flutter build appbundle --release --obfuscate --split-debug-info=build/debug-info
```

### API Security

- Use HTTPS for all network requests
- Implement proper authentication
- Validate all user inputs
- Store sensitive data securely

## 📈 Performance Optimization

### Build Optimization

```bash
# Analyze bundle size
flutter build apk --analyze-size
flutter build appbundle --analyze-size
```

### Image Optimization

- Use appropriate image formats (WebP for web)
- Compress images before adding to assets
- Use vector graphics where possible

## 🧪 Testing Before Deployment

### Automated Testing

```bash
# Run all tests
flutter test

# Run integration tests
flutter drive --target=test_driver/app.dart
```

### Manual Testing Checklist

- [ ] Test on multiple devices/screen sizes
- [ ] Test all navigation flows
- [ ] Test form validation
- [ ] Test offline functionality (if applicable)
- [ ] Test performance on low-end devices
- [ ] Test accessibility features

## 📋 Post-Deployment

### Monitoring

- Monitor app store reviews and ratings
- Track crash reports and fix issues
- Monitor app performance metrics
- Gather user feedback

### Updates

- Plan regular updates with new features
- Fix bugs promptly
- Keep dependencies updated
- Follow platform-specific guidelines

## 🆘 Troubleshooting Deployment Issues

### Common Android Issues

**Issue**: "App not installed" error
**Solution**: Check app signing and version codes

**Issue**: "Upload failed" on Play Store
**Solution**: Ensure app bundle is properly signed

### Common iOS Issues

**Issue**: "Invalid Bundle" error
**Solution**: Check Bundle Identifier and provisioning profiles

**Issue**: Archive fails in Xcode
**Solution**: Clean build folder and rebuild

### Common Web Issues

**Issue**: App doesn't load on web
**Solution**: Check CORS settings and web compatibility

**Issue**: PWA features not working
**Solution**: Verify manifest.json and service worker configuration

## 📞 Support and Resources

- **Flutter Deployment Docs**: [flutter.dev/docs/deployment](https://flutter.dev/docs/deployment)
- **Google Play Console**: [play.google.com/console](https://play.google.com/console)
- **App Store Connect**: [appstoreconnect.apple.com](https://appstoreconnect.apple.com)
- **Firebase Console**: [console.firebase.google.com](https://console.firebase.google.com)

---

**Successful Deployment! 🚀**

This deployment guide covers all major platforms and should help you successfully deploy the Hope Foundation NGO app to your chosen platforms. Remember to test thoroughly before each release and keep your app updated with the latest security patches and features.