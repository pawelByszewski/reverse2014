-optimizations !code/simplification/arithmetic,!code/simplification/cast,!field/*,!class/merging/*,!code/allocation/variable
-optimizationpasses 1
-allowaccessmodification
-dontpreverify


-dontwarn org.apache.commons.collections.**
-dontwarn org.apache.commons.beanutils.**
-dontusemixedcaseclassnames
-dontskipnonpubliclibraryclasses
-verbose


# ---------------- Android
-keep public class * extends android.app.Activity
-keep public class * extends android.app.Application
-keep public class * extends android.app.Service
-keep public class * extends android.content.BroadcastReceiver
-keep public class * extends android.content.ContentProvider
-keep public class * extends android.app.backup.BackupAgentHelper
-keep public class * extends android.preference.Preference
-keep public class * extends android.app.Fragment
-keep public class * extends android.support.v4.app.Fragment

-keep public class com.android.vending.licensing.ILicensingService
-keep public class pl.allegro.sale.ui.main.MainActivity
-keepnames public class pl.allegro.sale.ui.main.MainActivity
-keep public class pl.allegro.sale.ui.main.MainActivity.**


-keepclassmembers public class pl.allegro.sale.ui.main.MainActivity

-keep public class * extends android.view.View {
    public <init>(android.content.Context);
    public <init>(android.content.Context, android.util.AttributeSet);
    public <init>(android.content.Context, android.util.AttributeSet, int);
    public void set*(...);
}

-keepclasseswithmembernames class * {
    native <methods>;
}

-keepclasseswithmembers class * {
    public <init>(android.content.Context, android.util.AttributeSet);
}

-keepclasseswithmembers class * {
    public <init>(android.content.Context, android.util.AttributeSet, int);
}

-keepclassmembers class * extends android.content.Context {
   public void *(android.view.View);
   public void *(android.view.MenuItem);
}

-keepclassmembers class * implements android.os.Parcelable {
    static ** CREATOR;
}

-keepclassmembers class **.R$* {
    public static <fields>;
}

-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}


# ---------------- support libs
-keep class android.support.v4.os.** { *; }
-keep class android.support.v8.** { *; }

-dontwarn android.support.v4.**
-dontwarn android.support.v8.**
