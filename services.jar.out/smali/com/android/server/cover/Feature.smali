.class final Lcom/android/server/cover/Feature;
.super Ljava/lang/Object;
.source "Feature.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final FEATURE_SVIEW_COVER_TEST_MODE:Ljava/lang/String; = "com.sec.feature.cover.sview.testmode"

.field private static final FEATURE_SVIEW_WALLET_COVER_TEST_MODE:Ljava/lang/String; = "com.sec.feature.cover.sview.wallet.testmode"

.field private static final SAFE_DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "CoverManager.Feature"

.field private static sDeviceTypeProperty:Ljava/lang/String;

.field private static sHardwareProperty:Ljava/lang/String;

.field private static sInstance:Lcom/android/server/cover/Feature;

.field private static sIsDeviceSupportDetectCover:Z

.field private static sIsDeviceSupportQueried:Z

.field private static sIsDeviceSupportVerityCover:Z

.field private static sIsSupportFlipCover:Z

.field private static sIsSupportLEDCover:Z

.field private static sIsSupportLEDCoverLSI:Z

.field private static sIsSupportLEDCoverQCOM:Z

.field private static sIsSupportMiniSViewCoverTestMode:Z

.field private static sIsSupportSViewCover:Z

.field private static sIsSupportSViewCoverTestMode:Z

.field private static sIsSystemFeatureQueried:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 40
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Lcom/android/server/cover/Feature;->SAFE_DEBUG:Z

    .line 42
    sput-object v3, Lcom/android/server/cover/Feature;->sInstance:Lcom/android/server/cover/Feature;

    .line 44
    sput-boolean v1, Lcom/android/server/cover/Feature;->sIsSystemFeatureQueried:Z

    .line 45
    sput-boolean v1, Lcom/android/server/cover/Feature;->sIsSupportFlipCover:Z

    .line 46
    sput-boolean v1, Lcom/android/server/cover/Feature;->sIsSupportSViewCover:Z

    .line 47
    sput-boolean v1, Lcom/android/server/cover/Feature;->sIsSupportLEDCover:Z

    .line 48
    sput-boolean v1, Lcom/android/server/cover/Feature;->sIsSupportLEDCoverQCOM:Z

    .line 49
    sput-boolean v1, Lcom/android/server/cover/Feature;->sIsSupportLEDCoverLSI:Z

    .line 51
    sput-boolean v1, Lcom/android/server/cover/Feature;->sIsSupportSViewCoverTestMode:Z

    .line 52
    sput-boolean v1, Lcom/android/server/cover/Feature;->sIsSupportMiniSViewCoverTestMode:Z

    .line 54
    sput-boolean v1, Lcom/android/server/cover/Feature;->sIsDeviceSupportQueried:Z

    .line 55
    sput-boolean v1, Lcom/android/server/cover/Feature;->sIsDeviceSupportVerityCover:Z

    .line 56
    sput-boolean v1, Lcom/android/server/cover/Feature;->sIsDeviceSupportDetectCover:Z

    .line 58
    sput-object v3, Lcom/android/server/cover/Feature;->sHardwareProperty:Ljava/lang/String;

    .line 59
    sput-object v3, Lcom/android/server/cover/Feature;->sDeviceTypeProperty:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-direct {p0}, Lcom/android/server/cover/Feature;->getSystemProperties()V

    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/cover/Feature;->updateSystemFeature(Landroid/content/Context;)V

    .line 74
    invoke-direct {p0}, Lcom/android/server/cover/Feature;->updateDeviceSupportFeature()V

    .line 75
    return-void
.end method

.method static getInstance(Landroid/content/Context;)Lcom/android/server/cover/Feature;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    sget-object v0, Lcom/android/server/cover/Feature;->sInstance:Lcom/android/server/cover/Feature;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/android/server/cover/Feature;

    invoke-direct {v0, p0}, Lcom/android/server/cover/Feature;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/cover/Feature;->sInstance:Lcom/android/server/cover/Feature;

    .line 68
    :cond_0
    sget-object v0, Lcom/android/server/cover/Feature;->sInstance:Lcom/android/server/cover/Feature;

    return-object v0
.end method

.method private getSystemProperties()V
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/android/server/cover/Feature;->sHardwareProperty:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 104
    const-string/jumbo v0, "ro.hardware"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cover/Feature;->sHardwareProperty:Ljava/lang/String;

    .line 106
    :cond_0
    sget-object v0, Lcom/android/server/cover/Feature;->sDeviceTypeProperty:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 107
    const-string/jumbo v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cover/Feature;->sDeviceTypeProperty:Ljava/lang/String;

    .line 109
    :cond_1
    return-void
.end method

