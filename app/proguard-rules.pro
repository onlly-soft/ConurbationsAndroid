# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in /Users/lijinshan/Library/Android/sdk/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}
-dontwarn com.android.*
-dontwarn com.google.*
-dontwarn android.app.*

-keepclassmembers class * {
   public <init>(org.json.JSONObject);
}

-keep public class com.umeng.fb.ui.ThreadView {
}

-keep public class com.mango.doubleball.R$*{
	public static final int *;
	public static int *;
}

-keepclassmembers class com.mango.core.view.webview.JavaScriptCallBack {
   public void a(...);
   public void setActionListener(...);
}

-keepclassmembers class com.mango.core.util.CommonUtil {
   public final static String md5DeviceUid(Context);
}

-keepclassmembers class com.mango.core.util.SysInfo {
   native public static byte[] isValid(Context);
}

-keep class com.tencent.** {*;}
-dontwarn com.tencent.**

## getui
-dontwarn com.igexin.**
-keep class com.igexin.**{*;}

-keep class com.ipaynow.** {*;}
-dontwarn com.ipaynow.**

-keep class com.getkeepsafe.taptargetview.** {*;}
-dontwarn com.getkeepsafe.taptargetview.**

## JS Bridge
-keepclassmembers class com.mango.common.util.WangcaiJsBridgeV1 {
   public *;
}

-keep class com.tencent.mm.sdk.** {
   *;
}

-keepattributes *Annotation*
-keepattributes *JavascriptInterface*
-keep class com.mango.scoremall.** { *; }

-keepattributes Signature
-keep class sun.misc.Unsafe { *; }
-keep class com.taobao.** {*;}
-keep class com.alibaba.** {*;}
-keep class com.alipay.** {*;}
-dontwarn com.taobao.**
-dontwarn com.alibaba.**
-dontwarn com.alipay.**
-keep class com.ut.** {*;}
-dontwarn com.ut.**
-keep class com.ta.** {*;}
-dontwarn com.ta.**

-keep class com.alibaba.sdk.android.feedback.** {*;}
-keep class android.support.annotation.** {*;}
-keep class okio.** {*;}
-dontwarn android.support.v4.**
-dontwarn com.androidquery.**
-keep class android.support.v4.** { *; }
-keep class com.qq.e.** {
    public protected *;
 }
-keep class android.support.v4.app.NotificationCompat**{
    public *;
}

-keep class org.apache.http.** { *; }
-keep class com.android.volley.** { *; }
-dontwarn org.apache.http.**
-keep class android.net.http.** { *; }
-dontwarn android.net.http.**
-dontwarn com.amap.api.col.ar

-keep class com.mango.push.processor.MiMessageReceiver {*;}
#可以防止一个误报的 warning 导致无法成功编译，如果编译使用的 Android 版本是 23。
-dontwarn com.xiaomi.push.**
-dontwarn uk.co.senab.**

-keepattributes SourceFile,LineNumberTable
-keep public class * implements com.bumptech.glide.module.GlideModule
-keep class com.baidu.** {
 public protected *;
}
-dontwarn id.zelory.compressor.**
-keep public class * extends android.app.Fragment
-keep public class * extends android.app.Activity
-keep public class * extends android.app.Application
-keep public class * extends android.app.Service
-keep public class * extends android.content.BroadcastReceiver
-keep public class * extends android.content.ContentProvider
-keep public class * extends android.app.backup.BackupAgentHelper
-keep public class * extends android.preference.Preference
-keep public class * extends android.support.v4.**
-keep public class com.android.vending.licensing.ILicensingService
-keep class com.android.vending.licensing.ILicensingService
-keep class android.support.v4.** { *; }
-keep class okhttp3.*
-keep class com.sobot.** {*;}
-dontwarn android.support.v4.**
-dontwarn okio.**
-dontwarn android.webkit.WebView
-keepclasseswithmembernames class * {
  native <methods>;
}
-keepclasseswithmembernames class * {
  public <init>(android.content.Context, android.util.AttributeSet);
}
-keepclasseswithmembernames class * {
  public <init>(android.content.Context, android.util.AttributeSet, int);
}
-keepclassmembers enum * {
  public static **[] values();
  public static ** valueOf(java.lang.String);
}
-keep class * implements android.os.Parcelable {
  public static final android.os.Parcelable$Creator *;
}
-keepclasseswithmembers class * {
  public <init>(android.content.Context);
}
-keepclassmembers class * {
  public <init>(org.json.JSONObject);
}


#七牛
-keep class com.qiniu.**{*;}
-keep class com.qiniu.**{public <init>();}
-ignorewarnings