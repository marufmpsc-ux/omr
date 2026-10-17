# OMR Scanner – APK প্রজেক্ট

## উপায় ১: GitHub দিয়ে (কম্পিউটারে কিছু ইনস্টল লাগে না)
1. github.com-এ নতুন repository খুলে এই ফোল্ডারের সব ফাইল (লুকানো .github সহ) আপলোড করুন।
2. Actions ট্যাবে "Build APK" চলবে (বা Run workflow চাপুন)।
3. শেষ হলে ওই run-এর Artifacts থেকে `omr-apk` নামিয়ে জিপ খুলুন, `app-debug.apk` ফোনে ইনস্টল করুন
   (ফোনে "Install unknown apps" অনুমতি লাগবে)।

## উপায় ২: নিজের কম্পিউটারে
Node 18+, JDK 17 ও Android SDK (Android Studio) থাকলে:
    bash build.sh
APK: android/app/build/outputs/apk/debug/app-debug.apk

## নোট
- অ্যাপের কোড: www/index.html (বদলালে আবার build করুন)।
- এটি debug APK, ব্যক্তিগত ব্যবহারের জন্য। Play Store-এর জন্য signed release build লাগবে।
- ইনস্টল করার পর প্রথমবার ক্যামেরা অনুমতি দিন।
- অ্যাপের ভেতর থেকে সরাসরি প্রিন্ট কাজ নাও করতে পারে; শিট প্রিন্ট ব্রাউজারে করুন।
