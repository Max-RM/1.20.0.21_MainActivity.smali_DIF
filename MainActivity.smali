.class public Lcom/mojang/minecraftpe/MainActivity;
.super Landroid/app/NativeActivity;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Lcom/mojang/minecraftpe/FilePickerManagerHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mojang/minecraftpe/MainActivity$NetworkReceiver;,
        Lcom/mojang/minecraftpe/MainActivity$HeadsetConnectionReceiver;,
        Lcom/mojang/minecraftpe/MainActivity$IncomingHandler;,
        Lcom/mojang/minecraftpe/MainActivity$MessageConnectionStatus;
    }
.end annotation


# static fields
.field private static final MAX_SESSION_HISTORY_LENGTH:I = 0x14

.field static final MSG_CORRELATION_CHECK:I = 0x2a0

.field static final MSG_CORRELATION_RESPONSE:I = 0x345

.field static final OPEN_FILE_RESULT_CODE:I = 0x5

.field private static final POST_NOTIFICATIONS_PERMISSION_ID:I = 0x2

.field public static final RESULT_EDU_AUTH:I = 0x7d0

.field public static RESULT_GOOGLEPLAY_PURCHASE:I = 0x2

.field public static RESULT_PICK_IMAGE:I = 0x1

.field static final SAVE_FILE_RESULT_CODE:I = 0x4

.field private static final SESSION_HISTORY_KEY:Ljava/lang/String; = "session-history"

.field private static final SESSION_HISTORY_SEP:Ljava/lang/String; = "&"

.field private static final STORAGE_PERMISSION_ID:I = 0x1

.field private static _isPowerVr:Z = false

.field private static final mAFDevKey:Ljava/lang/String; = "jBHFfePzvJhHdfvijAcLoQ"

.field private static mHasStoragePermission:Z = false

.field public static mInstance:Lcom/mojang/minecraftpe/MainActivity;


# instance fields
.field private final DateFormat:Ljava/text/DateFormat;

.field private final REQUEST_PUSH_PERMISSION_STRING:Ljava/lang/String;

.field SystemProperties:Ljava/lang/Class;

.field private _fromOnCreate:Z

.field private _userInputStatus:I

.field private _userInputText:[Ljava/lang/String;

.field private _userInputValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mojang/android/StringValue;",
            ">;"
        }
    .end annotation
.end field

.field private clipboardManager:Landroid/content/ClipboardManager;

.field private data:Landroid/os/Bundle;

.field private deviceManager:Lcom/mojang/minecraftpe/input/InputDeviceManager;

.field getPropMethod:Ljava/lang/reflect/Method;

.field headsetConnectionReceiver:Lcom/mojang/minecraftpe/MainActivity$HeadsetConnectionReceiver;

.field private initialUserLocale:Ljava/util/Locale;

.field mActivityListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mojang/minecraftpe/ActivityListener;",
            ">;"
        }
    .end annotation
.end field

.field private mBatteryMonitor:Lcom/mojang/minecraftpe/BatteryMonitor;

.field mBound:Lcom/mojang/minecraftpe/MainActivity$MessageConnectionStatus;

.field mCachedDebugMemoryInfo:Landroid/os/Debug$MemoryInfo;

.field mCachedDebugMemoryUpdateTime:J

.field mCachedMemoryInfo:Landroid/app/ActivityManager$MemoryInfo;

.field mCachedMemoryInfoUpdateTime:J

.field mCachedUsedMemory:J

.field mCachedUsedMemoryUpdateTime:J

.field private mCallback:J

.field private mConnection:Landroid/content/ServiceConnection;

.field private mCrashManager:Lcom/mojang/minecraftpe/CrashManager;

.field private mCurrentSession:Lcom/mojang/minecraftpe/SessionInfo;

.field private mCursorLocked:Z

.field private mDialog:Landroid/app/AlertDialog;

.field private mFileDialogCallback:J

.field private mFilePickerManager:Lcom/mojang/minecraftpe/FilePickerManager;

.field private mHardwareInformation:Lcom/mojang/minecraftpe/HardwareInformation;

.field private mIsRunningInAppCenter:Z

.field private mIsSoftKeyboardVisible:Z

.field public mLastPermissionRequestReason:I

.field final mMessenger:Landroid/os/Messenger;

.field private mMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

.field public mPickedFileDescriptor:Landroid/os/ParcelFileDescriptor;

.field private mSentryEndpointAndroidAmazon:Lcom/mojang/minecraftpe/SentryEndpointConfig;

.field private mSentryEndpointAndroidChromebook:Lcom/mojang/minecraftpe/SentryEndpointConfig;

.field private mSentryEndpointAndroidChromebookTrial:Lcom/mojang/minecraftpe/SentryEndpointConfig;

.field private mSentryEndpointAndroidTrial:Lcom/mojang/minecraftpe/SentryEndpointConfig;

.field private mSentryEndpointBedrockPublish:Lcom/mojang/minecraftpe/SentryEndpointConfig;

.field private mSentryEndpointBedrockRelease:Lcom/mojang/minecraftpe/SentryEndpointConfig;

.field private mSentryEndpointConfigUrl:Ljava/lang/String;

.field private mSentryEndpointEDU:Lcom/mojang/minecraftpe/SentryEndpointConfig;

.field mService:Landroid/os/Messenger;

.field private mSessionHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/mojang/minecraftpe/SessionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mThermalMonitor:Lcom/mojang/minecraftpe/ThermalMonitor;

.field private mVolume:F

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWorldRecovery:Lcom/mojang/minecraftpe/WorldRecovery;

.field networkReceiver:Lcom/mojang/minecraftpe/MainActivity$NetworkReceiver;

.field platform:Lcom/mojang/minecraftpe/platforms/Platform;

.field public preloadingHTML:Ljava/lang/String;

.field textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

.field private textToSpeechManager:Landroid/speech/tts/TextToSpeech;

.field public virtualKeyboardHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "MCPE"

    const-string v1, "c++_shared"

    .line 2303
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    :try_start_0
    const-string v1, "maesdk"

    .line 2306
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "maesdk library not found. This is expected if we\'re not in Edu mode"

    .line 2308
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :try_start_1
    const-string v1, "ovrfmod"

    .line 2312
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string v1, "OVRfmod library not found"

    .line 2314
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    :try_start_2
    const-string v1, "ovrplatformloader"

    .line 2317
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    const-string v1, "OVRplatform library not found"

    .line 2319
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const-string v0, "fmod"

    .line 2322
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "minecraftpe"

    .line 2323
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 132
    invoke-direct {p0}, Landroid/app/NativeActivity;-><init>()V

    const/4 v0, 0x0

    .line 134
    iput v0, p0, Lcom/mojang/minecraftpe/MainActivity;->virtualKeyboardHeight:I

    .line 136
    iput-boolean v0, p0, Lcom/mojang/minecraftpe/MainActivity;->_fromOnCreate:Z

    .line 137
    iput-boolean v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mCursorLocked:Z

    .line 138
    iput-boolean v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mIsSoftKeyboardVisible:Z

    const-wide/16 v1, 0x0

    .line 139
    iput-wide v1, p0, Lcom/mojang/minecraftpe/MainActivity;->mFileDialogCallback:J

    const/high16 v3, 0x3f800000    # 1.0f

    .line 140
    iput v3, p0, Lcom/mojang/minecraftpe/MainActivity;->mVolume:F

    .line 141
    iput-boolean v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mIsRunningInAppCenter:Z

    const-string v0, "https://sentry.io"

    .line 143
    iput-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mSentryEndpointConfigUrl:Ljava/lang/String;

    .line 144
    new-instance v3, Lcom/mojang/minecraftpe/SentryEndpointConfig;

    const-string v4, "2277697"

    const-string v5, "1c3f5cbd723a4a84879059d260b19ef6"

    invoke-direct {v3, v0, v4, v5}, Lcom/mojang/minecraftpe/SentryEndpointConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/mojang/minecraftpe/MainActivity;->mSentryEndpointBedrockPublish:Lcom/mojang/minecraftpe/SentryEndpointConfig;

    .line 145
    new-instance v0, Lcom/mojang/minecraftpe/SentryEndpointConfig;

    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity;->mSentryEndpointConfigUrl:Ljava/lang/String;

    const-string v5, "d49eacb334d847599b87629a6ff2ef3b"

    invoke-direct {v0, v3, v4, v5}, Lcom/mojang/minecraftpe/SentryEndpointConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mSentryEndpointBedrockRelease:Lcom/mojang/minecraftpe/SentryEndpointConfig;

    .line 146
    new-instance v0, Lcom/mojang/minecraftpe/SentryEndpointConfig;

    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity;->mSentryEndpointConfigUrl:Ljava/lang/String;

    const-string v4, "2308440"

    const-string v5, "668bc09f7bcf461796ea07c1006076fe"

    invoke-direct {v0, v3, v4, v5}, Lcom/mojang/minecraftpe/SentryEndpointConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mSentryEndpointAndroidTrial:Lcom/mojang/minecraftpe/SentryEndpointConfig;

    .line 147
    new-instance v0, Lcom/mojang/minecraftpe/SentryEndpointConfig;

    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity;->mSentryEndpointConfigUrl:Ljava/lang/String;

    const-string v4, "4504160567623680"

    const-string v5, "07de942d079b42fab40f6a7e3f3383cb"

    invoke-direct {v0, v3, v4, v5}, Lcom/mojang/minecraftpe/SentryEndpointConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mSentryEndpointAndroidChromebook:Lcom/mojang/minecraftpe/SentryEndpointConfig;

    .line 148
    new-instance v0, Lcom/mojang/minecraftpe/SentryEndpointConfig;

    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity;->mSentryEndpointConfigUrl:Ljava/lang/String;

    const-string v4, "4504164603330560"

    const-string v5, "def954e0b8614321aa371233aeab6965"

    invoke-direct {v0, v3, v4, v5}, Lcom/mojang/minecraftpe/SentryEndpointConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mSentryEndpointAndroidChromebookTrial:Lcom/mojang/minecraftpe/SentryEndpointConfig;

    .line 149
    new-instance v0, Lcom/mojang/minecraftpe/SentryEndpointConfig;

    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity;->mSentryEndpointConfigUrl:Ljava/lang/String;

    const-string v4, "5885058"

    const-string v5, "c218789c079e41128de0b1892bcc738f"

    invoke-direct {v0, v3, v4, v5}, Lcom/mojang/minecraftpe/SentryEndpointConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mSentryEndpointAndroidAmazon:Lcom/mojang/minecraftpe/SentryEndpointConfig;

    .line 150
    new-instance v0, Lcom/mojang/minecraftpe/SentryEndpointConfig;

    const-string v3, "https://o339720.ingest.sentry.io"

    const-string v4, "5242741"

    const-string v5, "0d409f4cd2f64aa3a686a1b5193a4bf9"

    invoke-direct {v0, v3, v4, v5}, Lcom/mojang/minecraftpe/SentryEndpointConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mSentryEndpointEDU:Lcom/mojang/minecraftpe/SentryEndpointConfig;

    const-string v0, "android.permission.POST_NOTIFICATIONS"

    .line 166
    iput-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->REQUEST_PUSH_PERMISSION_STRING:Ljava/lang/String;

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mActivityListeners:Ljava/util/List;

    const/4 v0, 0x0

    .line 177
    iput-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mSessionHistory:Ljava/util/ArrayList;

    .line 178
    iput-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mCurrentSession:Lcom/mojang/minecraftpe/SessionInfo;

    .line 179
    iput-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mCrashManager:Lcom/mojang/minecraftpe/CrashManager;

    .line 191
    iput-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mFilePickerManager:Lcom/mojang/minecraftpe/FilePickerManager;

    .line 193
    iput-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mWorldRecovery:Lcom/mojang/minecraftpe/WorldRecovery;

    .line 195
    iput-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 196
    iput-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    .line 543
    iput-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mService:Landroid/os/Messenger;

    .line 544
    sget-object v3, Lcom/mojang/minecraftpe/MainActivity$MessageConnectionStatus;->NOTSET:Lcom/mojang/minecraftpe/MainActivity$MessageConnectionStatus;

    iput-object v3, p0, Lcom/mojang/minecraftpe/MainActivity;->mBound:Lcom/mojang/minecraftpe/MainActivity$MessageConnectionStatus;

    .line 545
    new-instance v3, Landroid/os/Messenger;

    new-instance v4, Lcom/mojang/minecraftpe/MainActivity$IncomingHandler;

    invoke-direct {v4, p0}, Lcom/mojang/minecraftpe/MainActivity$IncomingHandler;-><init>(Lcom/mojang/minecraftpe/MainActivity;)V

    invoke-direct {v3, v4}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/mojang/minecraftpe/MainActivity;->mMessenger:Landroid/os/Messenger;

    .line 586
    new-instance v3, Lcom/mojang/minecraftpe/MainActivity$4;

    invoke-direct {v3, p0}, Lcom/mojang/minecraftpe/MainActivity$4;-><init>(Lcom/mojang/minecraftpe/MainActivity;)V

    iput-object v3, p0, Lcom/mojang/minecraftpe/MainActivity;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, -0x1

    .line 1599
    iput v3, p0, Lcom/mojang/minecraftpe/MainActivity;->_userInputStatus:I

    .line 1600
    iput-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->_userInputText:[Ljava/lang/String;

    .line 1601
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->_userInputValues:Ljava/util/ArrayList;

    .line 1610
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0}, Ljava/text/SimpleDateFormat;-><init>()V

    iput-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->DateFormat:Ljava/text/DateFormat;

    .line 1621
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    iput-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mCachedMemoryInfo:Landroid/app/ActivityManager$MemoryInfo;

    .line 1622
    iput-wide v1, p0, Lcom/mojang/minecraftpe/MainActivity;->mCachedMemoryInfoUpdateTime:J

    .line 1670
    iput-wide v1, p0, Lcom/mojang/minecraftpe/MainActivity;->mCachedUsedMemory:J

    .line 1671
    iput-wide v1, p0, Lcom/mojang/minecraftpe/MainActivity;->mCachedUsedMemoryUpdateTime:J

    .line 1685
    new-instance v0, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v0}, Landroid/os/Debug$MemoryInfo;-><init>()V

    iput-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mCachedDebugMemoryInfo:Landroid/os/Debug$MemoryInfo;

    .line 1686
    iput-wide v1, p0, Lcom/mojang/minecraftpe/MainActivity;->mCachedDebugMemoryUpdateTime:J

    .line 1998
    iput-wide v1, p0, Lcom/mojang/minecraftpe/MainActivity;->mCallback:J

    const-string v0, "<!doctype html><html><head><meta charset=\"utf-8\"><meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge,chrome=1\"><title>Log in</title><meta name=\"description\" content=\"\"><meta name=\"author\" content=\"\"><meta name=\"viewport\" content=\"width=device-width,initial-scale=1,maximum-scale=1\"></head><body style=\"padding:0;margin:0;background:linear-gradient(#F9F9F9, #EEEEEE) repeat scroll 0 0 #F9F9F9;\"><table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"width:100%;\"><tr style=\"height:40px;\"><td style=\"background: #111111;border:1px solid #333;\"><div style=\"margin:0 auto;width:320px;line-height:26px;\"><img style=\"width:120px;height:30px;float:left;margin-right:24px;vertical-align:middle;\" alt=\"\" src=\"data:image/png;base64,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\" /><div style=\"float:left;font-size:16px;font-weight:bold;color:#fff;font-family:Helvetica,Arial,sans-serif;text-shadow:0 -1px 1px #000000;\">Log in</div><div style=\"clear:both;\"></div></div></td></tr><tr style=\"height:235px;\"><td><div style=\"margin:0 auto;width:320px;text-align:center;font-family: Helvetica,Arial,sans-serif;text-shadow: 0 1px 0 #FFFFFF;font-size:24px;font-weight:bold;\">Loading&hellip;</div></td></tr><tr style=\"height:32px;\"><td style=\"background: #111111;border:1px solid #333;\"><div style=\"text-align:center;margin:0 auto;width:320px;line-height:26px;font-size:12px;font-weight:bold;color:#fff;font-family:Helvetica,Arial,sans-serif;text-shadow:0 -1px 1px #000000;\">Mojang &copy; 2013</div></td></tr></table></body></html>"

    .line 2326
    iput-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->preloadingHTML:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$200(Lcom/mojang/minecraftpe/MainActivity;)Landroid/content/ServiceConnection;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/mojang/minecraftpe/MainActivity;->mConnection:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static synthetic access$300(Lcom/mojang/minecraftpe/MainActivity;)Z
    .locals 0

    .line 132
    iget-boolean p0, p0, Lcom/mojang/minecraftpe/MainActivity;->mIsSoftKeyboardVisible:Z

    return p0
