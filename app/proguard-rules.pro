# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in /Users/kahel/Library/Android/sdk/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

# Facebook
-keep class com.facebook.** { *; }
-keepattributes Signature

# Twitter 4j
-keep class twitter4j.** { *; }
-dontwarn twitter4j.**

# Picasso and okhttp
-dontwarn com.squareup.okhttp.**
-dontwarn com.squareup.picasso.**

# Butterknife
-keep class butterknife.** { *; }
-dontwarn butterknife.internal.**
-keep class **$$ViewBinder { *; }

# Retrolambda
-dontwarn java.lang.invoke.*

# Remove logging for release build
-assumenosideeffects class android.util.Log {
   public static boolean isLoggable(java.lang.String, int);
    public static int v(...);
    public static int i(...);
    public static int w(...);
    public static int d(...);
   public static int e(...);
}

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.
#-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
#-renamesourcefileattribute SourceFile
