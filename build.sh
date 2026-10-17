#!/bin/bash
# Needs: Node 18+, JDK 17, Android SDK (Android Studio). Run: bash build.sh
set -e
npm install
[ -d android ] || npx cap add android
M=android/app/src/main/AndroidManifest.xml
grep -q "permission.CAMERA" $M || sed -i 's#<application#<uses-permission android:name="android.permission.CAMERA" />\n    <application#' $M
npx cap sync android
cd android && ./gradlew assembleDebug
echo "APK: android/app/build/outputs/apk/debug/app-debug.apk"
