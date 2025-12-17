# TryOn Me 👕

A Flutter application for virtual clothing try-on using AI-powered image generation.  Upload photos of yourself and clothing items to see how outfits would look on you! 

## 🌟 Features

- **Virtual Try-On**: Upload a person image and a garment image to generate realistic try-on results
- **Cross-Platform Support**: Built with Flutter for Android, iOS, Web, Windows, macOS, and Linux
- **AI-Powered**:  Integrates with fal.ai's image generation services for high-quality results
- **Modern UI**: Clean, intuitive interface built with Material Design and Google Fonts
- **File Management**: Easy image selection and upload with permission handling

## 📋 Prerequisites

- Flutter SDK 3.5.3 or higher
- Dart SDK
- fal.ai API key (for AI try-on functionality)

## 🚀 Getting Started

### Installation

1. Clone the repository:
```bash
git clone https://github.com/f8th/tryon_me.git
cd tryon_me
```

2. Install dependencies:
```bash
flutter pub get
```

3. Set up environment variables:
   - Create a `.env` file in the root directory
   - Add your fal.ai API credentials:
```
FAL_API_KEY=your_api_key_here
```

4. Run the app:
```bash
flutter run
```

## 📦 Dependencies

- **http** (^1.2.2) - HTTP requests for API communication
- **permission_handler** (^11.3.1) - Handle device permissions
- **file_picker** (^8.1.7) - Select images from device
- **device_info_plus** (^11.2.0) - Get device information
- **cross_file** (^0.3.4+2) - Cross-platform file handling
- **fal_client** (^0.3.0) - Integration with fal.ai services
- **flutter_dotenv** (^5.2.1) - Environment variable management
- **google_fonts** (^6.2.1) - Beautiful typography

## 🏗️ Project Structure

```
lib/
├── main.dart           # Application entry point
├── models/             # Data models
├── screens/            # UI screens
├── services/           # Business logic and API services
├── utils/              # Utility functions and helpers
└── widgets/            # Reusable UI components
```

## 🎯 How to Use

1. **Launch the App**: Open TryOn Me on your device
2. **Select Person Image**: Upload a photo of yourself or a model
3. **Select Garment Image**: Upload an image of the clothing item you want to try on
4. **Generate**:  Wait for the AI to process and generate the try-on result
5. **View Results**: See how the outfit looks on you!

## 🔐 Permissions

The app requires the following permissions:
- **Storage Access**: To select images from your device
- **Internet**: To communicate with AI services

## 🛠️ Development

### Running Tests
```bash
flutter test
```

### Building for Production

**Android:**
```bash
flutter build apk --release
```

**iOS:**
```bash
flutter build ios --release
```

**Web:**
```bash
flutter build web --release
```

## 🤝 Contributing

Contributions, issues, and feature requests are welcome! Feel free to check the issues page. 

## 📝 License

This project is available for personal and educational use.

## 🙏 Acknowledgments

- Powered by [fal.ai](https://fal.ai) for AI image generation
- Built with [Flutter](https://flutter.dev)

## 📞 Support

If you encounter any issues or have questions, please open an issue on GitHub. 

---

Made with ❤️ using Flutter
