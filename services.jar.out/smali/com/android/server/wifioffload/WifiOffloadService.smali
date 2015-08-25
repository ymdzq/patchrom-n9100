.class public Lcom/android/server/wifioffload/WifiOffloadService;
.super Landroid/net/wifi/IWifiOffloadManager$Stub;
.source "WifiOffloadService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifioffload/WifiOffloadService$WifiOffloadLogStats;
    }
.end annotation


# static fields
.field private static final CHECK_WIFIOFFLOADING_CONDITIONS_FOR_PACKAGE:I = 0x65

.field private static final DATA_USAGE_THRESHOLD:I = 0x1

.field private static final DONT_SHOW_WIFI_POPUP_TIMER:J = 0x2932e00L

.field private static final PROPERTY_DATA_USAGE_THREHOLD:Ljava/lang/String; = "app.offload.datausage.limit"

.field private static final START_WIFIOFFLOAD_DIALOG_DELAYED_MSG:I = 0x66

.field private static final TAG:Ljava/lang/String; = "WifiOffloadServiceNew"

.field private static final WIFIOFFLOAD_APDIALOG_LAUNCH_DELAYTIME:J = 0x2bcL


# instance fields
.field private isTimerRunning:Z

.field private locationId:I

.field private mAirPlaneModeEnabled:Z

.field private mAppLaunchCount:I

.field private mContext:Landroid/content/Context;

.field private mDBHelper:Lcom/android/server/wifioffload/WifiOffloadDB;

.field private mDataUsageLimitCrossed:Z

.field private mDependentPackagesTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mIsTablet:Z

.field private mIsWifiOffloadDialogIntentSent:Z

.field private mLatestWifiScanTime:J

.field private mMessageHandler:Landroid/os/Handler;

.field private mMobileHotSpotEnabled:Z

.field private mPackageName:Ljava/lang/String;

.field private mShowWifiPopupEnabled:Z

.field private mStartTime:J

.field private mWifiConnectedToAP:Z

.field private mWifiEnabled:Z

.field private final mWifiEventsReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiOffloadDB:Landroid/database/sqlite/SQLiteDatabase;

.field private mWifiOffloadLog:Ljava/lang/StringBuilder;

