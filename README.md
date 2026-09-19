# Flutter Shorebird OTA Update Demo

This Flutter application demonstrates the concept of Over-the-Air (OTA) updates using Shorebird. It displays a message and a patch version string that can be modified. The core idea is that these displayed values can be updated and deployed as a "patch" using the Shorebird CLI, allowing users to receive updates instantly without needing to download a new version from an app store.

## Language

`dart`

## How to Run

1. Ensure Flutter and Shorebird CLIs are installed.
2. Create a new Flutter project: `flutter create shorebird_ota_demo && cd shorebird_ota_demo`.
3. Replace the contents of `lib/main.dart` with the provided code.
4. Initialize Shorebird in your project: `shorebird init`.
5. Build and install the initial release on a device/emulator: `shorebird release android --flavor production` (or `ios`).
6. To demonstrate an OTA update:
   a. Modify the `currentMessage` or `patchVersion` strings in `lib/main.dart` (e.g., change "Patch 1" to "Patch 2").
   b. Create a Shorebird patch: `shorebird patch android --flavor production`.
   c. Restart the installed app on your device/emulator; the updated message/version should appear without reinstalling.

## Original Article

This example accompanies the Turkish article: [Flutter Uygulamalarında Shorebird ile OTA Güncellemeleri: Hızlı ve Sorunsuz Bir Deneyim Nasıl Sağlanır?](https://fatihsoysal.com/blog/flutter-uygulamalarinda-shorebird-ile-ota-guncellemeleri-hizli-ve-sorunsuz-bir-deneyim-nasil-saglanir/).

## License

MIT — see [LICENSE](LICENSE).