.method private updateDeviceSupportFeature()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 89
    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsDeviceSupportQueried:Z

    if-nez v0, :cond_2

    .line 90
    const-string v0, "/sys/devices/w1_bus_master1/w1_master_check_id"

    invoke-static {v0}, Lcom/android/server/cover/CoverManagerUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "/sys/devices/w1_bus_master1/w1_master_check_color"

    invoke-static {v0}, Lcom/android/server/cover/CoverManagerUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/server/cover/Feature;->sIsDeviceSupportVerityCover:Z

    .line 92
    sput-boolean v2, Lcom/android/server/cover/Feature;->sIsDeviceSupportDetectCover:Z

    .line 93
    const-string v0, "/sys/class/sec/expander/expgpio"

    invoke-static {v0}, Lcom/android/server/cover/CoverManagerUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/cover/Feature;->sIsSupportLEDCoverQCOM:Z

    .line 95
    const-string v0, "/sys/class/sec/ledcover/cover_pwr"

    invoke-static {v0}, Lcom/android/server/cover/CoverManagerUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/cover/Feature;->sIsSupportLEDCoverLSI:Z

    .line 97
    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsSupportLEDCoverQCOM:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsSupportLEDCoverLSI:Z

    if-eqz v0, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    sput-boolean v2, Lcom/android/server/cover/Feature;->sIsSupportLEDCover:Z

    .line 98
    sput-boolean v1, Lcom/android/server/cover/Feature;->sIsDeviceSupportQueried:Z

    .line 100
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 90
    goto :goto_0
.end method

.method private updateSystemFeature(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    sget-boolean v1, Lcom/android/server/cover/Feature;->sIsSystemFeatureQueried:Z

    if-nez v1, :cond_0

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 80
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "com.sec.feature.cover.flip"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/cover/Feature;->sIsSupportFlipCover:Z

    .line 81
    const-string v1, "com.sec.feature.cover.sview"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/cover/Feature;->sIsSupportSViewCover:Z

    .line 82
    const-string v1, "com.sec.feature.cover.sview.testmode"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/cover/Feature;->sIsSupportSViewCoverTestMode:Z

    .line 83
    const-string v1, "com.sec.feature.cover.sview.wallet.testmode"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/cover/Feature;->sIsSupportMiniSViewCoverTestMode:Z

    .line 84
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/cover/Feature;->sIsSystemFeatureQueried:Z

    .line 86
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    return-void
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 160
    const-string v0, " Current Feature state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 161
    const-string v0, "  sIsDeviceSupportVerityCover="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsDeviceSupportVerityCover:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 162
    const-string v0, "  sIsDeviceSupportDetectCover="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsDeviceSupportDetectCover:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 163
    const-string v0, "  sIsSupportFlipCover="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsSupportFlipCover:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 164
    const-string v0, "  sIsSupportSViewCover="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsSupportSViewCover:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 165
    const-string v0, "  sIsSupportLEDCover="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsSupportLEDCover:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 166
    const-string v0, "  sIsSupportLEDCoverQCOM="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsSupportLEDCoverQCOM:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 167
    const-string v0, "  sIsSupportLEDCoverLSI="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsSupportLEDCoverLSI:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 168
    const-string v0, "  isSViewCoverTestMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/cover/Feature;->isSViewCoverTestMode()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 169
    const-string v0, "  isMiniSViewCoverTestMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/cover/Feature;->isMiniSViewCoverTestMode()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 170
    const-string v0, "  "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method isChinaModel()Z
    .locals 2

    .prologue
    .line 156
    const-string v0, "CHN"

    const-string v1, "CHN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isMiniSViewCoverTestMode()Z
    .locals 1

    .prologue
    .line 144
    sget-boolean v0, Lcom/android/server/cover/Feature;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsSupportMiniSViewCoverTestMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isRuggedizedFeatureEnabled()Z
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method isSViewCoverTestMode()Z
    .locals 1

    .prologue
    .line 140
    sget-boolean v0, Lcom/android/server/cover/Feature;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsSupportSViewCoverTestMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isSupportDetectCover()Z
    .locals 1

    .prologue
    .line 116
    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsDeviceSupportDetectCover:Z

    return v0
.end method

.method isSupportFlipCover()Z
    .locals 1

    .prologue
    .line 120
    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsSupportFlipCover:Z

    return v0
.end method

.method isSupportLEDCover()Z
    .locals 1

    .prologue
    .line 136
    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsSupportLEDCover:Z

    return v0
.end method

.method isSupportLEDCoverLSI()Z
    .locals 1

    .prologue
    .line 132
    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsSupportLEDCoverLSI:Z

    return v0
.end method

.method isSupportLEDCoverQCOM()Z
    .locals 1

    .prologue
    .line 128
    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsSupportLEDCoverQCOM:Z

    return v0
.end method

.method isSupportSViewCover()Z
    .locals 1

    .prologue
    .line 124
    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsSupportSViewCover:Z

    return v0
.end method

.method isSupportVerifyCover()Z
    .locals 1

    .prologue
    .line 112
    sget-boolean v0, Lcom/android/server/cover/Feature;->sIsDeviceSupportVerityCover:Z

    return v0
.end method

.method isTablet()Z
    .locals 2

    .prologue
    .line 148
    sget-object v0, Lcom/android/server/cover/Feature;->sDeviceTypeProperty:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/cover/Feature;->sDeviceTypeProperty:Ljava/lang/String;

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
