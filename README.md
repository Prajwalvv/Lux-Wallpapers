# Lux Wallpapers

![Lux Wallpapers](https://github.com/Prajwalvv/Lux-Wallpapers/raw/main/IMG_0527.PNG)

## Overview
Lux Wallpapers is a premium iOS application featuring a curated collection of luxury wallpapers for iPhone. The app reached the top 7 position worldwide in its category when it was released in 2019.

## Features
- **Elegant UI**: Beautiful, modern interface with smooth animations and transitions
- **Categorized Collections**: Organized wallpapers in multiple luxury categories:
  - Gold A-Z
  - Dark
  - Abstract
  - Stud
  - Geometric
  - Lux
  - Patch
  - Shade
  - Modern
- **Easy Sharing**: Simple one-tap sharing to save wallpapers to your device
- **Intuitive Navigation**: Gliding collection view for seamless browsing experience
- **Splash Animation**: Stylish revealing splash animation when launching the app
- **App Walkthrough**: Simple tutorial to help users get started

## Technical Details
- **Language**: Swift
- **Minimum iOS Version**: iOS 9.0+
- **Dependencies**:
  - GlidingCollection: For smooth horizontal scrolling collections
  - SDWebImage/MapKit: For efficient image loading and caching
  - SwiftyStoreKit: For in-app purchases
  - KeychainAccess: For secure storage

## Architecture
The app follows a standard MVC architecture:
- **Models**: Structured data models for wallpaper categories and items
- **Views**: Custom UI components including collection cells and page cells
- **Controllers**: View controllers managing the app flow and user interactions

## Project Structure
- **Main Controllers**:
  - `ViewController`: Main screen with gliding collection of wallpaper categories
  - `introWallViewController`: Onboarding tutorial screen
  - `SaveViewController`: Handling wallpaper saving functionality
- **Custom Components**:
  - `RevealingSplashView`: Custom splash animation
  - `CollectionCell`: Custom collection view cells for wallpapers
  - `PageCell`: Cells for the onboarding tutorial

## Installation
1. Clone the repository
   ```
   git clone https://github.com/Prajwalvv/Lux-Wallpapers.git
   ```
2. Navigate to the project directory
   ```
   cd Lux-Wallpapers
   ```
3. Install dependencies using CocoaPods
   ```
   pod install
   ```
4. Open the workspace file
   ```
   open "superior wallpapers.xcworkspace"
   ```
5. Build and run the project in Xcode

## Requirements
- Xcode 10.0+
- iOS 9.0+
- Swift 4.2+
- CocoaPods

## Credits
- Developed by Prajwal V
- Released in 2019
- Reached top 7 worldwide in its category

## License
This project is licensed under the MIT License - see the LICENSE file for details.

---

© 2019 Lux Wallpapers. All rights reserved.