.end method

.method static synthetic access$302(Lcom/mojang/minecraftpe/MainActivity;Z)Z
    .locals 0

    .line 132
    iput-boolean p1, p0, Lcom/mojang/minecraftpe/MainActivity;->mIsSoftKeyboardVisible:Z

    return p1
.end method

.method static synthetic access$400(Lcom/mojang/minecraftpe/MainActivity;)V
    .locals 0

    .line 132
    invoke-direct {p0}, Lcom/mojang/minecraftpe/MainActivity;->dismissTextWidget()V

    return-void
.end method

.method static synthetic access$500(Lcom/mojang/minecraftpe/MainActivity;)Z
    .locals 0

    .line 132
    invoke-direct {p0}, Lcom/mojang/minecraftpe/MainActivity;->isTextWidgetActive()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/mojang/minecraftpe/MainActivity;)V
    .locals 0

    .line 132
    invoke-direct {p0}, Lcom/mojang/minecraftpe/MainActivity;->onDialogCanceled()V

    return-void
.end method

.method static synthetic access$700(Lcom/mojang/minecraftpe/MainActivity;)V
    .locals 0

    .line 132
    invoke-direct {p0}, Lcom/mojang/minecraftpe/MainActivity;->onDialogCompleted()V

    return-void
.end method