.field private final settingsObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 114
    invoke-direct {p0}, Landroid/net/wifi/IWifiOffloadManager$Stub;-><init>()V

    .line 90
    iput-object v5, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiOffloadDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 91
    iput-object v5, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mDBHelper:Lcom/android/server/wifioffload/WifiOffloadDB;

    .line 92
    iput-object v5, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 94
    iput-boolean v4, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiEnabled:Z

    .line 95
    iput-boolean v4, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiConnectedToAP:Z

    .line 96
    iput-boolean v4, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mMobileHotSpotEnabled:Z

    .line 97
    iput-boolean v4, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mShowWifiPopupEnabled:Z

    .line 98
    iput-boolean v4, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAirPlaneModeEnabled:Z

    .line 100
    invoke-direct {p0}, Lcom/android/server/wifioffload/WifiOffloadService;->isTablet()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mIsTablet:Z

    .line 101
    iput-boolean v4, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mDataUsageLimitCrossed:Z

    .line 102
    iput-boolean v4, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mIsWifiOffloadDialogIntentSent:Z

    .line 104
    iput v4, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAppLaunchCount:I

    .line 105
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->locationId:I

    .line 106
    iput-object v5, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mPackageName:Ljava/lang/String;

    .line 107
    iput-wide v6, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mLatestWifiScanTime:J

    .line 108
    iput-wide v6, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mStartTime:J

    .line 109
    iput-boolean v4, p0, Lcom/android/server/wifioffload/WifiOffloadService;->isTimerRunning:Z

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiOffloadLog:Ljava/lang/StringBuilder;

    .line 526
    new-instance v2, Lcom/android/server/wifioffload/WifiOffloadService$1;

    invoke-direct {v2, p0}, Lcom/android/server/wifioffload/WifiOffloadService$1;-><init>(Lcom/android/server/wifioffload/WifiOffloadService;)V

    iput-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mMessageHandler:Landroid/os/Handler;

    .line 642
    iput-object v5, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mDependentPackagesTable:Ljava/util/HashMap;

    .line 682
    new-instance v2, Lcom/android/server/wifioffload/WifiOffloadService$2;

    invoke-direct {v2, p0}, Lcom/android/server/wifioffload/WifiOffloadService$2;-><init>(Lcom/android/server/wifioffload/WifiOffloadService;)V

    iput-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiEventsReceiver:Landroid/content/BroadcastReceiver;

    .line 733
    new-instance v2, Lcom/android/server/wifioffload/WifiOffloadService$3;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v5}, Lcom/android/server/wifioffload/WifiOffloadService$3;-><init>(Lcom/android/server/wifioffload/WifiOffloadService;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->settingsObserver:Landroid/database/ContentObserver;

    .line 115
    iput-object p1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mContext:Landroid/content/Context;

    .line 116
    const-string v2, "WifiOffloadServiceNew"

    const-string v5, "WifiOffloadService onCreate()"

    invoke-static {v2, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    new-instance v2, Lcom/android/server/wifioffload/WifiOffloadDB;

    iget-object v5, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/android/server/wifioffload/WifiOffloadDB;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mDBHelper:Lcom/android/server/wifioffload/WifiOffloadDB;

    .line 119
    iget-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mDBHelper:Lcom/android/server/wifioffload/WifiOffloadDB;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiOffloadDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 121
    iget-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "wifi"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 124
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 125
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    const-string v2, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    iget-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiEventsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 136
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "wifi_offload_network_notify"

    invoke-static {v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_0

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mShowWifiPopupEnabled:Z

    .line 139
    iget-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "airplane_mode_on"

    invoke-static {v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_1

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAirPlaneModeEnabled:Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_2
    iget-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "airplane_mode_on"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifioffload/WifiOffloadService;->settingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 149
    iget-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "wifi_offload_network_notify"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifioffload/WifiOffloadService;->settingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 153
    invoke-direct {p0}, Lcom/android/server/wifioffload/WifiOffloadService;->buildTable()Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mDependentPackagesTable:Ljava/util/HashMap;

    .line 156
    invoke-static {}, Lcom/android/server/wifioffload/WifiOffloadService$WifiOffloadLogStats;->initStats()V

    .line 157
    return-void

    :cond_0
    move v2, v4

    .line 136
    goto :goto_0

    :cond_1
    move v2, v4

    .line 139
    goto :goto_1

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "WifiOffloadServiceNew"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in reading setting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/server/wifioffload/WifiOffloadService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifioffload/WifiOffloadService;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wifioffload/WifiOffloadService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifioffload/WifiOffloadService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/server/wifioffload/WifiOffloadService;->checkWifiOffloadConditions(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/wifioffload/WifiOffloadService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifioffload/WifiOffloadService;

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mShowWifiPopupEnabled:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/wifioffload/WifiOffloadService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifioffload/WifiOffloadService;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mShowWifiPopupEnabled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/wifioffload/WifiOffloadService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifioffload/WifiOffloadService;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/server/wifioffload/WifiOffloadService;->startWifiOffloadActivity()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/wifioffload/WifiOffloadService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifioffload/WifiOffloadService;

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiEnabled:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/wifioffload/WifiOffloadService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifioffload/WifiOffloadService;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiEnabled:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/server/wifioffload/WifiOffloadService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifioffload/WifiOffloadService;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->isTimerRunning:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/server/wifioffload/WifiOffloadService;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifioffload/WifiOffloadService;
    .param p1, "x1"    # J

    .prologue
    .line 79
    iput-wide p1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mLatestWifiScanTime:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/android/server/wifioffload/WifiOffloadService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifioffload/WifiOffloadService;

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiConnectedToAP:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/wifioffload/WifiOffloadService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifioffload/WifiOffloadService;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiConnectedToAP:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/wifioffload/WifiOffloadService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifioffload/WifiOffloadService;

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mMobileHotSpotEnabled:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/wifioffload/WifiOffloadService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifioffload/WifiOffloadService;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mMobileHotSpotEnabled:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/wifioffload/WifiOffloadService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifioffload/WifiOffloadService;

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAirPlaneModeEnabled:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/wifioffload/WifiOffloadService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifioffload/WifiOffloadService;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAirPlaneModeEnabled:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/wifioffload/WifiOffloadService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifioffload/WifiOffloadService;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addDumpLogs(Ljava/lang/String;)V
    .locals 3
    .param p1, "logs"    # Ljava/lang/String;

    .prologue
    .line 804
    iget-object v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiOffloadLog:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 805
    return-void
.end method

.method private areAllPreConditionsPassed()Z
    .locals 1

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiConnectedToAP:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mMobileHotSpotEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAirPlaneModeEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mShowWifiPopupEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/wifioffload/WifiOffloadService;->getCurrentLocation()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/wifioffload/WifiOffloadService;->isTimerRunning(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private buildTable()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 645
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 650
    .local v1, "localMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 652
    .local v0, "dependentPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040b66

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 656
    iget-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040b67

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    return-object v1
.end method

.method private calculateDataUsageforInterface(ILjava/lang/String;Landroid/net/NetworkTemplate;)J
    .locals 10
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "interfaceTemplate"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 328
    invoke-direct {p0, p1, p3}, Lcom/android/server/wifioffload/WifiOffloadService;->getDataUsageForUid(ILandroid/net/NetworkTemplate;)J

    move-result-wide v2

    .line 330
    .local v2, "dataUsage":J
    invoke-direct {p0, p2}, Lcom/android/server/wifioffload/WifiOffloadService;->getListOfDependentPackageNamesForDataUsage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 331
    .local v6, "listOfPackagesForDataUsage":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 336
    .local v0, "currentPackage":Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/16 v8, 0x80

    invoke-virtual {v7, v0, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v1, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 339
    .local v1, "currentPackageUid":I
    invoke-direct {p0, v1, p3}, Lcom/android/server/wifioffload/WifiOffloadService;->getDataUsageForUid(ILandroid/net/NetworkTemplate;)J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v7

    add-long/2addr v2, v7

    goto :goto_0

    .line 342
    .end local v1    # "currentPackageUid":I
    :catch_0
    move-exception v4

    .line 343
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "WifiOffloadServiceNew"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": Tried to check data usage"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " for dependencies but failed to find package. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 347
    .end local v0    # "currentPackage":Ljava/lang/String;
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    return-wide v2
.end method

.method private checkNetworksAndShowAPDialog()V
    .locals 5

    .prologue
    .line 487
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 489
    iget-object v1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 490
    .local v0, "lastScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 491
    :cond_0
    const-string v1, "WifiOffloadServiceNew"

    const-string v2, "No networks. Start scanning."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget-object v1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->startScan()Z

    .line 505
    .end local v0    # "lastScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_1
    :goto_0
    return-void

    .line 499
    .restart local v0    # "lastScanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_2
    const-string v1, "WifiOffloadServiceNew"

    const-string v2, "Calling startactivity to show AP dialog"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    iget-object v1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mMessageHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    const-wide/16 v3, 0x2bc

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 503
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mIsWifiOffloadDialogIntentSent:Z

    goto :goto_0
.end method

.method private checkWifiOffloadConditions(Ljava/lang/String;)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 432
    iput-boolean v8, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mIsWifiOffloadDialogIntentSent:Z

    .line 433
    iput v8, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAppLaunchCount:I

    .line 434
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy-MM-dd hh:mm:ss"

    invoke-direct {v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 435
    .local v3, "sdf":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 436
    .local v0, "cal":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 437
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "time="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 438
    .local v4, "time":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/server/wifioffload/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    .line 439
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "package="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifioffload/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    .line 441
    invoke-direct {p0, p1}, Lcom/android/server/wifioffload/WifiOffloadService;->isAppBlackListed(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 442
    const-string v5, "WifiOffloadServiceNew"

    const-string v6, "App is blacklisted"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_0
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dialogInvoked="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mIsWifiOffloadDialogIntentSent:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifioffload/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    .line 480
    iget-object v5, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiOffloadLog:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wifioffload/WifiOffloadService$WifiOffloadLogStats;->logStats(Ljava/lang/String;)V

    .line 481
    iget-object v5, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiOffloadLog:Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiOffloadLog:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v5, v8, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 482
    return-void

    .line 443
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wifioffload/WifiOffloadService;->areAllPreConditionsPassed()Z

    move-result v5

    if-nez v5, :cond_3

    .line 444
    const-string v5, "WifiOffloadServiceNew"

    const-string v6, "One of the preconditions failed"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    const-string v5, "WifiOffloadServiceNew"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "wifiEnabled="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " wifiConnected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiConnectedToAP:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mobileHotspot="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mMobileHotSpotEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " airPlaneMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAirPlaneModeEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " showWifiPopup="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mShowWifiPopupEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " TimerRunning = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/wifioffload/WifiOffloadService;->isTimerRunning:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-direct {p0, p1}, Lcom/android/server/wifioffload/WifiOffloadService;->getAppLaunchCount(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    .line 458
    invoke-direct {p0, p1}, Lcom/android/server/wifioffload/WifiOffloadService;->insertDataUsage(Ljava/lang/String;)V

    .line 463
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "wifiEnabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifioffload/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    .line 464
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "wifiConnected="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiConnectedToAP:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifioffload/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    .line 465
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mobileHotspot="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mMobileHotSpotEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifioffload/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    .line 466
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "airPlaneMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAirPlaneModeEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifioffload/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    .line 467
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "showWifiPopup="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mShowWifiPopupEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wifioffload/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 460
    :cond_2
    iget v5, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAppLaunchCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAppLaunchCount:I

    invoke-direct {p0, p1, v5}, Lcom/android/server/wifioffload/WifiOffloadService;->updateAppLaunchCount(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 469
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/wifioffload/WifiOffloadService;->isAppDataUsageLimitExceeded(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 470
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 471
    .local v1, "originalId":J
    iget-boolean v5, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiEnabled:Z

    if-eqz v5, :cond_4

    .line 472
    const-string v5, "WifiOffloadServiceNew"

    const-string/jumbo v6, "wifiOffloadFlow : Setting flag to show dialog"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-direct {p0}, Lcom/android/server/wifioffload/WifiOffloadService;->checkNetworksAndShowAPDialog()V

    .line 475
    :cond_4
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0
.end method

.method private static getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 766
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 768
    .local v0, "telephony":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 769
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 771
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getAppLaunchCount(Ljava/lang/String;)I
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 303
    const/4 v7, 0x0

    .line 305
    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mDBHelper:Lcom/android/server/wifioffload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiOffloadDB:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "packagename = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "app_datausage"

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wifioffload/WifiOffloadDB;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 309
    if-eqz v7, :cond_0

    .line 310
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    const-string v0, "launchcount"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAppLaunchCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    :cond_0
    if-eqz v7, :cond_1

    .line 317
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 320
    :cond_1
    const-string v0, "WifiOffloadServiceNew"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launch count in DB: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAppLaunchCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "launchCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAppLaunchCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifioffload/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    .line 322
    iget v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAppLaunchCount:I

    return v0

    .line 316
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    .line 317
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 316
    :cond_2
    throw v0
.end method

.method private getCurrentLocation()I
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v8, -0x1

    .line 545
    const/4 v0, -0x1

    .line 546
    .local v0, "baseStation":I
    iget-object v9, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v10, "phone"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 549
    .local v7, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-boolean v9, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mIsTablet:Z

    if-eqz v9, :cond_1

    .line 556
    :try_start_0
    const-string v9, "phone"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/internal/telephony/ITelephony;->getCellLocation()Landroid/os/Bundle;

    move-result-object v1

    .line 559
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 560
    const-string v9, "baseStationId"

    invoke-virtual {v1, v9, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 561
    if-ne v0, v8, :cond_0

    .line 562
    const-string v8, "WifiOffloadServiceNew"

    const-string v9, "baseStation is -1, so try reading cellid "

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    const-string v8, "cid"

    invoke-virtual {v1, v8, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 564
    const-string v8, "WifiOffloadServiceNew"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CellId == "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    move v8, v0

    .line 596
    :goto_1
    return v8

    .line 567
    :catch_0
    move-exception v4

    .line 568
    .local v4, "ex":Landroid/os/RemoteException;
    const-string v8, "WifiOffloadServiceNew"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception in reading bundle "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 571
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_1
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v3

    .line 572
    .local v3, "cellLocation":Landroid/telephony/CellLocation;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v6

    .line 573
    .local v6, "phoneType":I
    const-string v9, "WifiOffloadServiceNew"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Phone type is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    const/4 v9, 0x2

    if-ne v6, v9, :cond_2

    .line 576
    instance-of v8, v3, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v8, :cond_0

    move-object v2, v3

    .line 577
    check-cast v2, Landroid/telephony/cdma/CdmaCellLocation;

    .line 578
    .local v2, "cdmalocation":Landroid/telephony/cdma/CdmaCellLocation;
    if-eqz v2, :cond_0

    .line 579
    invoke-virtual {v2}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    goto :goto_0

    .line 582
    .end local v2    # "cdmalocation":Landroid/telephony/cdma/CdmaCellLocation;
    :cond_2
    if-ne v6, v12, :cond_0

    .line 583
    instance-of v9, v3, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v9, :cond_0

    move-object v5, v3

    .line 584
    check-cast v5, Landroid/telephony/gsm/GsmCellLocation;

    .line 585
    .local v5, "gsmLocation":Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v5, :cond_3

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v9

    if-ne v9, v12, :cond_4

    .line 587
    :cond_3
    const-string v9, "WifiOffloadServiceNew"

    const-string v10, "GSM location is null or Sim state is absent"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 591
    :cond_4
    invoke-virtual {v5}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    goto :goto_0
.end method

.method private getDataUsageForUid(ILandroid/net/NetworkTemplate;)J
    .locals 13
    .param p1, "appUid"    # I
    .param p2, "statsTemplate"    # Landroid/net/NetworkTemplate;

    .prologue
    .line 352
    const/4 v9, 0x0

    .line 353
    .local v9, "history":Landroid/net/NetworkStatsHistory;
    const/4 v0, 0x0

    .line 358
    .local v0, "statsSession":Landroid/net/INetworkStatsSession;
    :try_start_0
    const-string v2, "netstats"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v10

    .line 361
    .local v10, "statsService":Landroid/net/INetworkStatsService;
    if-eqz v10, :cond_0

    .line 362
    invoke-interface {v10}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v0

    .line 364
    :cond_0
    if-eqz v0, :cond_2

    .line 365
    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v1, p2

    move v2, p1

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsSession;->getHistoryForUid(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 376
    .end local v9    # "history":Landroid/net/NetworkStatsHistory;
    .end local v10    # "statsService":Landroid/net/INetworkStatsService;
    .local v1, "history":Landroid/net/NetworkStatsHistory;
    :goto_0
    if-eqz v0, :cond_1

    .line 377
    :try_start_1
    invoke-interface {v0}, Landroid/net/INetworkStatsSession;->close()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 383
    :cond_1
    :goto_1
    if-eqz v1, :cond_3

    .line 384
    const-wide/high16 v2, -0x8000000000000000L

    const-wide v4, 0x7fffffffffffffffL

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/net/NetworkStatsHistory;->getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v8

    .line 386
    .local v8, "entry":Landroid/net/NetworkStatsHistory$Entry;
    if-eqz v8, :cond_3

    .line 387
    const-string v2, "WifiOffloadServiceNew"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DataUsage for app with uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v8, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v11, v8, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v4, v11

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget-wide v2, v8, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v4, v8, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v2, v4

    .line 392
    .end local v8    # "entry":Landroid/net/NetworkStatsHistory$Entry;
    :goto_2
    return-wide v2

    .line 369
    .end local v1    # "history":Landroid/net/NetworkStatsHistory;
    .restart local v9    # "history":Landroid/net/NetworkStatsHistory;
    :catch_0
    move-exception v7

    .line 370
    .local v7, "e":Ljava/lang/OutOfMemoryError;
    const-string v2, "WifiOffloadServiceNew"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OutOfMemoryError in getting UID history "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v9

    .line 373
    .end local v9    # "history":Landroid/net/NetworkStatsHistory;
    .restart local v1    # "history":Landroid/net/NetworkStatsHistory;
    goto :goto_0

    .line 371
    .end local v1    # "history":Landroid/net/NetworkStatsHistory;
    .end local v7    # "e":Ljava/lang/OutOfMemoryError;
    .restart local v9    # "history":Landroid/net/NetworkStatsHistory;
    :catch_1
    move-exception v7

    .line 372
    .local v7, "e":Landroid/os/RemoteException;
    const-string v2, "WifiOffloadServiceNew"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get history for uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_2
    move-object v1, v9

    .end local v9    # "history":Landroid/net/NetworkStatsHistory;
    .restart local v1    # "history":Landroid/net/NetworkStatsHistory;
    goto :goto_0

    .line 379
    :catch_2
    move-exception v7

    .line 380
    .restart local v7    # "e":Landroid/os/RemoteException;
    const-string v2, "WifiOffloadServiceNew"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ex in closing statsSession "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 392
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_3
    const-wide/16 v2, 0x0

    goto :goto_2
.end method

.method private getListOfDependentPackageNamesForDataUsage(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 672
    iget-object v1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mDependentPackagesTable:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 673
    .local v0, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .end local v0    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    return-object v0
.end method

.method private insertDataUsage(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 396
    const-string v1, "WifiOffloadServiceNew"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insertDataUsage for pkg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 399
    .local v0, "cvalues":Landroid/content/ContentValues;
    const-string v1, "packagename"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    const-string v1, "launchcount"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 401
    iget-object v1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mDBHelper:Lcom/android/server/wifioffload/WifiOffloadDB;

    iget-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiOffloadDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "app_datausage"

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/server/wifioffload/WifiOffloadDB;->insert(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 403
    return-void
.end method

.method private isAppBlackListed(Ljava/lang/String;)Z
    .locals 8
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 184
    iget-object v6, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x107000a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 186
    .local v2, "blackListedApps":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 187
    .local v4, "isAppinBlackList":Z
    move-object v1, v2

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v0, v1, v3

    .line 188
    .local v0, "app":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 189
    const/4 v4, 0x1

    .line 193
    .end local v0    # "app":Ljava/lang/String;
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "blacklist="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/wifioffload/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    .line 194
    return v4

    .line 187
    .restart local v0    # "app":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private isAppDataUsageLimitExceeded(Ljava/lang/String;)Z
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    const/4 v8, 0x0

    .line 224
    const/4 v0, 0x0

    .line 225
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v7, -0x1

    .line 226
    .local v7, "uid":I
    const/4 v1, 0x0

    .line 227
    .local v1, "dataUsageThreshold":I
    iput-boolean v8, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mDataUsageLimitCrossed:Z

    .line 230
    :try_start_0
    iget-object v9, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const/16 v10, 0x80

    invoke-virtual {v9, p1, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 232
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 233
    const-string v9, "WifiOffloadServiceNew"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "APP UID == "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    invoke-direct {p0, p1}, Lcom/android/server/wifioffload/WifiOffloadService;->getAppLaunchCount(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_0

    .line 242
    invoke-direct {p0, p1}, Lcom/android/server/wifioffload/WifiOffloadService;->insertDataUsage(Ljava/lang/String;)V

    .line 243
    const-string v9, "WifiOffloadServiceNew"

    const-string v10, "App lauched for the first time, so dont offload but insert the pkgname to DB"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :goto_0
    return v8

    .line 234
    :catch_0
    move-exception v2

    .line 235
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v9, "WifiOffloadServiceNew"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception in getting uid "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 252
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const/high16 v8, 0x100000

    const-string v9, "app.offload.datausage.limit"

    invoke-static {v9, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    mul-int v1, v8, v9

    .line 255
    const-string v8, "WifiOffloadServiceNew"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DATA_USAGE_THRESHOLD = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " bytes"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 259
    .local v3, "originalId":J
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v8

    invoke-direct {p0, v7, p1, v8}, Lcom/android/server/wifioffload/WifiOffloadService;->calculateDataUsageforInterface(ILjava/lang/String;Landroid/net/NetworkTemplate;)J

    move-result-wide v5

    .line 261
    .local v5, "totalDataUsage":J
    const-string v8, "WifiOffloadServiceNew"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Data Usage for Wi-fi Interface :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\n     wifiUsage: total="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " perLaunch="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAppLaunchCount:I

    int-to-long v9, v9

    div-long v9, v5, v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/wifioffload/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    .line 264
    const-string v8, "WifiOffloadServiceNew"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Data Usage per launch count = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAppLaunchCount:I

    int-to-long v10, v10

    div-long v10, v5, v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget v8, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAppLaunchCount:I

    int-to-long v8, v8

    div-long v8, v5, v8

    int-to-long v10, v1

    cmp-long v8, v8, v10

    if-ltz v8, :cond_2

    .line 268
    const-string v8, "WifiOffloadServiceNew"

    const-string v9, "App\'s datausage exceeds the threshold so Offload"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iput-boolean v12, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mDataUsageLimitCrossed:Z

    .line 270
    const-string v8, "\n"

    invoke-direct {p0, v8}, Lcom/android/server/wifioffload/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    .line 292
    :cond_1
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 293
    iget v8, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAppLaunchCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAppLaunchCount:I

    invoke-direct {p0, p1, v8}, Lcom/android/server/wifioffload/WifiOffloadService;->updateAppLaunchCount(Ljava/lang/String;I)V

    .line 295
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    dataUsageExceeded="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mDataUsageLimitCrossed:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/wifioffload/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    .line 296
    const-string v8, "WifiOffloadServiceNew"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mDataUsageLimitCrossed ? "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mDataUsageLimitCrossed:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-boolean v8, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mDataUsageLimitCrossed:Z

    goto/16 :goto_0

    .line 272
    :cond_2
    const-string v8, "WifiOffloadServiceNew"

    const-string v9, "Data Usage does not reach threshold yet"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v8, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/server/wifioffload/WifiOffloadService;->getActiveSubscriberId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v8

    invoke-direct {p0, v7, p1, v8}, Lcom/android/server/wifioffload/WifiOffloadService;->calculateDataUsageforInterface(ILjava/lang/String;Landroid/net/NetworkTemplate;)J

    move-result-wide v8

    add-long/2addr v5, v8

    .line 280
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "wifiAndMobileUsage: total="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " perLaunch="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAppLaunchCount:I

    int-to-long v9, v9

    div-long v9, v5, v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/wifioffload/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    .line 282
    const-string v8, "WifiOffloadServiceNew"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Data Usage for Wi-Fi + Mobile Interface :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const-string v8, "WifiOffloadServiceNew"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Data Usage per launch count = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAppLaunchCount:I

    int-to-long v10, v10

    div-long v10, v5, v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget v8, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mAppLaunchCount:I

    int-to-long v8, v8

    div-long v8, v5, v8

    int-to-long v10, v1

    cmp-long v8, v8, v10

    if-ltz v8, :cond_1

    .line 288
    const-string v8, "WifiOffloadServiceNew"

    const-string v9, "DataUsage exceeds the threshold"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iput-boolean v12, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mDataUsageLimitCrossed:Z

    goto/16 :goto_1
.end method

.method private isAppInBackground(Ljava/lang/String;)Z
    .locals 11
    .param p1, "processName"    # Ljava/lang/String;

    .prologue
    .line 160
    iget-object v8, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v9, "activity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 162
    .local v3, "manager":Landroid/app/ActivityManager;
    const/4 v2, 0x0

    .line 163
    .local v2, "isAppinBg":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 165
    .local v4, "originalId":J
    const/16 v8, 0x1f4

    :try_start_0
    invoke-virtual {v3, v8}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v7

    .line 167
    .local v7, "runningTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 168
    .local v6, "process":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v6, :cond_0

    iget-object v8, v6, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_0

    .line 171
    const/4 v2, 0x1

    .line 178
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v6    # "process":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v7    # "runningTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_1
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 179
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "appinbg="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/server/wifioffload/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    .line 180
    return v2

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v8, "WifiOffloadServiceNew"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SecurityException while checking isProcessRunning "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isTablet()Z
    .locals 2

    .prologue
    .line 758
    const-string/jumbo v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 759
    .local v0, "mDeviceType":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isTimerRunning(I)Z
    .locals 4
    .param p1, "currentLocation"    # I

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->isTimerRunning:Z

    if-eqz v0, :cond_1

    .line 209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mStartTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x2932e00

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->locationId:I

    if-eq p1, v0, :cond_1

    .line 210
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->isTimerRunning:Z

    .line 213
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "12hrstimer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->isTimerRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifioffload/WifiOffloadService;->addDumpLogs(Ljava/lang/String;)V

    .line 214
    iget-boolean v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->isTimerRunning:Z

    return v0
.end method

.method private startWifiOffloadActivity()V
    .locals 3

    .prologue
    .line 508
    const-string v1, "WifiOffloadServiceNew"

    const-string/jumbo v2, "startWifiOffloadActivity () "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.wifioffload.WIFI_OFFLOAD_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 511
    .local v0, "startWifiDialogIntent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 521
    const-string v1, "android.intent.extra.REQUEST_WINDOW_MODE"

    const/high16 v2, 0x1000000

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 523
    iget-object v1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 524
    return-void
.end method

.method private updateAppLaunchCount(Ljava/lang/String;I)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "currentLaunchCount"    # I

    .prologue
    .line 406
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 407
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v0, "launchcount"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 408
    iget-object v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mDBHelper:Lcom/android/server/wifioffload/WifiOffloadDB;

    iget-object v1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mWifiOffloadDB:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "packagename = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "app_datausage"

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wifioffload/WifiOffloadDB;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    return-void
.end method


# virtual methods
.method public checkAppForWiFiOffloading(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 414
    iput-object p1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mPackageName:Ljava/lang/String;

    .line 415
    const-string v0, "WifiOffloadServiceNew"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-direct {p0, p1}, Lcom/android/server/wifioffload/WifiOffloadService;->isAppInBackground(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    const-string v0, "WifiOffloadServiceNew"

    const-string v1, "app is in BG, so return here"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :goto_0
    return-void

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mMessageHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 422
    const-string v0, "WifiOffloadServiceNew"

    const-string v1, "Sending Message"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    iget-object v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mMessageHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mMessageHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    iget-object v3, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 427
    :cond_1
    const-string v0, "WifiOffloadServiceNew"

    const-string v1, "WifiOffloadFlow returned"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public checkAppNeedsMoveToFront(I)V
    .locals 5
    .param p1, "taskID"    # I

    .prologue
    .line 623
    const-string v2, "WifiOffloadServiceNew"

    const-string v3, "Move task to front..!!"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 626
    .local v1, "manager":Landroid/app/IActivityManager;
    const/4 v2, 0x2

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v1, p1, v2, v3}, Landroid/app/IActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 631
    :goto_0
    return-void

    .line 628
    :catch_0
    move-exception v0

    .line 629
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WifiOffloadServiceNew"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SecurityException move task to front "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 809
    const-string v0, "WifiOffloadServiceNew"

    const-string v1, "dump started"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    const-string v0, "WifiOffloadServiceNew"

    const-string v1, "check if the caller has DUMP permission"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    iget-object v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 813
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump WifiOffloadService from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 826
    :goto_0
    return-void

    .line 820
    :cond_0
    const-string v0, "WifiOffloadService"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 823
    invoke-static {p2}, Lcom/android/server/wifioffload/WifiOffloadService$WifiOffloadLogStats;->dumpStats(Ljava/io/PrintWriter;)V

    .line 825
    const-string v0, "WifiOffloadServiceNew"

    const-string v1, "dump finished"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getLastPkgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getLatestWifiScanTime()J
    .locals 2

    .prologue
    .line 615
    iget-wide v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mLatestWifiScanTime:J

    return-wide v0
.end method

.method public startTimer()V
    .locals 2

    .prologue
    .line 604
    const-string v0, "WifiOffloadServiceNew"

    const-string v1, "12hrs Timer started "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    invoke-direct {p0}, Lcom/android/server/wifioffload/WifiOffloadService;->getCurrentLocation()I

    move-result v0

    iput v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->locationId:I

    .line 606
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->mStartTime:J

    .line 607
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifioffload/WifiOffloadService;->isTimerRunning:Z

    .line 608
    return-void
.end method