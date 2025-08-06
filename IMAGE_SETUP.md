# Image Setup Guide for NGO App

## Overview
The NGO app has been enhanced with placeholder image sections for two key images that represent the mission and impact of the organization.

## Images to Add

### 1. Unity Hands Image (`assets/images/unity_hands.jpg`)
- **Description**: High-angle shot of multiple hands piled together showing unity, teamwork, and support
- **Features**: Diverse skin tones, various clothing visible, bracelets and accessories
- **Purpose**: Represents community unity and collaborative effort
- **Location**: Displayed in the home page with "Unity in Action" overlay

### 2. Children Joy Image (`assets/images/children_joy.jpg`)
- **Description**: Vibrant high-angle shot of five young children looking up at camera with joyful expressions
- **Features**: Children making peace signs, diverse clothing, outdoor setting
- **Purpose**: Represents the joy and hope that the NGO brings to communities
- **Location**: Displayed in the home page with "Spreading Joy & Hope" overlay

## How to Add Images

1. **Prepare the images**:
   - Recommended size: 400x300 pixels or larger
   - Format: JPG or PNG
   - Optimize for web/mobile use

2. **Place the images**:
   - Save `unity_hands.jpg` in `assets/images/`
   - Save `children_joy.jpg` in `assets/images/`

3. **Update the code** (if needed):
   The app is already configured to use these images. If you want to use different filenames, update the image paths in `lib/screens/home_page.dart`.

## Current Implementation

The app currently uses placeholder containers with gradients and icons that represent the intended images. When you add the actual images, they will automatically be displayed in the designated sections.

## Features Added

✅ **Home Page**: About NGO, logo & welcome message  
✅ **Volunteer Form**: Name, phone, and city fields  
✅ **Navigation**: Bottom tabs and drawer for switching screens  
✅ **Images**: Placeholder sections for unity hands and children joy images  
✅ **Cross-platform**: Works on Android and iOS  

## App Structure

- **Main Screen**: Bottom navigation with Home and Volunteer tabs
- **Drawer**: Additional navigation with About and Contact options
- **Home Page**: Enhanced with image sections, mission cards, and impact statistics
- **Volunteer Form**: Complete form with validation and submission feedback

## Running the App

```bash
flutter pub get
flutter run
```

The app is now ready to run and will display placeholder image sections until you add the actual images. 