.method private configureBrazeAtRuntime()V
    .locals 4

    .line 2222
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->isBrazeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 2227
    invoke-static {v0}, Lcom/braze/support/BrazeLogger;->setLogLevel(I)V

    .line 2229
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->isPublishBuild()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "d9430d08-2985-458e-9ed9-ef769d7e7e69"

    goto :goto_0

    :cond_1
    const-string v0, "7e90f2bd-d27b-4010-a501-a8e30021418a"

    .line 2237
    :goto_0
    new-instance v1, Lcom/braze/configuration/BrazeConfig$Builder;

    invoke-direct {v1}, Lcom/braze/configuration/BrazeConfig$Builder;-><init>()V

    .line 2238
    invoke-virtual {v1, v0}, Lcom/braze/configuration/BrazeConfig$Builder;->setApiKey(Ljava/lang/String;)Lcom/braze/configuration/BrazeConfig$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 2239
    invoke-virtual {v0, v1}, Lcom/braze/configuration/BrazeConfig$Builder;->setAdmMessagingRegistrationEnabled(Z)Lcom/braze/configuration/BrazeConfig$Builder;

    move-result-object v0

    const/16 v2, 0xa

    .line 2240
    invoke-virtual {v0, v2}, Lcom/braze/configuration/BrazeConfig$Builder;->setSessionTimeout(I)Lcom/braze/configuration/BrazeConfig$Builder;

    move-result-object v0

    const/4 v3, 0x1

    .line 2241
    invoke-virtual {v0, v3}, Lcom/braze/configuration/BrazeConfig$Builder;->setHandlePushDeepLinksAutomatically(Z)Lcom/braze/configuration/BrazeConfig$Builder;

    move-result-object v0

    const/4 v3, 0x5

    .line 2242
    invoke-virtual {v0, v3}, Lcom/braze/configuration/BrazeConfig$Builder;->setTriggerActionMinimumTimeIntervalSeconds(I)Lcom/braze/configuration/BrazeConfig$Builder;

    move-result-object v0

    .line 2243
    invoke-virtual {v0, v1}, Lcom/braze/configuration/BrazeConfig$Builder;->setNewsfeedVisualIndicatorOn(Z)Lcom/braze/configuration/BrazeConfig$Builder;

    move-result-object v0

    const/16 v3, 0x78

    .line 2244
    invoke-virtual {v0, v3}, Lcom/braze/configuration/BrazeConfig$Builder;->setBadNetworkDataFlushInterval(I)Lcom/braze/configuration/BrazeConfig$Builder;

    move-result-object v0

    const/16 v3, 0x3c

    .line 2245
    invoke-virtual {v0, v3}, Lcom/braze/configuration/BrazeConfig$Builder;->setGoodNetworkDataFlushInterval(I)Lcom/braze/configuration/BrazeConfig$Builder;

    move-result-object v0

    .line 2246
    invoke-virtual {v0, v2}, Lcom/braze/configuration/BrazeConfig$Builder;->setGreatNetworkDataFlushInterval(I)Lcom/braze/configuration/BrazeConfig$Builder;

    move-result-object v0

    .line 2247
    invoke-virtual {v0, v1}, Lcom/braze/configuration/BrazeConfig$Builder;->setGeofencesEnabled(Z)Lcom/braze/configuration/BrazeConfig$Builder;

    move-result-object v0

    .line 2248
    invoke-virtual {v0, v1}, Lcom/braze/configuration/BrazeConfig$Builder;->setIsLocationCollectionEnabled(Z)Lcom/braze/configuration/BrazeConfig$Builder;

    move-result-object v0

    .line 2249
    invoke-virtual {v0, v1}, Lcom/braze/configuration/BrazeConfig$Builder;->setIsFirebaseCloudMessagingRegistrationEnabled(Z)Lcom/braze/configuration/BrazeConfig$Builder;

    move-result-object v0

    .line 2250
    invoke-virtual {v0, v1}, Lcom/braze/configuration/BrazeConfig$Builder;->setIsFirebaseMessagingServiceOnNewTokenRegistrationEnabled(Z)Lcom/braze/configuration/BrazeConfig$Builder;

    move-result-object v0

    .line 2251
    invoke-virtual {v0, v1}, Lcom/braze/configuration/BrazeConfig$Builder;->setIsPushWakeScreenForNotificationEnabled(Z)Lcom/braze/configuration/BrazeConfig$Builder;

    move-result-object v0

    const-string v1, "drawable/notification_icon_small"

    .line 2252
    invoke-virtual {v0, v1}, Lcom/braze/configuration/BrazeConfig$Builder;->setSmallNotificationIcon(Ljava/lang/String;)Lcom/braze/configuration/BrazeConfig$Builder;

    move-result-object v0

    const v1, 0x52a435

    .line 2253
    invoke-virtual {v0, v1}, Lcom/braze/configuration/BrazeConfig$Builder;->setDefaultNotificationAccentColor(I)Lcom/braze/configuration/BrazeConfig$Builder;

    move-result-object v0

    .line 2254
    invoke-virtual {v0}, Lcom/braze/configuration/BrazeConfig$Builder;->build()Lcom/braze/configuration/BrazeConfig;

    move-result-object v0

    .line 2255
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/braze/Braze;->configure(Landroid/content/Context;Lcom/braze/configuration/BrazeConfig;)Z

    .line 2257
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    new-instance v1, Lcom/mojang/minecraftpe/MinecraftActivityLifecycleCallbackListener;

    invoke-direct {v1}, Lcom/mojang/minecraftpe/MinecraftActivityLifecycleCallbackListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method private copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inStream",
            "outStream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 1082
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    .line 1084
    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 1085
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    goto :goto_0

    .line 1087
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 1088
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method private createAlertDialog(ZZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "hasOkButton",
            "hasCancelButton",
            "preventBackKey"
        }
    .end annotation

    .line 940
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, ""

    .line 942
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    .line 944
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 946
    :cond_0
    new-instance p3, Lcom/mojang/minecraftpe/MainActivity$15;

    invoke-direct {p3, p0}, Lcom/mojang/minecraftpe/MainActivity$15;-><init>(Lcom/mojang/minecraftpe/MainActivity;)V

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    if-eqz p1, :cond_1

    .line 954
    new-instance p1, Lcom/mojang/minecraftpe/MainActivity$16;

    invoke-direct {p1, p0}, Lcom/mojang/minecraftpe/MainActivity$16;-><init>(Lcom/mojang/minecraftpe/MainActivity;)V

    const-string p3, "Ok"

    invoke-virtual {v0, p3, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_1
    if-eqz p2, :cond_2

    .line 958
    new-instance p1, Lcom/mojang/minecraftpe/MainActivity$17;

    invoke-direct {p1, p0}, Lcom/mojang/minecraftpe/MainActivity$17;-><init>(Lcom/mojang/minecraftpe/MainActivity;)V

    const-string p2, "Cancel"

    invoke-virtual {v0, p2, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 961
    :cond_2
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity;->mDialog:Landroid/app/AlertDialog;

    .line 962
    invoke-virtual {p1, p0}, Landroid/app/AlertDialog;->setOwnerActivity(Landroid/app/Activity;)V

    return-void
.end method

.method private dismissTextWidget()V
    .locals 3

    .line 890
    invoke-direct {p0}, Lcom/mojang/minecraftpe/MainActivity;->isTextWidgetActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 891
    invoke-direct {p0}, Lcom/mojang/minecraftpe/MainActivity;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    invoke-virtual {v1}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 892
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->setInputType(I)V

    .line 893
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    const-string v0, "input_method"

    .line 936
    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method public static isPowerVR()Z
    .locals 1

    .line 967
    sget-boolean v0, Lcom/mojang/minecraftpe/MainActivity;->_isPowerVr:Z

    return v0
.end method

.method private isTextWidgetActive()Z
    .locals 1

    .line 886
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static native nativeWaitCrashManagementSetupComplete()V
.end method

.method private onDialogCanceled()V
    .locals 1

    const/4 v0, 0x0

    .line 1618
    iput v0, p0, Lcom/mojang/minecraftpe/MainActivity;->_userInputStatus:I

    return-void
.end method

.method private onDialogCompleted()V
    .locals 7

    .line 1736
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->_userInputValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1737
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/mojang/minecraftpe/MainActivity;->_userInputText:[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 1739
    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity;->_userInputText:[Ljava/lang/String;

    iget-object v4, p0, Lcom/mojang/minecraftpe/MainActivity;->_userInputValues:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mojang/android/StringValue;

    invoke-interface {v4}, Lcom/mojang/android/StringValue;->getStringValue()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1741
    :cond_0
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->_userInputText:[Ljava/lang/String;

    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "js: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    .line 1743
    iput v0, p0, Lcom/mojang/minecraftpe/MainActivity;->_userInputStatus:I

    const-string v1, "input_method"

    .line 1744
    invoke-virtual {p0, v1}, Lcom/mojang/minecraftpe/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 1745
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    return-void
.end method

.method private processIntent(Landroid/content/Intent;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    const-string v0, "IOException while closing input stream\n"

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v1, "intent_cmd"

    .line 1844
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MCPE"

    if-eqz v1, :cond_3

    .line 1845
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 1847
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "Command"

    .line 1848
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "keyboardResult"

    .line 1849
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "Text"

    .line 1850
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mojang/minecraftpe/MainActivity;->nativeSetTextboxText(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_1
    const-string v1, "fileDialogResult"

    .line 1852
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-wide v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mFileDialogCallback:J

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-eqz v5, :cond_c

    const-string v0, "Result"

    .line 1853
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1854
    iget-wide v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mFileDialogCallback:J

    const-string v5, "Path"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/mojang/minecraftpe/MainActivity;->nativeOnPickImageSuccess(JLjava/lang/String;)V

    goto :goto_0

    .line 1857
    :cond_2
    iget-wide v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mFileDialogCallback:J

    invoke-virtual {p0, v0, v1}, Lcom/mojang/minecraftpe/MainActivity;->nativeOnPickImageCanceled(J)V

    .line 1859
    :goto_0
    iput-wide v3, p0, Lcom/mojang/minecraftpe/MainActivity;->mFileDialogCallback:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    :catch_0
    move-exception p1

    .line 1863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JSONObject exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1869
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1870
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    const-string/jumbo v3, "xbox_live_game_invite"

    .line 1872
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v0, "xbl"

    .line 1875
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1876
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[XboxLive] Received Invite "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1880
    invoke-virtual {p0, v1, p1}, Lcom/mojang/minecraftpe/MainActivity;->nativeProcessIntentUriQuery(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_4
    const-string v3, "android.intent.action.VIEW"

    .line 1883
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "org.chromium.arc.intent.action.VIEW"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1884
    :cond_5
    invoke-virtual {p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 1885
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_6

    return-void

    :cond_6
    const-string v3, "minecraft"

    .line 1891
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "minecraftedu"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto/16 :goto_5

    :cond_7
    const-string v3, "file"

    .line 1899
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "&"

    if-eqz v3, :cond_8

    .line 1902
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "fileIntent"

    invoke-virtual {p0, v0, p1}, Lcom/mojang/minecraftpe/MainActivity;->nativeProcessIntentUriQuery(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_8
    const-string v3, "content"

    .line 1904
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1907
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1908
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1910
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1914
    :try_start_1
    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 1922
    :try_start_2
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/high16 v6, 0x100000

    new-array v6, v6, [B

    .line 1928
    :goto_1
    invoke-virtual {v1, v6}, Ljava/io/InputStream;->read([B)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_9

    const/4 v8, 0x0

    .line 1929
    invoke-virtual {v5, v6, v8, v7}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    .line 1932
    :cond_9
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    const-string v5, "contentIntent"

    .line 1935
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v5, p1}, Lcom/mojang/minecraftpe/MainActivity;->nativeProcessIntentUriQuery(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1946
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_6

    :catch_1
    move-exception p1

    .line 1949
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    .line 1937
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException while copying file from content intent\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1941
    :try_start_5
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1946
    :catch_3
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_6

    :catch_4
    move-exception p1

    .line 1949
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1946
    :goto_3
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_4

    :catch_5
    move-exception v1

    .line 1949
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    :goto_4
    throw p1

    :catch_6
    move-exception p1

    .line 1917
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IOException while opening file from content intent\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1892
    :cond_a
    :goto_5
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 1893
    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object p1

    if-nez v0, :cond_b

    if-eqz p1, :cond_c

    .line 1896
    :cond_b
    invoke-virtual {p0, v0, p1}, Lcom/mojang/minecraftpe/MainActivity;->nativeProcessIntentUriQuery(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_6
    return-void
.end method

.method public static saveScreenshot(Ljava/lang/String;II[I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "filename",
            "w",
            "h",
            "pixels"
        }
    .end annotation

    .line 1005
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1010
    :try_start_0
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 1011
    sget-object p3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x55

    invoke-virtual {p1, p3, v0, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1015
    :try_start_1
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1017
    :try_start_2
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1021
    :goto_0
    :try_start_3
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_1
    move-exception p1

    .line 1023
    :try_start_4
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    .line 1027
    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t create file: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1028
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method public MC_CheckIfTestsAreFinished()Ljava/lang/String;
    .locals 1

    .line 2350
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->isTestInfrastructureDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2354
    :cond_0
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->nativeCheckIfTestsAreFinished()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public MC_GetActiveScreen()Ljava/lang/String;
    .locals 1

    .line 2332
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->isTestInfrastructureDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2336
    :cond_0
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->nativeGetActiveScreen()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public MC_GetDevConsoleLogName()Ljava/lang/String;
    .locals 1

    .line 2358
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->isTestInfrastructureDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2362
    :cond_0
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->nativeGetDevConsoleLogName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public MC_GetLogText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fileInfo"
        }
    .end annotation

    .line 2366
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->isTestInfrastructureDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 2370
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mojang/minecraftpe/MainActivity;->nativeGetLogText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public MC_SetOptions(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "optionsString"
        }
    .end annotation

    .line 2342
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->isTestInfrastructureDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 2346
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mojang/minecraftpe/MainActivity;->nativeSetOptions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public acquireMulticast()V
    .locals 1

    .line 2514
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->isMulticastHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2515
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V

    :cond_0
    return-void
.end method

.method public addListener(Lcom/mojang/minecraftpe/ActivityListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 2112
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mActivityListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public buyGame()V
    .locals 0

    return-void
.end method

.method public calculateAvailableDiskFreeSpace(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootPath"
        }
    .end annotation

    .line 1721
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1724
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt p1, v1, :cond_0

    .line 1725
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v0

    goto :goto_0

    .line 1728
    :cond_0
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result p1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    mul-int p1, p1, v0

    int-to-long v0, p1

    goto :goto_0

    :catch_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public checkLicense()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method chromebookCompatibilityIP()Ljava/lang/String;
    .locals 1

    .line 1563
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->isChromebook()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "arc.net.ipv4.host_address"

    .line 1564
    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public clearLoginInformation()V
    .locals 2

    .line 1426
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1427
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "accessToken"

    .line 1428
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "clientId"

    .line 1429
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "profileId"

    .line 1430
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "profileName"

    .line 1431
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1432
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public copyFromPickedFile(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outPath"
        }
    .end annotation

    .line 1058
    :try_start_0
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity;->mPickedFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1060
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1061
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1063
    :try_start_2
    invoke-direct {p0, v0, p1}, Lcom/mojang/minecraftpe/MainActivity;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1066
    :try_start_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1070
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 1066
    :try_start_5
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 1067
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    .line 1070
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 1071
    throw p1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception p1

    .line 1074
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    .line 1077
    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity;->mPickedFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method public copyToPickedFile(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inPath"
        }
    .end annotation

    .line 1034
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1035
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1037
    :try_start_1
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity;->mPickedFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1039
    :try_start_2
    invoke-direct {p0, p1, v0}, Lcom/mojang/minecraftpe/MainActivity;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1042
    :try_start_3
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1046
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 1042
    :try_start_5
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 1043
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    .line 1046
    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 1047
    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception p1

    .line 1050
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    .line 1053
    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity;->mPickedFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-void
.end method

.method public createAndroidLaunchIntent()Landroid/content/Intent;
    .locals 2

    .line 1977
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1978
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public createTextWidget()Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;
    .locals 6

    .line 712
    new-instance v0, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    invoke-direct {v0, p0}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;-><init>(Landroid/content/Context;)V

    const/16 v1, 0x8

    .line 713
    invoke-virtual {v0, v1}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->setVisibility(I)V

    const/4 v1, 0x1

    .line 714
    invoke-virtual {v0, v1}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->setFocusable(Z)V

    .line 715
    invoke-virtual {v0, v1}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->setFocusableInTouchMode(Z)V

    const v1, 0x10000005

    .line 716
    invoke-virtual {v0, v1}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->setImeOptions(I)V

    .line 717
    new-instance v1, Lcom/mojang/minecraftpe/MainActivity$7;

    invoke-direct {v1, p0, v0}, Lcom/mojang/minecraftpe/MainActivity$7;-><init>(Lcom/mojang/minecraftpe/MainActivity;Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;)V

    invoke-virtual {v0, v1}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 760
    new-instance v1, Lcom/mojang/minecraftpe/MainActivity$8;

    invoke-direct {v1, p0, v0}, Lcom/mojang/minecraftpe/MainActivity$8;-><init>(Lcom/mojang/minecraftpe/MainActivity;Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;)V

    invoke-virtual {v0, v1}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 782
    new-instance v1, Lcom/mojang/minecraftpe/MainActivity$9;

    invoke-direct {v1, p0}, Lcom/mojang/minecraftpe/MainActivity$9;-><init>(Lcom/mojang/minecraftpe/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->setOnMCPEKeyWatcher(Lcom/mojang/minecraftpe/TextInputProxyEditTextbox$MCPEKeyWatcher;)V

    const v1, 0x1020002

    .line 811
    invoke-virtual {p0, v1}, Lcom/mojang/minecraftpe/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/16 v4, 0x140

    const/16 v5, 0x32

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 814
    invoke-virtual {p0, v1}, Lcom/mojang/minecraftpe/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 815
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/mojang/minecraftpe/MainActivity$10;

    invoke-direct {v3, p0, v1}, Lcom/mojang/minecraftpe/MainActivity$10;-><init>(Lcom/mojang/minecraftpe/MainActivity;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-object v0
.end method

.method public createUUID()Ljava/lang/String;
    .locals 3

    .line 1973
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public deviceIdCorrelationStart()V
    .locals 7

    .line 295
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "correlationAttempts"

    const/16 v2, 0xa

    .line 296
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 300
    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 301
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "trial"

    .line 302
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "com.mojang.minecraftpe"

    goto :goto_0

    :cond_1
    const-string v4, "com.mojang.minecrafttrialpe"

    .line 303
    :goto_0
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.mojang.minecraftpe.ImportService"

    invoke-direct {v5, v4, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 304
    iget-object v4, p0, Lcom/mojang/minecraftpe/MainActivity;->mConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v4, v5}, Lcom/mojang/minecraftpe/MainActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 305
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sub-int/2addr v2, v5

    .line 306
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 307
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public disableBrazeSDK()V
    .locals 1

    .line 264
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->isBrazeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 268
    :cond_0
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/braze/Braze;->disableSdk(Landroid/content/Context;)V

    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 505
    iget-boolean v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mCursorLocked:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/16 v1, 0x2002

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 506
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->lockCursor()V

    .line 508
    :cond_0
    invoke-super {p0, p1}, Landroid/app/NativeActivity;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 522
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/mojang/minecraftpe/MainActivity;->nativeKeyHandler(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 526
    :cond_0
    invoke-super {p0, p1}, Landroid/app/NativeActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public displayDialog(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialogId"
        }
    .end annotation

    return-void
.end method

.method public enableBrazeSDK()V
    .locals 1

    .line 256
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->isBrazeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 260
    :cond_0
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/braze/Braze;->enableSdk(Landroid/content/Context;)V

    return-void
.end method

.method public getAPIVersion(Ljava/lang/String;)I
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "apiName"
        }
    .end annotation

    const-string v0, ")"

    .line 2152
    const-class v1, Landroid/os/Build$VERSION_CODES;

    invoke-virtual {v1}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 2153
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    const-string v4, "MCPE"

    if-ge v3, v2, :cond_1

    aget-object v5, v1, v3

    .line 2154
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    if-ne v6, p1, :cond_0

    .line 2158
    :try_start_0
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 2167
    :catch_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NullPointerException in getApiVersion("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2164
    :catch_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IllegalAccessException in getApiVersion("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2161
    :catch_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IllegalArgumentException in getApiVersion("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2172
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to find API version for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 3

    .line 1436
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "accessToken"

    const-string v2, ""

    .line 1437
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAllocatableBytes(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .line 2469
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 2471
    :try_start_0
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 2472
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2473
    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getUuidForPath(Ljava/io/File;)Ljava/util/UUID;

    move-result-object p1

    .line 2474
    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->getAllocatableBytes(Ljava/util/UUID;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    .line 2477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IOException while attempting to get allocatable bytes\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MCPE"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getAndroidVersion()I
    .locals 1

    .line 1229
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public getBatteryMonitor()Lcom/mojang/minecraftpe/BatteryMonitor;
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mBatteryMonitor:Lcom/mojang/minecraftpe/BatteryMonitor;

    if-nez v0, :cond_0

    .line 312
    new-instance v0, Lcom/mojang/minecraftpe/BatteryMonitor;

    invoke-direct {v0, p0}, Lcom/mojang/minecraftpe/BatteryMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mBatteryMonitor:Lcom/mojang/minecraftpe/BatteryMonitor;

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mBatteryMonitor:Lcom/mojang/minecraftpe/BatteryMonitor;

    return-object v0
.end method

.method public getBroadcastAddresses()[Ljava/lang/String;
    .locals 5

    .line 1508
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string v1, "java.net.preferIPv4Stack"

    const-string v2, "true"

    .line 1510
    invoke-static {v1, v2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1511
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1512
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 1513
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1514
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InterfaceAddress;

    .line 1515
    invoke-virtual {v3}, Ljava/net/InterfaceAddress;->getBroadcast()Ljava/net/InetAddress;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1516
    invoke-virtual {v3}, Ljava/net/InterfaceAddress;->getBroadcast()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1523
    :catch_0
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 3

    .line 1441
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "clientId"

    const-string v2, ""

    .line 1442
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCursorPosition()I
    .locals 1

    .line 911
    invoke-direct {p0}, Lcom/mojang/minecraftpe/MainActivity;->isTextWidgetActive()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 914
    :cond_0
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    invoke-virtual {v0}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method public getDebugMemoryInfo(Ljava/lang/String;)J
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "statName"
        }
    .end annotation

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    .line 1694
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1695
    iget-wide v4, p0, Lcom/mojang/minecraftpe/MainActivity;->mCachedDebugMemoryUpdateTime:J

    cmp-long v6, v2, v4

    if-ltz v6, :cond_1

    .line 1696
    iget-object v4, p0, Lcom/mojang/minecraftpe/MainActivity;->mCachedDebugMemoryInfo:Landroid/os/Debug$MemoryInfo;

    invoke-static {v4}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    .line 1697
    iput-wide v2, p0, Lcom/mojang/minecraftpe/MainActivity;->mCachedDebugMemoryUpdateTime:J

    .line 1700
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "TotalSwappablePss"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string v3, "TotalPrivateDirty"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "TotalPss"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 1708
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_5

    .line 1709
    iget-object v2, p0, Lcom/mojang/minecraftpe/MainActivity;->mCachedDebugMemoryInfo:Landroid/os/Debug$MemoryInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "summary."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/os/Debug$MemoryInfo;->getMemoryStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 1711
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    :cond_5
    return-wide v0

    .line 1704
    :pswitch_0
    iget-object p1, p0, Lcom/mojang/minecraftpe/MainActivity;->mCachedDebugMemoryInfo:Landroid/os/Debug$MemoryInfo;

    invoke-virtual {p1}, Landroid/os/Debug$MemoryInfo;->getTotalSwappablePss()I

    move-result p1

    :goto_1
    int-to-long v0, p1

    return-wide v0

    .line 1706
    :pswitch_1
    iget-object p1, p0, Lcom/mojang/minecraftpe/MainActivity;->mCachedDebugMemoryInfo:Landroid/os/Debug$MemoryInfo;

    invoke-virtual {p1}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result p1

    goto :goto_1

    .line 1702
    :pswitch_2
    iget-object p1, p0, Lcom/mojang/minecraftpe/MainActivity;->mCachedDebugMemoryInfo:Landroid/os/Debug$MemoryInfo;

    invoke-virtual {p1}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result p1

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x2ece32f4 -> :sswitch_2
        0x75ac3153 -> :sswitch_1
        0x7f80887d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .line 1233
    invoke-static {}, Lcom/mojang/minecraftpe/HardwareInformation;->getDeviceModelName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayHeight()I
    .locals 2

    .line 1220
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 1221
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 1222
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1223
    iget v0, v0, Landroid/graphics/Point;->y:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayWidth()I
    .locals 2

    .line 1211
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 1212
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 1213
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1214
    iget v0, v0, Landroid/graphics/Point;->x:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getExternalStoragePath()Ljava/lang/String;
    .locals 1

    .line 1189
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileDataBytes(Ljava/lang/String;)[B
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filename"
        }
    .end annotation

    .line 1093
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 1097
    :cond_0
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1100
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1102
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAssets returned null: Could not getFileDataBytes "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5

    return-object v1

    .line 1113
    :cond_1
    :try_start_1
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 1114
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1117
    :catch_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1119
    :try_start_2
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :goto_0
    const/high16 v0, 0x100000

    .line 1127
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-array v0, v0, [B

    .line 1132
    :goto_1
    :try_start_3
    invoke-virtual {v2, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-gtz v3, :cond_2

    .line 1139
    :goto_2
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    .line 1134
    :try_start_5
    invoke-virtual {v1, v0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_4

    .line 1137
    :catch_1
    :try_start_6
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot read from file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 1143
    :catch_2
    :goto_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    return-object p1

    .line 1139
    :goto_4
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 1141
    :catch_3
    throw p1

    :catch_4
    return-object v1

    .line 1107
    :catch_5
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAssets threw NPE: Could not getFileDataBytes "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object v1
.end method

.method public getFreeMemory()J
    .locals 5

    .line 1661
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getMemoryInfo()Landroid/app/ActivityManager$MemoryInfo;

    move-result-object v0

    .line 1662
    iget-wide v1, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    iget-wide v3, v0, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    sub-long/2addr v1, v3

    return-wide v1
.end method

.method public getHardwareInfo()Lcom/mojang/minecraftpe/HardwareInformation;
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mHardwareInformation:Lcom/mojang/minecraftpe/HardwareInformation;

    if-nez v0, :cond_0

    .line 319
    new-instance v0, Lcom/mojang/minecraftpe/HardwareInformation;

    invoke-direct {v0, p0}, Lcom/mojang/minecraftpe/HardwareInformation;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mHardwareInformation:Lcom/mojang/minecraftpe/HardwareInformation;

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mHardwareInformation:Lcom/mojang/minecraftpe/HardwareInformation;

    return-object v0
.end method

.method public getIPAddresses()[Ljava/lang/String;
    .locals 6

    .line 1570
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1572
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->chromebookCompatibilityIP()Ljava/lang/String;

    move-result-object v1

    .line 1573
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1574
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :try_start_0
    const-string v1, "java.net.preferIPv4Stack"

    const-string v2, "true"

    .line 1578
    invoke-static {v1, v2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1579
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1580
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 1581
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1582
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InterfaceAddress;

    .line 1583
    invoke-virtual {v3}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1586
    invoke-virtual {v4}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1587
    invoke-virtual {v3}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1595
    :catch_0
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getImageData(Ljava/lang/String;)[I
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "filename"
        }
    .end annotation

    .line 1151
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1155
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    .line 1159
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    .line 1164
    :try_start_1
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1170
    :try_start_2
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 1166
    :catch_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getImageData: Could not open image "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object v1

    .line 1175
    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAssets returned null: Could not open image "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    return-object v1

    .line 1180
    :catch_1
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAssets threw NPE: Could not open image "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object v1

    :cond_1
    :goto_0
    move-object v2, v0

    .line 1185
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 1186
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int p1, v8, v9

    add-int/lit8 p1, p1, 0x2

    .line 1188
    new-array p1, p1, [I

    const/4 v0, 0x0

    .line 1189
    aput v8, p1, v0

    const/4 v0, 0x1

    .line 1190
    aput v9, p1, v0

    const/4 v4, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    move v5, v8

    .line 1191
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    return-object p1
.end method

.method public getInternalStoragePath()Ljava/lang/String;
    .locals 1

    .line 1189
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1320
    :cond_0
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsRunningInAppCenter()Z
    .locals 1

    .line 2374
    iget-boolean v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mIsRunningInAppCenter:Z

    return v0
.end method

.method public getKeyFromKeyCode(III)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "metaState",
            "deviceId"
        }
    .end annotation

    const/4 v0, 0x0

    if-gez p3, :cond_1

    .line 993
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object p3

    .line 994
    array-length v1, p3

    if-nez v1, :cond_0

    return v0

    .line 996
    :cond_0
    aget p3, p3, v0

    .line 998
    :cond_1
    invoke-static {p3}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object p3

    if-nez p3, :cond_2

    return v0

    .line 1002
    :cond_2
    invoke-virtual {p3}, Landroid/view/InputDevice;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Landroid/view/KeyCharacterMap;->get(II)I

    move-result p1

    return p1
.end method

.method public getKeyboardHeight()F
    .locals 1

    .line 232
    iget v0, p0, Lcom/mojang/minecraftpe/MainActivity;->virtualKeyboardHeight:I

    int-to-float v0, v0

    return v0
.end method

.method public getLegacyDeviceID()Ljava/lang/String;
    .locals 3

    .line 1967
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "snooperId"

    const-string v2, ""

    .line 1968
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLegacyExternalStorageDirWritable_debug()Z
    .locals 1

    .line 1272
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 1273
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    return v0
.end method

.method public getLegacyExternalStorageGameFolderReadable_debug(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameFolder"
        }
    .end annotation

    .line 1281
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 1282
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1283
    new-instance p1, Ljava/io/File;

    const-string v0, "minecraftpe/clientId.txt"

    invoke-direct {p1, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/16 v0, 0x400

    const/4 v1, 0x0

    :try_start_0
    new-array v0, v0, [B

    .line 1286
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1287
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result p1

    .line 1288
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-gtz p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x1

    return p1

    :catch_0
    return v1
.end method

.method public getLegacyExternalStorageGameFolderWritable_debug(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameFolder"
        }
    .end annotation

    .line 1276
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 1277
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1278
    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result p1

    return p1
.end method

.method public getLegacyExternalStoragePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameFolder"
        }
    .end annotation

    .line 1245
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 1246
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1247
    new-instance p1, Ljava/io/File;

    const-string v2, "test"

    invoke-direct {p1, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1251
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1252
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_0

    .line 1258
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    const-string p1, ""

    :goto_1
    return-object p1
.end method

.method public getLegacyExternalStorageReadable_debug()Z
    .locals 1

    .line 1268
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 1269
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    return v0
.end method

.method public getLegacyExternalStorage_debug()Ljava/lang/String;
    .locals 1

    .line 1265
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .line 1237
    invoke-static {}, Lcom/mojang/minecraftpe/HardwareInformation;->getLocale()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getMemoryInfo()Landroid/app/ActivityManager$MemoryInfo;
    .locals 5

    .line 1625
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1626
    iget-wide v2, p0, Lcom/mojang/minecraftpe/MainActivity;->mCachedMemoryInfoUpdateTime:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const-string v2, "activity"

    .line 1627
    invoke-virtual {p0, v2}, Lcom/mojang/minecraftpe/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 1628
    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity;->mCachedMemoryInfo:Landroid/app/ActivityManager$MemoryInfo;

    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    const-wide/16 v2, 0x7d0

    add-long/2addr v0, v2

    .line 1630
    iput-wide v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mCachedMemoryInfoUpdateTime:J

    .line 1633
    :cond_0
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mCachedMemoryInfo:Landroid/app/ActivityManager$MemoryInfo;

    return-object v0
.end method

.method public getMemoryLimit()J
    .locals 4

    .line 1667
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getTotalMemory()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getMemoryInfo()Landroid/app/ActivityManager$MemoryInfo;

    move-result-object v2

    iget-wide v2, v2, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getObbDirPath()Ljava/lang/String;
    .locals 1

    .line 1325
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1326
    invoke-virtual {v0}, Landroid/content/Context;->getObbDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPixelsPerMillimeter()F
    .locals 2

    .line 1332
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1333
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1336
    iget v1, v0, Landroid/util/DisplayMetrics;->xdpi:F

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    add-float/2addr v1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float v1, v1, v0

    const v0, 0x41cb3333    # 25.4f

    div-float/2addr v1, v0

    return v1
.end method

.method public getPlatformStringVar(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1372
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getProfileId()Ljava/lang/String;
    .locals 3

    .line 1446
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "profileId"

    const-string v2, ""

    .line 1447
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProfileName()Ljava/lang/String;
    .locals 3

    .line 1451
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "profileName"

    const-string v2, ""

    .line 1452
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getProp(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "propertyKey"
        }
    .end annotation

    .line 1546
    :try_start_0
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->getPropMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->SystemProperties:Ljava/lang/Class;

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "android.os.SystemProperties"

    .line 1547
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->SystemProperties:Ljava/lang/Class;

    const-string v3, "get"

    new-array v4, v2, [Ljava/lang/Class;

    .line 1548
    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->getPropMethod:Ljava/lang/reflect/Method;

    .line 1551
    :cond_1
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->getPropMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/mojang/minecraftpe/MainActivity;->SystemProperties:Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1554
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception occured while getting a property ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MCPE"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, ""

    return-object p1
.end method

.method public getScreenHeight()I
    .locals 4

    const-string v0, "window"

    .line 1204
    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1205
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1206
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getheight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v0
.end method

.method public getScreenWidth()I
    .locals 4

    const-string v0, "window"

    .line 1197
    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1198
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1199
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getwidth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return v0
.end method

.method public getSecureStorageKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 1359
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, ""

    .line 1361
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getThermalMonitor()Lcom/mojang/minecraftpe/ThermalMonitor;
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mThermalMonitor:Lcom/mojang/minecraftpe/ThermalMonitor;

    if-nez v0, :cond_0

    .line 326
    new-instance v0, Lcom/mojang/minecraftpe/ThermalMonitor;

    invoke-direct {v0, p0}, Lcom/mojang/minecraftpe/ThermalMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mThermalMonitor:Lcom/mojang/minecraftpe/ThermalMonitor;

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mThermalMonitor:Lcom/mojang/minecraftpe/ThermalMonitor;

    return-object v0
.end method

.method public getTotalMemory()J
    .locals 6

    .line 1637
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getMemoryInfo()Landroid/app/ActivityManager$MemoryInfo;

    move-result-object v0

    .line 1638
    iget-wide v1, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 1640
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_0

    .line 1641
    iget-wide v1, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    .line 1644
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    const-wide v4, 0x100000000L

    if-lt v0, v3, :cond_1

    .line 1650
    invoke-static {}, Landroid/os/Process;->is64Bit()Z

    move-result v0

    if-nez v0, :cond_1

    cmp-long v0, v4, v1

    if-gez v0, :cond_1

    move-wide v1, v4

    :cond_1
    return-wide v1
.end method

.method public getUsedMemory()J
    .locals 5

    .line 1674
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1675
    iget-wide v2, p0, Lcom/mojang/minecraftpe/MainActivity;->mCachedUsedMemoryUpdateTime:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 1678
    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mojang/minecraftpe/MainActivity;->mCachedUsedMemory:J

    const-wide/16 v2, 0x2710

    add-long/2addr v0, v2

    .line 1679
    iput-wide v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mCachedUsedMemoryUpdateTime:J

    .line 1682
    :cond_0
    iget-wide v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mCachedUsedMemory:J

    return-wide v0
.end method

.method public getUserInputStatus()I
    .locals 1

    .line 1606
    iget v0, p0, Lcom/mojang/minecraftpe/MainActivity;->_userInputStatus:I

    return v0
.end method

.method public getUserInputString()[Ljava/lang/String;
    .locals 1

    .line 1607
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->_userInputText:[Ljava/lang/String;

    return-object v0
.end method

.method public hasBuyButtonWhenInvalidLicense()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method hasHardwareChanged()Z
    .locals 4

    .line 1982
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "lastAndroidVersion"

    const-string v2, ""

    .line 1983
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1984
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_2

    .line 1986
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1987
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1988
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    return v2
.end method

.method public hasHardwareKeyboard()Z
    .locals 2

    .line 685
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasWriteExternalStoragePermission()Z
    .locals 3

    .line 679
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-ge v0, v1, :cond_1

    .line 680
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v2, v0, v1}, Lcom/mojang/minecraftpe/MainActivity;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/mojang/minecraftpe/MainActivity;->mHasStoragePermission:Z

    return v0
.end method

.method public hideKeyboard()V
    .locals 1

    .line 873
    new-instance v0, Lcom/mojang/minecraftpe/MainActivity$13;

    invoke-direct {v0, p0}, Lcom/mojang/minecraftpe/MainActivity$13;-><init>(Lcom/mojang/minecraftpe/MainActivity;)V

    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public initializeCrashManager(Ljava/lang/String;Ljava/lang/String;)Lcom/mojang/minecraftpe/CrashManager;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "crashDumpFolder",
            "sessionId"
        }
    .end annotation

    .line 335
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->isAndroidTrial()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 336
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->isAndroidChromebook()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mSentryEndpointAndroidChromebookTrial:Lcom/mojang/minecraftpe/SentryEndpointConfig;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mSentryEndpointAndroidTrial:Lcom/mojang/minecraftpe/SentryEndpointConfig;

    goto :goto_0

    .line 338
    :cond_1
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->isAndroidChromebook()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 339
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mSentryEndpointAndroidChromebook:Lcom/mojang/minecraftpe/SentryEndpointConfig;

    goto :goto_0

    .line 341
    :cond_2
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->isAndroidAmazon()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 342
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mSentryEndpointAndroidAmazon:Lcom/mojang/minecraftpe/SentryEndpointConfig;

    goto :goto_0

    .line 344
    :cond_3
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->isEduMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 345
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mSentryEndpointEDU:Lcom/mojang/minecraftpe/SentryEndpointConfig;

    goto :goto_0

    .line 347
    :cond_4
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->isPublishBuild()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 348
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mSentryEndpointBedrockPublish:Lcom/mojang/minecraftpe/SentryEndpointConfig;

    goto :goto_0

    .line 351
    :cond_5
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mSentryEndpointBedrockRelease:Lcom/mojang/minecraftpe/SentryEndpointConfig;

    .line 354
    :goto_0
    new-instance v1, Lcom/mojang/minecraftpe/CrashManager;

    invoke-direct {v1, p1, p2, v0}, Lcom/mojang/minecraftpe/CrashManager;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/mojang/minecraftpe/SentryEndpointConfig;)V

    iput-object v1, p0, Lcom/mojang/minecraftpe/MainActivity;->mCrashManager:Lcom/mojang/minecraftpe/CrashManager;

    .line 355
    invoke-virtual {v1}, Lcom/mojang/minecraftpe/CrashManager;->installGlobalExceptionHandler()V

    .line 357
    iget-object p1, p0, Lcom/mojang/minecraftpe/MainActivity;->mCrashManager:Lcom/mojang/minecraftpe/CrashManager;

    return-object p1
.end method

.method public initializeLibHttpClient(J)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "hcInitArgs"
        }
    .end annotation

    .line 2412
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/mojang/minecraftpe/MainActivity$19;

    invoke-direct {v1, p0, p1, p2}, Lcom/mojang/minecraftpe/MainActivity$19;-><init>(Lcom/mojang/minecraftpe/MainActivity;J)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 2418
    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2421
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    .line 2424
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to initialize libHttpClient: \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MCPE"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 p1, -0x7fffbffb

    return-wide p1
.end method

.method public initializeMulticast()V
    .locals 2

    const-string v0, "wifi"

    .line 2498
    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    const-string v1, "MinecraftMCLock"

    .line 2500
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object v0

    iput-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    const/4 v0, 0x0

    .line 2501
    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->setMulticastReferenceCounting(Z)V

    :cond_0
    return-void
.end method

.method public initializeXboxLive(JJ)J
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "xalInitArgs",
            "xblInitArgs"
        }
    .end annotation

    .line 2430
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->isEduMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2431
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v7, Lcom/mojang/minecraftpe/MainActivity$20;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/mojang/minecraftpe/MainActivity$20;-><init>(Lcom/mojang/minecraftpe/MainActivity;JJ)V

    invoke-direct {v0, v7}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 2438
    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2441
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    move-exception p1

    .line 2444
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to initialize xbox live: \'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MCPE"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 p1, -0x7fffbffb

    return-wide p1

    :cond_0
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public initiateUserInput(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    const/4 p1, 0x0

    .line 1603
    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity;->_userInputText:[Ljava/lang/String;

    const/4 p1, -0x1

    .line 1604
    iput p1, p0, Lcom/mojang/minecraftpe/MainActivity;->_userInputStatus:I

    return-void
.end method

.method native isAndroidAmazon()Z
.end method

.method native isAndroidChromebook()Z
.end method

.method native isAndroidTrial()Z
.end method

.method native isBrazeEnabled()Z
.end method

.method public isBrazeSDKDisabled()Z
    .locals 1

    .line 272
    invoke-static {}, Lcom/braze/Braze;->isDisabled()Z

    move-result v0

    return v0
.end method

.method isChromebook()Z
    .locals 2

    .line 1528
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.pc"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected isDemo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public native isEduMode()Z
.end method

.method public isExternalStorageLegacy_debug()I
    .locals 2

    .line 1301
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 1302
    invoke-static {}, Landroid/os/Environment;->isExternalStorageLegacy()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public isFirstSnooperStart()Z
    .locals 3

    .line 1961
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "snooperId"

    const-string v2, ""

    .line 1962
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1963
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    return v0
.end method

.method isHardwareKeyboardHidden()Z
    .locals 2

    .line 1532
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMulticastHeld()Z
    .locals 1

    .line 2520
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    if-eqz v0, :cond_0

    .line 2521
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->isHeld()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isNetworkEnabled(Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onlyWifiAllowed"
        }
    .end annotation

    const-string v0, "connectivity"

    .line 1377
    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/16 v1, 0x9

    .line 1380
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 1381
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    .line 1385
    :cond_0
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1386
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 1392
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1393
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public isOnWifi()Z
    .locals 2

    const-string v0, "connectivity"

    .line 1397
    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x1

    .line 1398
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    return v0
.end method

.method public native isPublishBuild()Z
.end method

.method public isSoftKeyboardVisible()Z
    .locals 1

    .line 882
    iget-boolean v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mIsSoftKeyboardVisible:Z

    return v0
.end method

.method public isTTSEnabled()Z
    .locals 3

    .line 2388
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2390
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->isTestInfrastructureDisabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2391
    iget-boolean v1, p0, Lcom/mojang/minecraftpe/MainActivity;->mIsRunningInAppCenter:Z

    if-eqz v1, :cond_0

    const-string v0, "MCPE"

    const-string v1, "Automation: We are running in AppCenter, forcing isTTSEnabled to false to avoid screen reader popup"

    .line 2392
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    if-eqz v0, :cond_1

    const-string v0, "accessibility"

    .line 2399
    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_1

    .line 2400
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 2401
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v0

    .line 2402
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    return v2
.end method

.method public isTTSInstalled()Z
    .locals 3

    const-string v0, "accessibility"

    .line 2377
    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 2378
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v0

    .line 2379
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 2380
    iget v1, v1, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method isTablet()Z
    .locals 2

    .line 1535
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->isChromebook()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1536
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->isHardwareKeyboardHidden()Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "ro.build.characteristics"

    .line 1538
    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method native isTestInfrastructureDisabled()Z
.end method

.method public isTextToSpeechInProgress()Z
    .locals 1

    .line 2145
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->textToSpeechManager:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 2146
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public launchUri(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    .line 199
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 200
    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public lockCursor()V
    .locals 3

    .line 483
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const v0, 0x1020002

    .line 484
    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    .line 485
    iput-boolean v1, p0, Lcom/mojang/minecraftpe/MainActivity;->mCursorLocked:Z

    .line 487
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPointerIcon(Landroid/view/PointerIcon;)V

    .line 488
    invoke-virtual {v0}, Landroid/view/View;->requestPointerCapture()V

    :cond_0
    return-void
.end method

.method native nativeBackPressed()V
.end method

.method native nativeBackSpacePressed()V
.end method

.method native nativeCheckIfTestsAreFinished()Ljava/lang/String;
.end method

.method native nativeClearAButtonState()V
.end method

.method native nativeDeviceCorrelation(JLjava/lang/String;JLjava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "myTime",
            "theirDeviceId",
            "theirTime",
            "theirLastSessionId"
        }
    .end annotation
.end method

.method native nativeFireNetworkChangedEvent(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "networkConnectionType"
        }
    .end annotation
.end method

.method native nativeGetActiveScreen()Ljava/lang/String;
.end method

.method native nativeGetDevConsoleLogName()Ljava/lang/String;
.end method

.method native nativeGetDeviceId()Ljava/lang/String;
.end method

.method native nativeGetLogText(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fileInfo"
        }
    .end annotation
.end method

.method native nativeInitializeLibHttpClient(J)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hcInitArgs"
        }
    .end annotation
.end method

.method native nativeInitializeXboxLive(JJ)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "xalInitArgs",
            "xblInitArgs"
        }
    .end annotation
.end method

.method native nativeKeyHandler(II)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "keycode",
            "action"
        }
    .end annotation
.end method

.method native nativeOnDestroy()V
.end method

.method native nativeOnPickFileCanceled()V
.end method

.method native nativeOnPickFileSuccess(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tempPickedFilePath"
        }
    .end annotation
.end method

.method native nativeOnPickImageCanceled(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method

.method native nativeOnPickImageSuccess(JLjava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "callback",
            "picturePath"
        }
    .end annotation
.end method

.method native nativeProcessIntentUriQuery(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "host",
            "query"
        }
    .end annotation
.end method

.method native nativeResize(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation
.end method

.method native nativeReturnKeyPressed()V
.end method

.method native nativeSetHeadphonesConnected(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "connected"
        }
    .end annotation
.end method

.method native nativeSetOptions(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "optionsString"
        }
    .end annotation
.end method

.method native nativeSetTextboxText(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation
.end method

.method native nativeShutdown()V
.end method

.method native nativeStopThis()V
.end method

.method native nativeStoragePermissionRequestResult(ZI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "result",
            "reason"
        }
    .end annotation
.end method

.method native nativeSuspend()V
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "intentData"
        }
    .end annotation

    .line 2044
    invoke-super {p0, p1, p2, p3}, Landroid/app/NativeActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2046
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mActivityListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mojang/minecraftpe/ActivityListener;

    .line 2047
    invoke-interface {v1, p1, p2, p3}, Lcom/mojang/minecraftpe/ActivityListener;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 2051
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->nativeOnPickFileCanceled()V

    return-void

    .line 2055
    :cond_1
    sget v0, Lcom/mojang/minecraftpe/MainActivity;->RESULT_PICK_IMAGE:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne p1, v0, :cond_5

    const-wide/16 v3, 0x0

    if-ne p2, v2, :cond_4

    if-eqz p3, :cond_4

    .line 2057
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_3

    const-string p1, "_data"

    .line 2059
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 2061
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v7, p1

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 2064
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2066
    aget-object p1, p1, v1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 2067
    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 2069
    iget-wide v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mCallback:J

    cmp-long p3, v0, v3

    if-eqz p3, :cond_2

    .line 2070
    invoke-virtual {p0, v0, v1, p1}, Lcom/mojang/minecraftpe/MainActivity;->nativeOnPickImageSuccess(JLjava/lang/String;)V

    .line 2071
    iput-wide v3, p0, Lcom/mojang/minecraftpe/MainActivity;->mCallback:J

    .line 2074
    :cond_2
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void

    .line 2081
    :cond_4
    iget-wide p1, p0, Lcom/mojang/minecraftpe/MainActivity;->mCallback:J

    cmp-long p3, p1, v3

    if-eqz p3, :cond_a

    .line 2082
    invoke-virtual {p0, p1, p2}, Lcom/mojang/minecraftpe/MainActivity;->nativeOnPickImageCanceled(J)V

    .line 2083
    iput-wide v3, p0, Lcom/mojang/minecraftpe/MainActivity;->mCallback:J

    goto :goto_3

    :cond_5
    const/4 v0, 0x4

    const/4 v3, 0x5

    if-eq p1, v0, :cond_6

    if-ne p1, v3, :cond_a

    :cond_6
    if-ne p1, v3, :cond_7

    const/4 v1, 0x1

    :cond_7
    if-ne p2, v2, :cond_a

    if-eqz p3, :cond_a

    .line 2089
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 2091
    :try_start_0
    iget-object p1, p0, Lcom/mojang/minecraftpe/MainActivity;->mPickedFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz p1, :cond_8

    .line 2092
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 2095
    :cond_8
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-eqz v1, :cond_9

    const-string p3, "r"

    goto :goto_1

    :cond_9
    const-string p3, "w"

    :goto_1
    invoke-virtual {p1, p2, p3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity;->mPickedFileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 2098
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 2101
    :goto_2
    invoke-virtual {p0, v1}, Lcom/mojang/minecraftpe/MainActivity;->onPickFileSuccess(Z)V

    :cond_a
    :goto_3
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    const-string v0, "MinecraftPlatform"

    const-string v1, "MainActivity::onCreate"

    .line 366
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-static {p0}, Landroidx/core/splashscreen/SplashScreen;->installSplashScreen(Landroid/app/Activity;)Landroidx/core/splashscreen/SplashScreen;

    .line 370
    invoke-super {p0, p1}, Landroid/app/NativeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 374
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "mcpe - replacing"

    const-string v0, "App is installing/replacing. Killing..."

    .line 375
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    .line 380
    :cond_0
    invoke-static {}, Lcom/mojang/minecraftpe/MainActivity;->nativeWaitCrashManagementSetupComplete()V

    .line 382
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->isEduMode()Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 387
    :try_start_0
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const-string v2, "com.microsoft.applications.events.HttpClient"

    invoke-virtual {p1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    new-array v2, v1, [Ljava/lang/Class;

    .line 388
    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v2, v1, [Ljava/lang/Object;

    .line 389
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 392
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 393
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 397
    :cond_1
    invoke-direct {p0}, Lcom/mojang/minecraftpe/MainActivity;->configureBrazeAtRuntime()V

    .line 398
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt p1, v2, :cond_2

    .line 400
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->requestPushPermission()V

    .line 404
    :cond_2
    :goto_0
    invoke-static {v1}, Lcom/mojang/minecraftpe/platforms/Platform;->createPlatform(Z)Lcom/mojang/minecraftpe/platforms/Platform;

    move-result-object p1

    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity;->platform:Lcom/mojang/minecraftpe/platforms/Platform;

    const/4 p1, 0x3

    .line 405
    invoke-virtual {p0, p1}, Lcom/mojang/minecraftpe/MainActivity;->setVolumeControlStream(I)V

    .line 406
    invoke-static {p0}, Lorg/fmod/FMOD;->init(Landroid/content/Context;)V

    .line 407
    invoke-static {p0}, Lcom/mojang/minecraftpe/input/InputDeviceManager;->create(Landroid/content/Context;)Lcom/mojang/minecraftpe/input/InputDeviceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity;->deviceManager:Lcom/mojang/minecraftpe/input/InputDeviceManager;

    .line 408
    new-instance p1, Lcom/mojang/minecraftpe/MainActivity$HeadsetConnectionReceiver;

    const/4 v2, 0x0

    invoke-direct {p1, p0, v2}, Lcom/mojang/minecraftpe/MainActivity$HeadsetConnectionReceiver;-><init>(Lcom/mojang/minecraftpe/MainActivity;Lcom/mojang/minecraftpe/MainActivity$1;)V

    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity;->headsetConnectionReceiver:Lcom/mojang/minecraftpe/MainActivity$HeadsetConnectionReceiver;

    .line 409
    new-instance p1, Lcom/mojang/minecraftpe/MainActivity$NetworkReceiver;

    invoke-direct {p1, p0, v2}, Lcom/mojang/minecraftpe/MainActivity$NetworkReceiver;-><init>(Lcom/mojang/minecraftpe/MainActivity;Lcom/mojang/minecraftpe/MainActivity$1;)V

    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity;->networkReceiver:Lcom/mojang/minecraftpe/MainActivity$NetworkReceiver;

    .line 411
    iget-object p1, p0, Lcom/mojang/minecraftpe/MainActivity;->platform:Lcom/mojang/minecraftpe/platforms/Platform;

    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/mojang/minecraftpe/platforms/Platform;->onAppStart(Landroid/view/View;)V

    .line 413
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v3, p1, v2}, Lcom/mojang/minecraftpe/MainActivity;->checkPermission(Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    sput-boolean v0, Lcom/mojang/minecraftpe/MainActivity;->mHasStoragePermission:Z

    const-string p1, "audio"

    .line 416
    invoke-virtual {p0, p1}, Lcom/mojang/minecraftpe/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    .line 417
    invoke-virtual {p1}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mojang/minecraftpe/MainActivity;->nativeSetHeadphonesConnected(Z)V

    const-string p1, "clipboard"

    .line 419
    invoke-virtual {p0, p1}, Lcom/mojang/minecraftpe/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity;->clipboardManager:Landroid/content/ClipboardManager;

    .line 420
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity;->initialUserLocale:Ljava/util/Locale;

    .line 422
    new-instance p1, Lcom/mojang/minecraftpe/FilePickerManager;

    invoke-direct {p1, p0}, Lcom/mojang/minecraftpe/FilePickerManager;-><init>(Lcom/mojang/minecraftpe/FilePickerManagerHandler;)V

    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity;->mFilePickerManager:Lcom/mojang/minecraftpe/FilePickerManager;

    .line 423
    invoke-virtual {p0, p1}, Lcom/mojang/minecraftpe/MainActivity;->addListener(Lcom/mojang/minecraftpe/ActivityListener;)V

    .line 426
    new-instance p1, Lcom/mojang/minecraftpe/MainActivity$2;

    invoke-direct {p1, p0}, Lcom/mojang/minecraftpe/MainActivity$2;-><init>(Lcom/mojang/minecraftpe/MainActivity;)V

    .line 452
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "jBHFfePzvJhHdfvijAcLoQ"

    invoke-virtual {v0, v3, p1, v2}, Lcom/appsflyer/AppsFlyerLib;->init(Ljava/lang/String;Lcom/appsflyer/AppsFlyerConversionListener;Landroid/content/Context;)Lcom/appsflyer/AppsFlyerLib;

    .line 453
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/appsflyer/AppsFlyerLib;->start(Landroid/content/Context;)V

    .line 455
    sput-object p0, Lcom/mojang/minecraftpe/MainActivity;->mInstance:Lcom/mojang/minecraftpe/MainActivity;

    .line 456
    iput-boolean v1, p0, Lcom/mojang/minecraftpe/MainActivity;->_fromOnCreate:Z

    .line 457
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->createTextWidget()Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    move-result-object p1

    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    const p1, 0x1020002

    .line 459
    invoke-virtual {p0, p1}, Lcom/mojang/minecraftpe/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    .line 460
    new-instance v0, Lcom/mojang/minecraftpe/MainActivity$3;

    invoke-direct {v0, p0}, Lcom/mojang/minecraftpe/MainActivity$3;-><init>(Lcom/mojang/minecraftpe/MainActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 467
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->isEduMode()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 468
    new-instance p1, Lcom/mojang/minecraftpe/python/PythonPackageLoader;

    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {p1, v0, v2}, Lcom/mojang/minecraftpe/python/PythonPackageLoader;-><init>(Landroid/content/res/AssetManager;Ljava/io/File;)V

    .line 469
    invoke-virtual {p1}, Lcom/mojang/minecraftpe/python/PythonPackageLoader;->unpack()V

    .line 472
    :cond_4
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->isTestInfrastructureDisabled()Z

    move-result p1

    if-nez p1, :cond_5

    .line 473
    invoke-static {}, Lcom/mojang/minecraftpe/InstrumentationRegistryHelper;->getIsRunningInAppCenter()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 474
    iput-boolean v1, p0, Lcom/mojang/minecraftpe/MainActivity;->mIsRunningInAppCenter:Z

    const-string p1, "MCPE"

    const-string v0, "Automation: in MainActivity::onCreate, we are running in AppCenter"

    .line 475
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_5
    new-instance p1, Lcom/mojang/minecraftpe/WorldRecovery;

    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/mojang/minecraftpe/WorldRecovery;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;)V

    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity;->mWorldRecovery:Lcom/mojang/minecraftpe/WorldRecovery;

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "MinecraftPE"

    const-string v1, "onDestroy"

    .line 1812
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1814
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1815
    invoke-static {}, Lorg/fmod/FMOD;->close()V

    .line 1818
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity;->mActivityListeners:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1819
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mojang/minecraftpe/ActivityListener;

    .line 1820
    invoke-interface {v1}, Lcom/mojang/minecraftpe/ActivityListener;->onDestroy()V

    goto :goto_0

    .line 1823
    :cond_0
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mFilePickerManager:Lcom/mojang/minecraftpe/FilePickerManager;

    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->removeListener(Lcom/mojang/minecraftpe/ActivityListener;)V

    const/4 v0, 0x0

    .line 1824
    sput-object v0, Lcom/mojang/minecraftpe/MainActivity;->mInstance:Lcom/mojang/minecraftpe/MainActivity;

    .line 1826
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->nativeOnDestroy()V

    .line 1827
    invoke-super {p0}, Landroid/app/NativeActivity;->onDestroy()V

    const/4 v0, 0x0

    .line 1829
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "keyCode",
            "event"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    .line 989
    invoke-super {p0, p1, p2}, Landroid/app/NativeActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "repeatCount",
            "event"
        }
    .end annotation

    .line 920
    invoke-super {p0, p1, p2, p3}, Landroid/app/NativeActivity;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    const/16 v0, 0x19

    if-eq p1, v0, :cond_0

    const/16 v0, 0x18

    if-ne p1, v0, :cond_1

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->platform:Lcom/mojang/minecraftpe/platforms/Platform;

    invoke-virtual {v0}, Lcom/mojang/minecraftpe/platforms/Platform;->onVolumePressed()V

    .line 536
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/NativeActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 1834
    invoke-virtual {p0, p1}, Lcom/mojang/minecraftpe/MainActivity;->setIntent(Landroid/content/Intent;)V

    .line 1835
    invoke-direct {p0, p1}, Lcom/mojang/minecraftpe/MainActivity;->processIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "MinecraftPE"

    const-string v1, "onPause"

    .line 1788
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1789
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->nativeSuspend()V

    .line 1790
    invoke-super {p0}, Landroid/app/NativeActivity;->onPause()V

    .line 1794
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1795
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->nativeShutdown()V

    :cond_0
    return-void
.end method

.method onPickFileSuccess(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shouldCopy"
        }
    .end annotation

    .line 2034
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/tempPickedFile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 2036
    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->copyFromPickedFile(Ljava/lang/String;)V

    .line 2039
    :cond_0
    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->nativeOnPickFileSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "permissions",
            "grantResults"
        }
    .end annotation

    const-string p2, "MinecraftPlatform"

    const-string v0, "MainActivity::onRequestPermissionsResult"

    .line 656
    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_1

    .line 670
    :cond_0
    array-length p1, p3

    if-lez p1, :cond_3

    aget p1, p3, v0

    if-nez p1, :cond_3

    .line 671
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/braze/Braze;->getInstance(Landroid/content/Context;)Lcom/braze/Braze;

    move-result-object p1

    invoke-virtual {p1}, Lcom/braze/Braze;->requestImmediateDataFlush()V

    goto :goto_1

    .line 659
    :cond_1
    array-length p1, p3

    if-lez p1, :cond_2

    aget p1, p3, v0

    if-nez p1, :cond_2

    .line 660
    sput-boolean p2, Lcom/mojang/minecraftpe/MainActivity;->mHasStoragePermission:Z

    goto :goto_0

    .line 663
    :cond_2
    sput-boolean v0, Lcom/mojang/minecraftpe/MainActivity;->mHasStoragePermission:Z

    .line 666
    :goto_0
    sget-boolean p1, Lcom/mojang/minecraftpe/MainActivity;->mHasStoragePermission:Z

    iget p2, p0, Lcom/mojang/minecraftpe/MainActivity;->mLastPermissionRequestReason:I

    invoke-virtual {p0, p1, p2}, Lcom/mojang/minecraftpe/MainActivity;->nativeStoragePermissionRequestResult(ZI)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected onResume()V
    .locals 7

    const-string v0, "MinecraftPE"

    const-string v1, "onResume"

    .line 1767
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1768
    invoke-super {p0}, Landroid/app/NativeActivity;->onResume()V

    .line 1770
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1771
    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity;->headsetConnectionReceiver:Lcom/mojang/minecraftpe/MainActivity$HeadsetConnectionReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/mojang/minecraftpe/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1772
    invoke-direct {p0}, Lcom/mojang/minecraftpe/MainActivity;->isTextWidgetActive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1773
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    invoke-virtual {v0}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1774
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    iget v3, v0, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->allowedLength:I

    .line 1775
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    invoke-virtual {v0}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->getInputType()I

    move-result v0

    const/4 v1, 0x2

    and-int/2addr v0, v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1776
    :goto_0
    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    invoke-virtual {v1}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->getInputType()I

    move-result v1

    const/high16 v6, 0x20000

    and-int/2addr v1, v6

    if-ne v1, v6, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    .line 1778
    :goto_1
    invoke-direct {p0}, Lcom/mojang/minecraftpe/MainActivity;->dismissTextWidget()V

    const/4 v4, 0x0

    move-object v1, p0

    move v5, v0

    .line 1779
    invoke-virtual/range {v1 .. v6}, Lcom/mojang/minecraftpe/MainActivity;->showKeyboard(Ljava/lang/String;IZZZ)V

    .line 1782
    :cond_2
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mActivityListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mojang/minecraftpe/ActivityListener;

    .line 1783
    invoke-interface {v1}, Lcom/mojang/minecraftpe/ActivityListener;->onResume()V

    goto :goto_2

    :cond_3
    return-void
.end method

.method native onSoftKeyboardClosed()V
.end method

.method protected onStart()V
    .locals 2

    const-string v0, "MinecraftPE"

    const-string v1, "onStart"

    .line 1750
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    invoke-super {p0}, Landroid/app/NativeActivity;->onStart()V

    .line 1752
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->deviceManager:Lcom/mojang/minecraftpe/input/InputDeviceManager;

    invoke-virtual {v0}, Lcom/mojang/minecraftpe/input/InputDeviceManager;->register()V

    .line 1754
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 1755
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1756
    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity;->networkReceiver:Lcom/mojang/minecraftpe/MainActivity$NetworkReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/mojang/minecraftpe/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1758
    iget-boolean v0, p0, Lcom/mojang/minecraftpe/MainActivity;->_fromOnCreate:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1759
    iput-boolean v0, p0, Lcom/mojang/minecraftpe/MainActivity;->_fromOnCreate:Z

    .line 1761
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1762
    invoke-direct {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->processIntent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    const-string v0, "MinecraftPE"

    const-string v1, "onStop"

    .line 1800
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->nativeStopThis()V

    .line 1803
    invoke-super {p0}, Landroid/app/NativeActivity;->onStop()V

    .line 1805
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->deviceManager:Lcom/mojang/minecraftpe/input/InputDeviceManager;

    invoke-virtual {v0}, Lcom/mojang/minecraftpe/input/InputDeviceManager;->unregister()V

    .line 1807
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mActivityListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mojang/minecraftpe/ActivityListener;

    .line 1808
    invoke-interface {v1}, Lcom/mojang/minecraftpe/ActivityListener;->onStop()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasFocus"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 974
    iget-boolean v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mCursorLocked:Z

    if-eqz v0, :cond_0

    .line 975
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->lockCursor()V

    .line 979
    :cond_0
    invoke-super {p0, p1}, Landroid/app/NativeActivity;->onWindowFocusChanged(Z)V

    .line 980
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->platform:Lcom/mojang/minecraftpe/platforms/Platform;

    invoke-virtual {v0, p1}, Lcom/mojang/minecraftpe/platforms/Platform;->onViewFocusChanged(Z)V

    return-void
.end method

.method public openAndroidAppSettings()V
    .locals 4

    .line 215
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 216
    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openAndroidAppSettings: Failed to open android app settings: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MCPE"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method openFile()V
    .locals 2

    .line 2026
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.OPENABLE"

    .line 2027
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "*/*"

    .line 2029
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x5

    .line 2030
    invoke-virtual {p0, v0, v1}, Lcom/mojang/minecraftpe/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method pickImage(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 2000
    iput-wide p1, p0, Lcom/mojang/minecraftpe/MainActivity;->mCallback:J

    .line 2002
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.PICK"

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2004
    sget p2, Lcom/mojang/minecraftpe/MainActivity;->RESULT_PICK_IMAGE:I

    invoke-virtual {p0, p1, p2}, Lcom/mojang/minecraftpe/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public postScreenshotToFacebook(Ljava/lang/String;II[I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "filename",
            "w",
            "h",
            "pixels"
        }
    .end annotation

    return-void
.end method

.method public quit()V
    .locals 1

    .line 1348
    new-instance v0, Lcom/mojang/minecraftpe/MainActivity$18;

    invoke-direct {v0, p0}, Lcom/mojang/minecraftpe/MainActivity$18;-><init>(Lcom/mojang/minecraftpe/MainActivity;)V

    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public releaseMulticast()V
    .locals 2

    .line 2528
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->isMulticastHeld()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2530
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    :cond_0
    return-void
.end method

.method public removeListener(Lcom/mojang/minecraftpe/ActivityListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 2116
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mActivityListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public requestPushPermission()V
    .locals 3

    const-string v0, "MinecraftPlatform"

    const-string v1, "MainActivity::requestPushPermission"

    .line 638
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const-string v2, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {p0, v2, v0, v1}, Lcom/mojang/minecraftpe/MainActivity;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    new-instance v0, Lcom/mojang/minecraftpe/MainActivity$6;

    invoke-direct {v0, p0}, Lcom/mojang/minecraftpe/MainActivity$6;-><init>(Lcom/mojang/minecraftpe/MainActivity;)V

    .line 651
    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public requestStoragePermission(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "permissionReason"
        }
    .end annotation

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 630
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 633
    iput p1, p0, Lcom/mojang/minecraftpe/MainActivity;->mLastPermissionRequestReason:I

    const/4 p1, 0x1

    .line 634
    invoke-virtual {p0, v0, p1}, Lcom/mojang/minecraftpe/MainActivity;->requestPermissions([Ljava/lang/String;I)V

    return-void
.end method

.method saveFile(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defaultFileName"
        }
    .end annotation

    .line 2016
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.OPENABLE"

    .line 2017
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "*/*"

    .line 2018
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TITLE"

    .line 2019
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x4

    .line 2020
    invoke-virtual {p0, v0, p1}, Lcom/mojang/minecraftpe/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public setBrazeID(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ID"
        }
    .end annotation

    .line 248
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->isBrazeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 252
    :cond_0
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/braze/Braze;->getInstance(Landroid/content/Context;)Lcom/braze/Braze;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/braze/Braze;->changeUser(Ljava/lang/String;)V

    return-void
.end method

.method public setCachedDeviceId(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deviceId"
        }
    .end annotation

    .line 276
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 277
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "deviceId"

    .line 278
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 279
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setClipboard(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const-string v0, "MCPE-Clipdata"

    .line 227
    invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    .line 228
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->clipboardManager:Landroid/content/ClipboardManager;

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void
.end method

.method setFileDialogCallback(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 2010
    iput-wide p1, p0, Lcom/mojang/minecraftpe/MainActivity;->mFileDialogCallback:J

    return-void
.end method

.method public setIsPowerVR(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 966
    sput-boolean p1, Lcom/mojang/minecraftpe/MainActivity;->_isPowerVr:Z

    return-void
.end method

.method public setKeepScreenOnFlag(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keepScreenOn"
        }
    .end annotation

    .line 2484
    new-instance v0, Lcom/mojang/minecraftpe/MainActivity$21;

    invoke-direct {v0, p0, p1}, Lcom/mojang/minecraftpe/MainActivity$21;-><init>(Lcom/mojang/minecraftpe/MainActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setLoginInformation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "accessToken",
            "clientId",
            "profileId",
            "profileName"
        }
    .end annotation

    .line 1416
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1417
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "accessToken"

    .line 1418
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "clientId"

    .line 1419
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "profileId"

    .line 1420
    invoke-interface {v0, p1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "profileName"

    .line 1421
    invoke-interface {v0, p1, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1422
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setMulticastReferenceCounting(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "useReferenceCounting"
        }
    .end annotation

    .line 2507
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->mMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;

    if-eqz v0, :cond_0

    .line 2508
    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager$MulticastLock;->setReferenceCounted(Z)V

    :cond_0
    return-void
.end method

.method public setRefreshToken(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "refreshToken"
        }
    .end annotation

    .line 1409
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1410
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "refreshToken"

    .line 1411
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1412
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setSecureStorageKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 1365
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1366
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1367
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1368
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setSession(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sessionId"
        }
    .end annotation

    .line 1402
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1403
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "sessionID"

    .line 1404
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1405
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setTextToSpeechEnabled(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 609
    iget-object p1, p0, Lcom/mojang/minecraftpe/MainActivity;->textToSpeechManager:Landroid/speech/tts/TextToSpeech;

    if-nez p1, :cond_1

    .line 611
    :try_start_0
    new-instance p1, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/mojang/minecraftpe/MainActivity$5;

    invoke-direct {v1, p0}, Lcom/mojang/minecraftpe/MainActivity$5;-><init>(Lcom/mojang/minecraftpe/MainActivity;)V

    invoke-direct {p1, v0, v1}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity;->textToSpeechManager:Landroid/speech/tts/TextToSpeech;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 624
    iput-object p1, p0, Lcom/mojang/minecraftpe/MainActivity;->textToSpeechManager:Landroid/speech/tts/TextToSpeech;

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public setVolume(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volume"
        }
    .end annotation

    .line 2120
    iput p1, p0, Lcom/mojang/minecraftpe/MainActivity;->mVolume:F

    return-void
.end method

.method public setupKeyboardViews(Ljava/lang/String;IZZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "text",
            "maxLength",
            "limitInput",
            "numbersOnly",
            "isMultiline"
        }
    .end annotation

    .line 690
    iget-object p3, p0, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    if-nez p3, :cond_0

    .line 691
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->createTextWidget()Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    move-result-object p3

    iput-object p3, p0, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    .line 694
    :cond_0
    iget-object p3, p0, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    xor-int/lit8 v0, p5, 0x1

    invoke-virtual {p3, p2, v0}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->updateFilters(IZ)V

    .line 695
    iget-object p2, p0, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    invoke-virtual {p2, p1}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->setTextFromGame(Ljava/lang/String;)V

    .line 696
    iget-object p1, p0, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->setVisibility(I)V

    .line 697
    iget-object p1, p0, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    if-eqz p5, :cond_1

    const/high16 p3, 0x20000

    goto :goto_0

    :cond_1
    const/high16 p3, 0x80000

    :goto_0
    invoke-virtual {p1, p3}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->setInputType(I)V

    if-eqz p4, :cond_2

    .line 699
    iget-object p1, p0, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    invoke-virtual {p1}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->getInputType()I

    move-result p3

    or-int/lit8 p3, p3, 0x2

    invoke-virtual {p1, p3}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->setInputType(I)V

    goto :goto_1

    .line 702
    :cond_2
    iget-object p1, p0, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    invoke-virtual {p1}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->getInputType()I

    move-result p3

    or-int/lit8 p3, p3, 0x1

    invoke-virtual {p1, p3}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->setInputType(I)V

    .line 706
    :goto_1
    iget-object p1, p0, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    invoke-virtual {p1}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->requestFocus()Z

    .line 707
    invoke-direct {p0}, Lcom/mojang/minecraftpe/MainActivity;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object p1

    iget-object p3, p0, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    invoke-virtual {p1, p3, p2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 708
    iget-object p1, p0, Lcom/mojang/minecraftpe/MainActivity;->textInputWidget:Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;

    invoke-virtual {p1}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/mojang/minecraftpe/TextInputProxyEditTextbox;->setSelection(I)V

    return-void
.end method

.method public share(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "title",
            "description",
            "uri"
        }
    .end annotation

    .line 204
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.SEND"

    .line 205
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.SUBJECT"

    .line 206
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TITLE"

    .line 207
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.intent.extra.TEXT"

    .line 208
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "text/plain"

    .line 209
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    invoke-static {v0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mojang/minecraftpe/MainActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public showKeyboard(Ljava/lang/String;IZZZ)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "text",
            "maxLength",
            "limitInput",
            "numbersOnly",
            "isMultiline"
        }
    .end annotation

    .line 865
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->nativeClearAButtonState()V

    .line 866
    new-instance v7, Lcom/mojang/minecraftpe/MainActivity$12;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/mojang/minecraftpe/MainActivity$12;-><init>(Lcom/mojang/minecraftpe/MainActivity;Ljava/lang/String;IZZZ)V

    invoke-virtual {p0, v7}, Lcom/mojang/minecraftpe/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startPickerActivity(Landroid/content/Intent;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "intent",
            "requestCode"
        }
    .end annotation

    .line 2108
    invoke-virtual {p0, p1, p2}, Lcom/mojang/minecraftpe/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public startTextToSpeech(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 2124
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->textToSpeechManager:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_1

    .line 2125
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x0

    const-string v3, "volume"

    if-ge v0, v1, :cond_0

    .line 2127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2128
    iget v1, p0, Lcom/mojang/minecraftpe/MainActivity;->mVolume:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2129
    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity;->textToSpeechManager:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1, p1, v2, v0}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    goto :goto_0

    .line 2131
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2132
    iget v1, p0, Lcom/mojang/minecraftpe/MainActivity;->mVolume:F

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 2133
    iget-object v1, p0, Lcom/mojang/minecraftpe/MainActivity;->textToSpeechManager:Landroid/speech/tts/TextToSpeech;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v0, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public statsTrackEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventName",
            "eventParameters"
        }
    .end annotation

    return-void
.end method

.method public statsUpdateUserData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "graphicsVendor",
            "graphicsRenderer"
        }
    .end annotation

    return-void
.end method

.method public stopTextToSpeech()V
    .locals 1

    .line 2139
    iget-object v0, p0, Lcom/mojang/minecraftpe/MainActivity;->textToSpeechManager:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 2140
    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    :cond_0
    return-void
.end method

.method public supportsSizeQuery(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .line 2452
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_0

    .line 2454
    :try_start_0
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 2455
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2458
    invoke-virtual {v0, v2}, Landroid/os/storage/StorageManager;->getUuidForPath(Ljava/io/File;)Ljava/util/UUID;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_0
    return v1
.end method

.method public throwRuntimeExceptionFromNative(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .line 284
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 285
    new-instance v1, Lcom/mojang/minecraftpe/MainActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/mojang/minecraftpe/MainActivity$1;-><init>(Lcom/mojang/minecraftpe/MainActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public tick()V
    .locals 0

    return-void
.end method

.method public trackPurchaseEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "contentId",
            "contentType",
            "revenue",
            "clientId",
            "userId",
            "playerSessionId",
            "currencyCode",
            "eventName"
        }
    .end annotation

    .line 236
    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    const-string v0, "player_session_id"

    .line 237
    invoke-interface {p5, v0, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p6, "client_id"

    .line 238
    invoke-interface {p5, p6, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p4, "af_revenue"

    .line 240
    invoke-interface {p5, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "af_content_type"

    .line 241
    invoke-interface {p5, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "af_content_id"

    .line 242
    invoke-interface {p5, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "af_currency"

    .line 243
    invoke-interface {p5, p1, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object p1

    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2, p8, p5}, Lcom/appsflyer/AppsFlyerLib;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public unlockCursor()V
    .locals 3

    .line 493
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const v0, 0x1020002

    .line 494
    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 495
    iput-boolean v1, p0, Lcom/mojang/minecraftpe/MainActivity;->mCursorLocked:Z

    .line 497
    invoke-virtual {p0}, Lcom/mojang/minecraftpe/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-static {v1, v2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPointerIcon(Landroid/view/PointerIcon;)V

    .line 498
    invoke-virtual {v0}, Landroid/view/View;->releasePointerCapture()V

    :cond_0
    return-void
.end method

.method public updateLocalization(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lang",
            "region"
        }
    .end annotation

    .line 845
    new-instance v0, Lcom/mojang/minecraftpe/MainActivity$11;

    invoke-direct {v0, p0, p1, p2}, Lcom/mojang/minecraftpe/MainActivity$11;-><init>(Lcom/mojang/minecraftpe/MainActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateTextboxText(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newText"
        }
    .end annotation

    .line 899
    new-instance v0, Lcom/mojang/minecraftpe/MainActivity$14;

    invoke-direct {v0, p0, p1}, Lcom/mojang/minecraftpe/MainActivity$14;-><init>(Lcom/mojang/minecraftpe/MainActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public vibrate(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "milliSeconds"
        }
    .end annotation

    const-string v0, "vibrator"

    .line 1613
    invoke-virtual {p0, v0}, Lcom/mojang/minecraftpe/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    int-to-long v1, p1

    .line 1614
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method