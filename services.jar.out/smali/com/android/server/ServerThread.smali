.class Lcom/android/server/ServerThread;
.super Ljava/lang/Object;
.source "SystemServer.java"


# static fields
.field private static final DIR_ENCRYPTION:Z

.field public static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field public static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final is3LMAllowed:Z

.field private static final isRLLAllowed:Z


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 230
    const-string/jumbo v0, "ro.sec.fle.encryption"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ServerThread;->DIR_ENCRYPTION:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createServiceWithConstructor(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1, "serviceClassName"    # Ljava/lang/String;
    .param p2, "ptype"    # [Ljava/lang/Class;
    .param p3, "objArray"    # [Ljava/lang/Object;

    .prologue
    .line 2271
    const/4 v5, 0x0

    .line 2272
    .local v5, "object":Ljava/lang/Object;
    const-string v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "registerService service: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2274
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2275
    .local v0, "c":Ljava/lang/Class;
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 2276
    .local v1, "cons":Ljava/lang/reflect/Constructor;
    invoke-virtual {v1, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v5

    .line 2284
    .end local v0    # "c":Ljava/lang/Class;
    .end local v1    # "cons":Ljava/lang/reflect/Constructor;
    .end local v5    # "object":Ljava/lang/Object;
    :goto_0
    return-object v5

    .line 2277
    .restart local v5    # "object":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 2278
    .local v3, "iae":Ljava/lang/IllegalAccessException;
    const-string v6, "SystemServer"

    const-string v7, "Got expected PackageAccess complaint"

    invoke-static {v6, v7, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2279
    .end local v3    # "iae":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v4

    .line 2280
    .local v4, "ie":Ljava/lang/InstantiationError;
    const-string v6, "SystemServer"

    const-string v7, "Got expected InstantationError"

    invoke-static {v6, v7, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2281
    .end local v4    # "ie":Ljava/lang/InstantiationError;
    :catch_2
    move-exception v2

    .line 2282
    .local v2, "ex":Ljava/lang/Exception;
    const-string v6, "SystemServer"

    const-string v7, "Got unexpected MaybeAbstract failure"

    invoke-static {v6, v7, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static final startDpmService(Landroid/content/Context;Lcom/android/server/ConnectivityService;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "connectivity"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 2215
    const/4 v4, 0x0

    .line 2216
    .local v4, "dpmObj":Ljava/lang/Object;
    :try_start_0
    const-string v6, "persist.dpm.feature"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 2217
    .local v3, "dpmFeature":I
    const-string v6, "SystemServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DPM configuration set to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2219
    if-lez v3, :cond_0

    const/16 v6, 0x8

    if-ge v3, v6, :cond_0

    .line 2220
    new-instance v1, Ldalvik/system/PathClassLoader;

    const-string v6, "/system/framework/com.qti.dpmframework.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 2223
    .local v1, "dpmClassLoader":Ldalvik/system/PathClassLoader;
    const-string v6, "com.qti.dpm.DpmService"

    invoke-virtual {v1, v6}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2224
    .local v0, "dpmClass":Ljava/lang/Class;
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Lcom/android/server/ConnectivityService;

    aput-object v8, v6, v7

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 2226
    .local v2, "dpmConstructor":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 2228
    if-eqz v4, :cond_0

    :try_start_1
    instance-of v6, v4, Landroid/os/IBinder;

    if-eqz v6, :cond_0

    .line 2229
    const-string v6, "dpmservice"

    check-cast v4, Landroid/os/IBinder;

    .end local v4    # "dpmObj":Ljava/lang/Object;
    invoke-static {v6, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2230
    const-string v6, "SystemServer"

    const-string v7, "Created DPM Service"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 2239
    .end local v0    # "dpmClass":Ljava/lang/Class;
    .end local v1    # "dpmClassLoader":Ldalvik/system/PathClassLoader;
    .end local v2    # "dpmConstructor":Ljava/lang/reflect/Constructor;
    .end local v3    # "dpmFeature":I
    :cond_0
    :goto_0
    return-void

    .line 2232
    .restart local v0    # "dpmClass":Ljava/lang/Class;
    .restart local v1    # "dpmClassLoader":Ldalvik/system/PathClassLoader;
    .restart local v2    # "dpmConstructor":Ljava/lang/reflect/Constructor;
    .restart local v3    # "dpmFeature":I
    :catch_0
    move-exception v5

    .line 2233
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v6, "SystemServer"

    const-string/jumbo v7, "starting DPM Service"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 2236
    .end local v0    # "dpmClass":Ljava/lang/Class;
    .end local v1    # "dpmClassLoader":Ldalvik/system/PathClassLoader;
    .end local v2    # "dpmConstructor":Ljava/lang/reflect/Constructor;
    .end local v3    # "dpmFeature":I
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    .line 2237
    .local v5, "e":Ljava/lang/Throwable;
    const-string v6, "SystemServer"

    const-string/jumbo v7, "starting DPM Service"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static final startEmergencyModeService(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2262
    :try_start_0
    invoke-static {p0}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v1

    .line 2263
    .local v1, "emMgr":Lcom/sec/android/emergencymode/EmergencyManager;
    invoke-virtual {v1}, Lcom/sec/android/emergencymode/EmergencyManager;->readyEmergencyMode()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2268
    .end local v1    # "emMgr":Lcom/sec/android/emergencymode/EmergencyManager;
    :goto_0
    return-void

    .line 2264
    :catch_0
    move-exception v0

    .line 2265
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SystemServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting emergency service failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static final startFingerprintService(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2243
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 2244
    .local v2, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockFingerprintEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2257
    :goto_0
    return-void

    .line 2248
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2249
    .local v1, "intent":Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.samsung.android.fingerprint.service"

    const-string v5, "com.samsung.android.fingerprint.service.FingerprintServiceStarter"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2251
    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2253
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 2254
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "SystemServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting fingerprint service failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2206
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2207
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2210
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 2211
    return-void
.end method


# virtual methods
.method public initAndLoop()V
    .locals 242

    .prologue
    .line 238
    const-string v7, "SystemServer"

    const-string v9, "!@Boot: Start initAndLoop"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const/16 v7, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-static {v7, v9, v10}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 242
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 245
    const/16 v7, -0x13

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 250
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 251
    const/4 v7, 0x0

    invoke-static {v7}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 255
    const-string/jumbo v7, "sys.shutdown.requested"

    const-string v9, ""

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v204

    .line 257
    .local v204, "shutdownAction":Ljava/lang/String;
    if-eqz v204, :cond_0

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 258
    const/4 v7, 0x0

    move-object/from16 v0, v204

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v9, 0x31

    if-ne v7, v9, :cond_1

    const/16 v194, 0x1

    .line 261
    .local v194, "reboot":Z
    :goto_0
    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v9, 0x1

    if-le v7, v9, :cond_2

    .line 262
    const/4 v7, 0x1

    invoke-virtual/range {v204 .. v204}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v204

    invoke-virtual {v0, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v193

    .line 267
    .local v193, "reason":Ljava/lang/String;
    :goto_1
    move/from16 v0, v194

    move-object/from16 v1, v193

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 271
    .end local v193    # "reason":Ljava/lang/String;
    .end local v194    # "reboot":Z
    :cond_0
    const-string/jumbo v7, "ro.factorytest"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v139

    .line 272
    .local v139, "factoryTestStr":Ljava/lang/String;
    const-string v7, ""

    move-object/from16 v0, v139

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v138, 0x0

    .line 274
    .local v138, "factoryTest":I
    :goto_2
    const-string v7, "1"

    const-string/jumbo v9, "ro.config.headless"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    .line 276
    .local v33, "headless":Z
    const/16 v150, 0x0

    .line 277
    .local v150, "installer":Lcom/android/server/pm/Installer;
    const/16 v70, 0x0

    .line 278
    .local v70, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    const/16 v101, 0x0

    .line 279
    .local v101, "contentService":Lcom/android/server/content/ContentService;
    const/16 v155, 0x0

    .line 280
    .local v155, "lights":Lcom/android/server/LightsService;
    const/4 v4, 0x0

    .line 281
    .local v4, "power":Lcom/android/server/power/PowerManagerService;
    const/16 v126, 0x0

    .line 282
    .local v126, "display":Lcom/android/server/display/DisplayManagerService;
    const/16 v80, 0x0

    .line 283
    .local v80, "battery":Lcom/android/server/BatteryService;
    const/16 v228, 0x0

    .line 284
    .local v228, "vibrator":Lcom/android/server/VibratorService;
    const/16 v72, 0x0

    .line 285
    .local v72, "alarm":Lcom/android/server/AlarmManagerService;
    const/16 v169, 0x0

    .line 286
    .local v169, "mountService":Lcom/android/server/MountService;
    const/16 v199, 0x0

    .line 287
    .local v199, "sdpService":Lcom/android/server/SdpManagerService;
    const/16 v30, 0x0

    .line 288
    .local v30, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/16 v29, 0x0

    .line 289
    .local v29, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/16 v176, 0x0

    .line 290
    .local v176, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v93, 0x0

    .line 291
    .local v93, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v89, 0x0

    .line 292
    .local v89, "cneObj":Ljava/lang/Object;
    const/16 v238, 0x0

    .line 293
    .local v238, "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    const/16 v235, 0x0

    .line 296
    .local v235, "wifi":Lcom/android/server/wifi/WifiService;
    const/16 v127, 0x0

    .line 299
    .local v127, "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    const/16 v237, 0x0

    .line 301
    .local v237, "wifiOffloadService":Lcom/android/server/wifioffload/WifiOffloadService;
    const/16 v203, 0x0

    .line 302
    .local v203, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v186, 0x0

    .line 303
    .local v186, "pm":Landroid/content/pm/IPackageManager;
    const/4 v5, 0x0

    .line 304
    .local v5, "context":Landroid/content/Context;
    const/16 v240, 0x0

    .line 305
    .local v240, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v81, 0x0

    .line 306
    .local v81, "bluetooth":Lcom/android/server/BluetoothManagerService;
    const/16 v129, 0x0

    .line 307
    .local v129, "dock":Lcom/android/server/DockObserver;
    const/16 v225, 0x0

    .line 308
    .local v225, "usb":Lcom/android/server/usb/UsbService;
    const/16 v201, 0x0

    .line 309
    .local v201, "serial":Lcom/android/server/SerialService;
    const/16 v221, 0x0

    .line 310
    .local v221, "twilight":Lcom/android/server/TwilightService;
    const/16 v223, 0x0

    .line 311
    .local v223, "uiMode":Lcom/android/server/UiModeManagerService;
    const/16 v195, 0x0

    .line 312
    .local v195, "recognition":Lcom/android/server/RecognitionManagerService;
    const/16 v178, 0x0

    .line 313
    .local v178, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/16 v90, 0x0

    .line 314
    .local v90, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    const/16 v149, 0x0

    .line 315
    .local v149, "inputManager":Lcom/android/server/input/InputManagerService;
    const/16 v211, 0x0

    .line 316
    .local v211, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/16 v173, 0x0

    .line 317
    .local v173, "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    const/16 v97, 0x0

    .line 319
    .local v97, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/16 v107, 0x0

    .line 321
    .local v107, "dEncService":Lcom/android/server/DirEncryptService;
    const/16 v109, 0x0

    .line 323
    .local v109, "dLSManager":Lcom/android/server/LSManager;
    const/16 v160, 0x0

    .line 325
    .local v160, "mHMS":Lcom/android/server/HarmonyEASService;
    const/16 v110, 0x0

    .line 326
    .local v110, "deviceManager":Lcom/android/server/DeviceManager3LMService;
    const/16 v137, 0x0

    .line 330
    .local v137, "extControlDevice":Lcom/sec/rll/ExtControlDeviceService;
    const/16 v191, 0x0

    .line 332
    .local v191, "rcpManagerService":Lcom/android/server/RCPManagerService;
    const/16 v185, 0x0

    .line 336
    .local v185, "personaService":Lcom/android/server/pm/PersonaManagerService;
    const/16 v99, 0x0

    .line 337
    .local v99, "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    const-string v7, "1"

    const-string/jumbo v9, "ro.config.knox"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v62

    .line 341
    .local v62, "knoxV1Enabled":Z
    const/16 v216, 0x0

    .line 342
    .local v216, "timaService":Lcom/android/server/TimaService;
    const/16 v214, 0x0

    .line 345
    .local v214, "timaObserver":Lcom/android/server/TimaObserver;
    const/16 v171, 0x0

    .line 349
    .local v171, "msapwifi":Lcom/android/server/MsapWifiService;
    :try_start_0
    invoke-static {}, Lcom/android/server/ServiceKeeper;->authorizeLoadProcedure()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    :goto_3
    new-instance v241, Landroid/os/HandlerThread;

    const-string v7, "WindowManager"

    move-object/from16 v0, v241

    invoke-direct {v0, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 357
    .local v241, "wmHandlerThread":Landroid/os/HandlerThread;
    invoke-virtual/range {v241 .. v241}, Landroid/os/HandlerThread;->start()V

    .line 358
    new-instance v21, Landroid/os/Handler;

    invoke-virtual/range {v241 .. v241}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-direct {v0, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 359
    .local v21, "wmHandler":Landroid/os/Handler;
    new-instance v7, Lcom/android/server/ServerThread$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 376
    const/16 v24, 0x0

    .line 377
    .local v24, "onlyCore":Z
    const/16 v141, 0x0

    .line 382
    .local v141, "firstBoot":Z
    :try_start_1
    const-string v7, "SystemServer"

    const-string v9, "Waiting for installd to be ready."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    new-instance v151, Lcom/android/server/pm/Installer;

    invoke-direct/range {v151 .. v151}, Lcom/android/server/pm/Installer;-><init>()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 384
    .end local v150    # "installer":Lcom/android/server/pm/Installer;
    .local v151, "installer":Lcom/android/server/pm/Installer;
    :try_start_2
    invoke-virtual/range {v151 .. v151}, Lcom/android/server/pm/Installer;->ping()Z

    .line 386
    const-string v7, "SystemServer"

    const-string v9, "Power Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    new-instance v187, Lcom/android/server/power/PowerManagerService;

    invoke-direct/range {v187 .. v187}, Lcom/android/server/power/PowerManagerService;-><init>()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_95

    .line 388
    .end local v4    # "power":Lcom/android/server/power/PowerManagerService;
    .local v187, "power":Lcom/android/server/power/PowerManagerService;
    :try_start_3
    const-string v7, "power"

    move-object/from16 v0, v187

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 405
    const-string v7, "SystemServer"

    const-string v9, "Activity Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-static/range {v138 .. v138}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_96

    move-result-object v5

    move-object/from16 v4, v187

    .end local v187    # "power":Lcom/android/server/power/PowerManagerService;
    .restart local v4    # "power":Lcom/android/server/power/PowerManagerService;
    move-object/from16 v150, v151

    .line 412
    .end local v151    # "installer":Lcom/android/server/pm/Installer;
    .restart local v150    # "installer":Lcom/android/server/pm/Installer;
    :goto_4
    const-string v7, "config.disable_storage"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v123

    .line 413
    .local v123, "disableStorage":Z
    const-string v7, "config.disable_media"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v120

    .line 414
    .local v120, "disableMedia":Z
    const-string v7, "config.disable_bluetooth"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v118

    .line 415
    .local v118, "disableBluetooth":Z
    const-string v7, "config.disable_telephony"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v125

    .line 416
    .local v125, "disableTelephony":Z
    const-string v7, "config.disable_location"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v119

    .line 417
    .local v119, "disableLocation":Z
    const-string v7, "config.disable_systemui"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v124

    .line 418
    .local v124, "disableSystemUI":Z
    const-string v7, "config.disable_noncore"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v122

    .line 419
    .local v122, "disableNonCoreServices":Z
    const-string v7, "config.disable_network"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v121

    .line 420
    .local v121, "disableNetwork":Z
    const-string v7, "config.disable_atlas"

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v117

    .line 421
    .local v117, "disableAtlas":Z
    const/16 v113, 0x0

    .line 425
    .local v113, "digitalPenCapable":Z
    :try_start_4
    const-string v7, "SystemServer"

    const-string v9, "Display Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    new-instance v11, Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, v21

    invoke-direct {v11, v5, v0}, Lcom/android/server/display/DisplayManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_83

    .line 427
    .end local v126    # "display":Lcom/android/server/display/DisplayManagerService;
    .local v11, "display":Lcom/android/server/display/DisplayManagerService;
    :try_start_5
    const-string v7, "display"

    const/4 v9, 0x1

    invoke-static {v7, v11, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 429
    const-string v7, "SystemServer"

    const-string v9, "Telephony Registry"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->isMultiSimSlot()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 432
    const/16 v205, 0x0

    .local v205, "simSlotNum":I
    :goto_5
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v7

    move/from16 v0, v205

    if-ge v0, v7, :cond_5

    .line 433
    const-string/jumbo v7, "telephony.registry"

    move/from16 v0, v205

    invoke-static {v7, v0}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Lcom/android/server/TelephonyRegistry;

    move/from16 v0, v205

    invoke-direct {v9, v5, v0}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;I)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3

    .line 432
    add-int/lit8 v205, v205, 0x1

    goto :goto_5

    .line 258
    .end local v4    # "power":Lcom/android/server/power/PowerManagerService;
    .end local v5    # "context":Landroid/content/Context;
    .end local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v21    # "wmHandler":Landroid/os/Handler;
    .end local v24    # "onlyCore":Z
    .end local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .end local v30    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v33    # "headless":Z
    .end local v62    # "knoxV1Enabled":Z
    .end local v70    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v80    # "battery":Lcom/android/server/BatteryService;
    .end local v81    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .end local v89    # "cneObj":Ljava/lang/Object;
    .end local v90    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .end local v93    # "connectivity":Lcom/android/server/ConnectivityService;
    .end local v97    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v99    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    .end local v101    # "contentService":Lcom/android/server/content/ContentService;
    .end local v107    # "dEncService":Lcom/android/server/DirEncryptService;
    .end local v109    # "dLSManager":Lcom/android/server/LSManager;
    .end local v110    # "deviceManager":Lcom/android/server/DeviceManager3LMService;
    .end local v113    # "digitalPenCapable":Z
    .end local v117    # "disableAtlas":Z
    .end local v118    # "disableBluetooth":Z
    .end local v119    # "disableLocation":Z
    .end local v120    # "disableMedia":Z
    .end local v121    # "disableNetwork":Z
    .end local v122    # "disableNonCoreServices":Z
    .end local v123    # "disableStorage":Z
    .end local v124    # "disableSystemUI":Z
    .end local v125    # "disableTelephony":Z
    .end local v127    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .end local v129    # "dock":Lcom/android/server/DockObserver;
    .end local v137    # "extControlDevice":Lcom/sec/rll/ExtControlDeviceService;
    .end local v138    # "factoryTest":I
    .end local v139    # "factoryTestStr":Ljava/lang/String;
    .end local v141    # "firstBoot":Z
    .end local v149    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v150    # "installer":Lcom/android/server/pm/Installer;
    .end local v155    # "lights":Lcom/android/server/LightsService;
    .end local v160    # "mHMS":Lcom/android/server/HarmonyEASService;
    .end local v169    # "mountService":Lcom/android/server/MountService;
    .end local v171    # "msapwifi":Lcom/android/server/MsapWifiService;
    .end local v173    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .end local v176    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v178    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .end local v185    # "personaService":Lcom/android/server/pm/PersonaManagerService;
    .end local v186    # "pm":Landroid/content/pm/IPackageManager;
    .end local v191    # "rcpManagerService":Lcom/android/server/RCPManagerService;
    .end local v195    # "recognition":Lcom/android/server/RecognitionManagerService;
    .end local v199    # "sdpService":Lcom/android/server/SdpManagerService;
    .end local v201    # "serial":Lcom/android/server/SerialService;
    .end local v203    # "serviceDiscovery":Lcom/android/server/NsdService;
    .end local v205    # "simSlotNum":I
    .end local v211    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v214    # "timaObserver":Lcom/android/server/TimaObserver;
    .end local v216    # "timaService":Lcom/android/server/TimaService;
    .end local v221    # "twilight":Lcom/android/server/TwilightService;
    .end local v223    # "uiMode":Lcom/android/server/UiModeManagerService;
    .end local v225    # "usb":Lcom/android/server/usb/UsbService;
    .end local v228    # "vibrator":Lcom/android/server/VibratorService;
    .end local v235    # "wifi":Lcom/android/server/wifi/WifiService;
    .end local v237    # "wifiOffloadService":Lcom/android/server/wifioffload/WifiOffloadService;
    .end local v238    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .end local v240    # "wm":Lcom/android/server/wm/WindowManagerService;
    .end local v241    # "wmHandlerThread":Landroid/os/HandlerThread;
    :cond_1
    const/16 v194, 0x0

    goto/16 :goto_0

    .line 264
    .restart local v194    # "reboot":Z
    :cond_2
    const/16 v193, 0x0

    .restart local v193    # "reason":Ljava/lang/String;
    goto/16 :goto_1

    .line 272
    .end local v193    # "reason":Ljava/lang/String;
    .end local v194    # "reboot":Z
    .restart local v139    # "factoryTestStr":Ljava/lang/String;
    :cond_3
    invoke-static/range {v139 .. v139}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v138

    goto/16 :goto_2

    .line 350
    .restart local v4    # "power":Lcom/android/server/power/PowerManagerService;
    .restart local v5    # "context":Landroid/content/Context;
    .restart local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v30    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v33    # "headless":Z
    .restart local v62    # "knoxV1Enabled":Z
    .restart local v70    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v80    # "battery":Lcom/android/server/BatteryService;
    .restart local v81    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v89    # "cneObj":Ljava/lang/Object;
    .restart local v90    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v93    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v97    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v99    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    .restart local v101    # "contentService":Lcom/android/server/content/ContentService;
    .restart local v107    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v109    # "dLSManager":Lcom/android/server/LSManager;
    .restart local v110    # "deviceManager":Lcom/android/server/DeviceManager3LMService;
    .restart local v126    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v127    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .restart local v129    # "dock":Lcom/android/server/DockObserver;
    .restart local v137    # "extControlDevice":Lcom/sec/rll/ExtControlDeviceService;
    .restart local v138    # "factoryTest":I
    .restart local v149    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v150    # "installer":Lcom/android/server/pm/Installer;
    .restart local v155    # "lights":Lcom/android/server/LightsService;
    .restart local v160    # "mHMS":Lcom/android/server/HarmonyEASService;
    .restart local v169    # "mountService":Lcom/android/server/MountService;
    .restart local v171    # "msapwifi":Lcom/android/server/MsapWifiService;
    .restart local v173    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .restart local v176    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v178    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v185    # "personaService":Lcom/android/server/pm/PersonaManagerService;
    .restart local v186    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v191    # "rcpManagerService":Lcom/android/server/RCPManagerService;
    .restart local v195    # "recognition":Lcom/android/server/RecognitionManagerService;
    .restart local v199    # "sdpService":Lcom/android/server/SdpManagerService;
    .restart local v201    # "serial":Lcom/android/server/SerialService;
    .restart local v203    # "serviceDiscovery":Lcom/android/server/NsdService;
    .restart local v211    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v214    # "timaObserver":Lcom/android/server/TimaObserver;
    .restart local v216    # "timaService":Lcom/android/server/TimaService;
    .restart local v221    # "twilight":Lcom/android/server/TwilightService;
    .restart local v223    # "uiMode":Lcom/android/server/UiModeManagerService;
    .restart local v225    # "usb":Lcom/android/server/usb/UsbService;
    .restart local v228    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v235    # "wifi":Lcom/android/server/wifi/WifiService;
    .restart local v237    # "wifiOffloadService":Lcom/android/server/wifioffload/WifiOffloadService;
    .restart local v238    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v240    # "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_0
    move-exception v133

    .line 351
    .local v133, "e":Ljava/lang/Exception;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting ServiceKeeper"

    move-object/from16 v0, v133

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 407
    .end local v133    # "e":Ljava/lang/Exception;
    .restart local v21    # "wmHandler":Landroid/os/Handler;
    .restart local v24    # "onlyCore":Z
    .restart local v141    # "firstBoot":Z
    .restart local v241    # "wmHandlerThread":Landroid/os/HandlerThread;
    :catch_1
    move-exception v133

    .line 408
    .local v133, "e":Ljava/lang/RuntimeException;
    :goto_6
    const-string v7, "System"

    const-string v9, "******************************************"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    const-string v7, "System"

    const-string v9, "************ Failure starting bootstrap service"

    move-object/from16 v0, v133

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 436
    .end local v126    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v133    # "e":Ljava/lang/RuntimeException;
    .restart local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v113    # "digitalPenCapable":Z
    .restart local v117    # "disableAtlas":Z
    .restart local v118    # "disableBluetooth":Z
    .restart local v119    # "disableLocation":Z
    .restart local v120    # "disableMedia":Z
    .restart local v121    # "disableNetwork":Z
    .restart local v122    # "disableNonCoreServices":Z
    .restart local v123    # "disableStorage":Z
    .restart local v124    # "disableSystemUI":Z
    .restart local v125    # "disableTelephony":Z
    :cond_4
    :try_start_6
    new-instance v212, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v212

    invoke-direct {v0, v5}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_3

    .line 437
    .end local v211    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v212, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_7
    const-string/jumbo v7, "telephony.registry"

    move-object/from16 v0, v212

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_84

    move-object/from16 v211, v212

    .line 441
    .end local v212    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v211    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :cond_5
    :try_start_8
    const-string v7, "Blueberry"

    const-string v9, "Combination"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 442
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 443
    const-string v7, "SystemServer"

    const-string v9, "MSimTelephony Registry"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    new-instance v174, Lcom/android/server/MSimTelephonyRegistry;

    move-object/from16 v0, v174

    invoke-direct {v0, v5}, Lcom/android/server/MSimTelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_3

    .line 445
    .end local v173    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .local v174, "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    :try_start_9
    const-string/jumbo v7, "telephony.msim.registry"

    move-object/from16 v0, v174

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_85

    move-object/from16 v173, v174

    .line 449
    .end local v174    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .restart local v173    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    :cond_6
    :try_start_a
    const-string v7, "SystemServer"

    const-string v9, "Scheduling Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    const-string/jumbo v7, "scheduling_policy"

    new-instance v9, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v9}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 452
    invoke-static {v5}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 454
    invoke-virtual {v11}, Lcom/android/server/display/DisplayManagerService;->waitForDefaultDisplay()Z

    move-result v7

    if-nez v7, :cond_7

    .line 455
    const-string v7, "Timeout waiting for default display to be initialized."

    new-instance v9, Ljava/lang/Throwable;

    invoke-direct {v9}, Ljava/lang/Throwable;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 459
    :cond_7
    const-string v7, "SystemServer"

    const-string v9, "Package Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const-string/jumbo v7, "vold.decrypt"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v105

    .line 462
    .local v105, "cryptState":Ljava/lang/String;
    const-string/jumbo v7, "trigger_restart_min_framework"

    move-object/from16 v0, v105

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_40

    .line 463
    const-string v7, "SystemServer"

    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const/16 v24, 0x1

    .line 471
    :cond_8
    :goto_7
    const-string v7, "SystemServer"

    const-string v9, "!@Boot: Start PackageManagerService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    if-eqz v138, :cond_41

    const/4 v7, 0x1

    :goto_8
    move-object/from16 v0, v150

    move/from16 v1, v24

    invoke-static {v5, v0, v7, v1}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Landroid/content/pm/IPackageManager;

    move-result-object v186

    .line 475
    const-string v7, "SystemServer"

    const-string v9, "!@Boot: End PackageManagerService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_3

    .line 477
    :try_start_b
    invoke-interface/range {v186 .. v186}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_65
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_3

    move-result v141

    .line 481
    :goto_9
    :try_start_c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 483
    const-string v7, "SystemServer"

    const-string v9, "Entropy Mixer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    const-string v7, "entropy"

    new-instance v9, Lcom/android/server/EntropyMixer;

    invoke-direct {v9, v5}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 486
    const-string v7, "SystemServer"

    const-string v9, "User Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    const-string/jumbo v7, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 491
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v154

    .line 492
    .local v154, "knoxVerInfo":Landroid/os/Bundle;
    const-string v7, "2.0"

    const-string/jumbo v9, "version"

    move-object/from16 v0, v154

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    const-string v7, "1.0"

    const-string/jumbo v9, "version"

    move-object/from16 v0, v154

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_3

    move-result v7

    if-eqz v7, :cond_a

    .line 494
    :cond_9
    :try_start_d
    const-string v7, "SystemServer"

    const-string v9, "SEAMS"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    const-string v7, "SEAMService"

    new-instance v9, Lcom/android/server/SEAMService;

    invoke-direct {v9, v5}, Lcom/android/server/SEAMService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_3

    .line 503
    :cond_a
    :goto_a
    :try_start_e
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v227

    .line 504
    .local v227, "versionInfo":Landroid/os/Bundle;
    const-string v7, "2.0"

    const-string/jumbo v9, "version"

    move-object/from16 v0, v227

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 505
    const-string v7, "SystemServer"

    const-string v9, "Persona Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->getInstance()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v185

    .line 507
    const-string v7, "persona"

    move-object/from16 v0, v185

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 510
    :cond_b
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_3

    .line 515
    :try_start_f
    const-string v7, "SystemServer"

    const-string v9, "Account Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    new-instance v71, Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v0, v71

    invoke-direct {v0, v5}, Lcom/android/server/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_3

    .line 517
    .end local v70    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v71, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :try_start_10
    const-string v7, "account"

    move-object/from16 v0, v71

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_94
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_86

    move-object/from16 v70, v71

    .line 523
    .end local v71    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v70    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :goto_b
    :try_start_11
    const-string v7, "KTT"

    const-string v9, "OPEN"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_3

    move-result v7

    if-nez v7, :cond_c

    .line 526
    :try_start_12
    const-string v7, "SystemServer"

    const-string v9, "KT UCA Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    const-string v7, "ktuca"

    new-instance v9, Landroid/ktuca/KtUcaService;

    invoke-direct {v9, v5}, Landroid/ktuca/KtUcaService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_3

    .line 534
    :cond_c
    :goto_c
    :try_start_13
    const-string v7, "SystemServer"

    const-string v9, "Content Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    const/4 v7, 0x1

    move/from16 v0, v138

    if-ne v0, v7, :cond_42

    const/4 v7, 0x1

    :goto_d
    invoke-static {v5, v7}, Lcom/android/server/content/ContentService;->main(Landroid/content/Context;Z)Lcom/android/server/content/ContentService;

    move-result-object v101

    .line 540
    new-instance v108, Lcom/android/server/DirEncryptService;

    move-object/from16 v0, v108

    invoke-direct {v0, v5}, Lcom/android/server/DirEncryptService;-><init>(Landroid/content/Context;)V
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_3

    .line 542
    .end local v107    # "dEncService":Lcom/android/server/DirEncryptService;
    .local v108, "dEncService":Lcom/android/server/DirEncryptService;
    :try_start_14
    sget-boolean v7, Lcom/android/server/ServerThread;->DIR_ENCRYPTION:Z

    if-eqz v7, :cond_d

    .line 543
    const-string v7, "DirEncryptService"

    move-object/from16 v0, v108

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_87

    :cond_d
    move-object/from16 v107, v108

    .line 565
    .end local v108    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v107    # "dEncService":Lcom/android/server/DirEncryptService;
    :goto_e
    if-eqz v62, :cond_e

    .line 567
    :try_start_15
    const-string v7, "SystemServer"

    const-string v9, "Enterprise Container Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    new-instance v100, Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v0, v100

    invoke-direct {v0, v5}, Lcom/sec/knox/container/EnterpriseContainerService;-><init>(Landroid/content/Context;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_3

    .line 569
    .end local v99    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    .local v100, "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    :try_start_16
    const-string v7, "container_service"

    move-object/from16 v0, v100

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 571
    const-string v7, "SystemServer"

    const-string v9, "Container Service service created..."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_93
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_88

    move-object/from16 v99, v100

    .line 580
    .end local v100    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    .restart local v99    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    :cond_e
    :goto_f
    :try_start_17
    const-string v7, "SystemServer"

    const-string v9, "System Content Providers"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 585
    const-string v7, "1"

    const-string/jumbo v9, "ro.config.tima"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v213

    .line 586
    .local v213, "timaEnabled":Z
    if-eqz v213, :cond_f

    .line 589
    const/4 v7, -0x2

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_3

    .line 592
    :try_start_18
    const-string v7, "SystemServer"

    const-string v9, "TIMA Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    new-instance v217, Lcom/android/server/TimaService;

    move-object/from16 v0, v217

    invoke-direct {v0, v5}, Lcom/android/server/TimaService;-><init>(Landroid/content/Context;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_3

    .line 594
    .end local v216    # "timaService":Lcom/android/server/TimaService;
    .local v217, "timaService":Lcom/android/server/TimaService;
    :try_start_19
    const-string/jumbo v7, "tima"

    move-object/from16 v0, v217

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_92
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_89

    move-object/from16 v216, v217

    .line 599
    .end local v217    # "timaService":Lcom/android/server/TimaService;
    .restart local v216    # "timaService":Lcom/android/server/TimaService;
    :goto_10
    const/16 v7, -0x13

    :try_start_1a
    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_3

    .line 603
    :try_start_1b
    const-string v7, "SystemServer"

    const-string v9, "TIMA Observer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    new-instance v215, Lcom/android/server/TimaObserver;

    move-object/from16 v0, v215

    invoke-direct {v0, v5}, Lcom/android/server/TimaObserver;-><init>(Landroid/content/Context;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_1b} :catch_3

    .end local v214    # "timaObserver":Lcom/android/server/TimaObserver;
    .local v215, "timaObserver":Lcom/android/server/TimaObserver;
    move-object/from16 v214, v215

    .line 612
    .end local v215    # "timaObserver":Lcom/android/server/TimaObserver;
    .restart local v214    # "timaObserver":Lcom/android/server/TimaObserver;
    :goto_11
    :try_start_1c
    const-string v7, "3.0"

    const-string/jumbo v9, "ro.config.timaversion"

    const-string v10, "0"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v218

    .line 613
    .local v218, "timaversion":Z
    if-eqz v218, :cond_f

    .line 614
    const-string v7, "com.sec.tima.TimaKeyStoreProvider"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v153

    .line 616
    .local v153, "keyStoreClass":Ljava/lang/Class;
    invoke-virtual/range {v153 .. v153}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/Provider;

    invoke-static {v7}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    .line 617
    const-string v7, "SystemServer"

    const-string v9, "Added TimaKesytore provider"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_1c} :catch_3

    .line 627
    .end local v153    # "keyStoreClass":Ljava/lang/Class;
    .end local v218    # "timaversion":Z
    :cond_f
    :goto_12
    :try_start_1d
    const-string v7, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    new-instance v6, Lcom/android/server/LightsService;

    invoke-direct {v6, v5}, Lcom/android/server/LightsService;-><init>(Landroid/content/Context;)V
    :try_end_1d
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_1d} :catch_3

    .line 630
    .end local v155    # "lights":Lcom/android/server/LightsService;
    .local v6, "lights":Lcom/android/server/LightsService;
    :try_start_1e
    const-string v7, "SystemServer"

    const-string v9, "Battery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    new-instance v8, Lcom/android/server/BatteryService;

    invoke-direct {v8, v5, v6}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    :try_end_1e
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_1e} :catch_8a

    .line 632
    .end local v80    # "battery":Lcom/android/server/BatteryService;
    .local v8, "battery":Lcom/android/server/BatteryService;
    :try_start_1f
    const-string v7, "battery"

    invoke-static {v7, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 636
    const-string v7, "SystemServer"

    const-string v9, "TactileAssist Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    new-instance v210, Lcom/android/server/TactileAssistService;

    move-object/from16 v0, v210

    invoke-direct {v0, v5}, Lcom/android/server/TactileAssistService;-><init>(Landroid/content/Context;)V

    .line 638
    .local v210, "tactileAssist":Lcom/android/server/TactileAssistService;
    const-string/jumbo v7, "tactileassist"

    move-object/from16 v0, v210

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 642
    const-string v7, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    new-instance v229, Lcom/android/server/VibratorService;

    move-object/from16 v0, v229

    invoke-direct {v0, v5}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_1f
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_1f} :catch_8b

    .line 644
    .end local v228    # "vibrator":Lcom/android/server/VibratorService;
    .local v229, "vibrator":Lcom/android/server/VibratorService;
    :try_start_20
    const-string/jumbo v7, "vibrator"

    move-object/from16 v0, v229

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 655
    const-string v7, "SystemServer"

    const-string v9, "SSRM Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_20} :catch_c

    .line 657
    :try_start_21
    new-instance v84, Ldalvik/system/PathClassLoader;

    const-string v7, "/system/framework/ssrm.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    move-object/from16 v0, v84

    invoke-direct {v0, v7, v9}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 658
    .local v84, "cfmsClassLoader":Ldalvik/system/PathClassLoader;
    const-string v7, "com.android.server.ssrm.CustomFrequencyManagerService"

    move-object/from16 v0, v84

    invoke-virtual {v0, v7}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v83

    .line 659
    .local v83, "cfmsClass":Ljava/lang/Class;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v7, v9

    const/4 v9, 0x1

    const-class v10, Landroid/app/IActivityManager;

    aput-object v10, v7, v9

    move-object/from16 v0, v83

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v85

    .line 660
    .local v85, "cfmsConstructor":Ljava/lang/reflect/Constructor;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v7, v9

    const/4 v9, 0x1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    aput-object v10, v7, v9

    move-object/from16 v0, v85

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v206

    check-cast v206, Landroid/os/IBinder;

    .line 661
    .local v206, "ssrmService":Landroid/os/IBinder;
    const-string v7, "CustomFrequencyManagerService"

    move-object/from16 v0, v206

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_21} :catch_c

    .line 668
    .end local v83    # "cfmsClass":Ljava/lang/Class;
    .end local v84    # "cfmsClassLoader":Ldalvik/system/PathClassLoader;
    .end local v85    # "cfmsConstructor":Ljava/lang/reflect/Constructor;
    .end local v206    # "ssrmService":Landroid/os/IBinder;
    :goto_13
    :try_start_22
    const-string v7, "SystemServer"

    const-string v9, "Adaptive Display Color Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    new-instance v128, Lcom/android/server/AdaptiveDisplayColorService;

    move-object/from16 v0, v128

    invoke-direct {v0, v5}, Lcom/android/server/AdaptiveDisplayColorService;-><init>(Landroid/content/Context;)V
    :try_end_22
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_22} :catch_c

    .line 672
    .end local v127    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .local v128, "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    :try_start_23
    const-string v7, "SystemServer"

    const-string v9, "Consumer IR Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    new-instance v98, Lcom/android/server/ConsumerIrService;

    move-object/from16 v0, v98

    invoke-direct {v0, v5}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_23
    .catch Ljava/lang/RuntimeException; {:try_start_23 .. :try_end_23} :catch_8c

    .line 674
    .end local v97    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v98, "consumerIr":Lcom/android/server/ConsumerIrService;
    :try_start_24
    const-string v7, "consumer_ir"

    move-object/from16 v0, v98

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 678
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v10

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/power/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/BatteryService;Lcom/android/internal/app/IBatteryStats;Lcom/android/internal/app/IAppOpsService;Lcom/android/server/display/DisplayManagerService;)V

    .line 682
    const-string v7, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    new-instance v16, Lcom/android/server/AlarmManagerService;

    move-object/from16 v0, v16

    invoke-direct {v0, v5}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V
    :try_end_24
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_24} :catch_8d

    .line 684
    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .local v16, "alarm":Lcom/android/server/AlarmManagerService;
    :try_start_25
    const-string v7, "alarm"

    move-object/from16 v0, v16

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 686
    const-string v7, "SystemServer"

    const-string v9, "Init Watchdog"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v17

    move-object v13, v5

    move-object v14, v8

    move-object v15, v4

    invoke-virtual/range {v12 .. v17}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/power/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    .line 689
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v7

    const-string v9, "WindowManager thread"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0, v9}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;Ljava/lang/String;)V

    .line 691
    const-string v7, "SystemServer"

    const-string v9, "Input Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    new-instance v20, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_25
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_25} :catch_8e

    .line 694
    .end local v149    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v20, "inputManager":Lcom/android/server/input/InputManagerService;
    :try_start_26
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v9, "com.sec.feature.sensorhub"

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 695
    const-string v7, "SystemServer"

    const-string v9, "Context Aware Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    const-string v7, "context_aware"

    new-instance v9, Landroid/hardware/contextaware/manager/ContextAwareService;

    invoke-direct {v9, v5}, Landroid/hardware/contextaware/manager/ContextAwareService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 698
    :cond_10
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v9, "com.sec.feature.sensorhub"

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_11

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v9, "com.sec.feature.scontext_lite"

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 700
    :cond_11
    const-string v7, "SystemServer"

    const-string v9, "SContext Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    const-string/jumbo v7, "scontext"

    new-instance v9, Landroid/hardware/scontext/SContextService;

    invoke-direct {v9, v5}, Landroid/hardware/scontext/SContextService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 704
    :cond_12
    const-string v7, "SystemServer"

    const-string v9, "Window Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    const/4 v7, 0x1

    move/from16 v0, v138

    if-eq v0, v7, :cond_43

    const/16 v22, 0x1

    :goto_14
    if-nez v141, :cond_44

    const/16 v23, 0x1

    :goto_15
    move-object/from16 v17, v5

    move-object/from16 v18, v4

    move-object/from16 v19, v11

    invoke-static/range {v17 .. v24}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Lcom/android/server/display/DisplayManagerService;Lcom/android/server/input/InputManagerService;Landroid/os/Handler;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v240

    .line 708
    const-string/jumbo v7, "window"

    move-object/from16 v0, v240

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 709
    const-string v7, "input"

    move-object/from16 v0, v20

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 711
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    move-object/from16 v0, v240

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 713
    invoke-static {}, Lcom/android/server/am/MultiWindowFacadeService;->self()Lcom/android/server/am/MultiWindowFacadeService;

    move-result-object v7

    move-object/from16 v0, v240

    invoke-virtual {v7, v0}, Lcom/android/server/am/MultiWindowFacadeService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 716
    invoke-virtual/range {v240 .. v240}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 717
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/input/InputManagerService;->start()V

    .line 719
    move-object/from16 v0, v240

    invoke-virtual {v11, v0}, Lcom/android/server/display/DisplayManagerService;->setWindowManager(Lcom/android/server/display/DisplayManagerService$WindowManagerFuncs;)V

    .line 720
    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Lcom/android/server/display/DisplayManagerService;->setInputManager(Lcom/android/server/display/DisplayManagerService$InputManagerFuncs;)V

    .line 725
    const-string/jumbo v7, "ro.kernel.qemu"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "1"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_45

    .line 726
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooh Service (emulator)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    :goto_16
    const-string v7, "2.0"

    const-string/jumbo v9, "version"

    move-object/from16 v0, v227

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 748
    const-string v7, "SystemServer"

    const-string v9, "RCP Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_26} :catch_d

    .line 750
    :try_start_27
    new-instance v192, Lcom/android/server/RCPManagerService;

    move-object/from16 v0, v192

    invoke-direct {v0, v5}, Lcom/android/server/RCPManagerService;-><init>(Landroid/content/Context;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_27 .. :try_end_27} :catch_d

    .line 751
    .end local v191    # "rcpManagerService":Lcom/android/server/RCPManagerService;
    .local v192, "rcpManagerService":Lcom/android/server/RCPManagerService;
    :try_start_28
    const-string v7, "rcp"

    move-object/from16 v0, v192

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_91
    .catch Ljava/lang/RuntimeException; {:try_start_28 .. :try_end_28} :catch_90

    move-object/from16 v191, v192

    .line 757
    .end local v192    # "rcpManagerService":Lcom/android/server/RCPManagerService;
    .restart local v191    # "rcpManagerService":Lcom/android/server/RCPManagerService;
    :cond_13
    :goto_17
    :try_start_29
    new-instance v7, Landroid/security/AndroidKeyStoreProvider;

    invoke-direct {v7}, Landroid/security/AndroidKeyStoreProvider;-><init>()V

    invoke-static {v7}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I
    :try_end_29
    .catch Ljava/lang/RuntimeException; {:try_start_29 .. :try_end_29} :catch_d

    move-object/from16 v97, v98

    .end local v98    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v97    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v127, v128

    .end local v128    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .restart local v127    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    move-object/from16 v228, v229

    .line 763
    .end local v105    # "cryptState":Ljava/lang/String;
    .end local v154    # "knoxVerInfo":Landroid/os/Bundle;
    .end local v210    # "tactileAssist":Lcom/android/server/TactileAssistService;
    .end local v213    # "timaEnabled":Z
    .end local v227    # "versionInfo":Landroid/os/Bundle;
    .end local v229    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v228    # "vibrator":Lcom/android/server/VibratorService;
    :goto_18
    const/16 v111, 0x0

    .line 765
    .local v111, "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    const/16 v135, 0x0

    .line 767
    .local v135, "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    const/16 v208, 0x0

    .line 768
    .local v208, "statusBar":Lcom/android/server/StatusBarManagerService;
    const/16 v147, 0x0

    .line 769
    .local v147, "imm":Lcom/android/server/InputMethodManagerService;
    const/16 v74, 0x0

    .line 770
    .local v74, "appWidget":Lcom/android/server/AppWidgetService;
    const/16 v180, 0x0

    .line 771
    .local v180, "notification":Lcom/android/server/NotificationManagerService;
    const/16 v233, 0x0

    .line 772
    .local v233, "wallpaper":Lcom/android/server/WallpaperManagerService;
    const/16 v156, 0x0

    .line 773
    .local v156, "location":Lcom/android/server/LocationManagerService;
    const/16 v197, 0x0

    .line 774
    .local v197, "sLocation":Landroid/os/IBinder;
    const/16 v102, 0x0

    .line 775
    .local v102, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v219, 0x0

    .line 776
    .local v219, "tsms":Lcom/android/server/TextServicesManagerService;
    const/16 v158, 0x0

    .line 777
    .local v158, "lockSettings":Lcom/android/server/LockSettingsService;
    const/16 v131, 0x0

    .line 779
    .local v131, "dreamy":Lcom/android/server/dreams/DreamManagerService;
    const/16 v230, 0x0

    .line 781
    .local v230, "vrManager":Lcom/android/server/VRManagerService;
    const/16 v77, 0x0

    .line 782
    .local v77, "atlas":Lcom/android/server/AssetAtlasService;
    const/16 v188, 0x0

    .line 783
    .local v188, "printManager":Lcom/android/server/print/PrintManagerService;
    const/16 v163, 0x0

    .line 786
    .local v163, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    const/4 v7, 0x1

    move/from16 v0, v138

    if-eq v0, v7, :cond_14

    .line 790
    :try_start_2a
    const-string v7, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    new-instance v148, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v148

    move-object/from16 v1, v240

    invoke-direct {v0, v5, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_f

    .line 792
    .end local v147    # "imm":Lcom/android/server/InputMethodManagerService;
    .local v148, "imm":Lcom/android/server/InputMethodManagerService;
    :try_start_2b
    const-string v7, "input_method"

    move-object/from16 v0, v148

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_82

    move-object/from16 v147, v148

    .line 798
    .end local v148    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v147    # "imm":Lcom/android/server/InputMethodManagerService;
    :goto_19
    :try_start_2c
    const-string v7, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    const-string v7, "accessibility"

    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_10

    .line 808
    :cond_14
    :goto_1a
    :try_start_2d
    const-string v7, "SystemServer"

    const-string v9, "Window Manager displayReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    invoke-virtual/range {v240 .. v240}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_11

    .line 815
    :goto_1b
    :try_start_2e
    const-string v7, "SystemServer"

    const-string v9, "Package Manager performBootDexOpt"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    invoke-interface/range {v186 .. v186}, Landroid/content/pm/IPackageManager;->performBootDexOpt()V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_12

    .line 822
    :goto_1c
    :try_start_2f
    const-string v7, "SystemServer"

    const-string v9, "ActivityManagerNative showBootMessage"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10406ab

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v7, v9, v10}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_2f} :catch_81

    .line 831
    :goto_1d
    if-eqz v62, :cond_15

    .line 833
    if-eqz v99, :cond_15

    :try_start_30
    invoke-virtual/range {v99 .. v99}, Lcom/sec/knox/container/EnterpriseContainerService;->preSystemReady()V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_13

    .line 840
    :cond_15
    :goto_1e
    const/4 v7, 0x1

    move/from16 v0, v138

    if-eq v0, v7, :cond_56

    .line 842
    :try_start_31
    const-string v7, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    new-instance v112, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v112

    invoke-direct {v0, v5}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_14

    .line 844
    .end local v111    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .local v112, "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    :try_start_32
    const-string v7, "device_policy"

    move-object/from16 v0, v112

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_80

    move-object/from16 v111, v112

    .line 849
    .end local v112    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v111    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    :goto_1f
    if-nez v123, :cond_16

    const-string v7, "0"

    const-string/jumbo v9, "system_init.startmountservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_16

    .line 856
    :try_start_33
    const-string v7, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    new-instance v170, Lcom/android/server/MountService;

    move-object/from16 v0, v170

    invoke-direct {v0, v5}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_15

    .line 858
    .end local v169    # "mountService":Lcom/android/server/MountService;
    .local v170, "mountService":Lcom/android/server/MountService;
    :try_start_34
    const-string v7, "mount"

    move-object/from16 v0, v170

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_7f

    move-object/from16 v169, v170

    .line 866
    .end local v170    # "mountService":Lcom/android/server/MountService;
    .restart local v169    # "mountService":Lcom/android/server/MountService;
    :cond_16
    :goto_20
    :try_start_35
    const-string v7, "SystemServer"

    const-string v9, "DirEncryptSerrvice"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    if-eqz v107, :cond_17

    .line 868
    const-string v7, "SystemServer"

    const-string v9, "DirEncryptService.SystemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    invoke-virtual/range {v107 .. v107}, Lcom/android/server/DirEncryptService;->systemReady()V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_16

    .line 876
    :cond_17
    :goto_21
    const-string/jumbo v7, "ro.mds.enable"

    const-string v9, "false"

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v162

    .line 877
    .local v162, "mdsEnable":Ljava/lang/String;
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Intel MDS Service ro.mds.enable = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v162

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    const-string/jumbo v7, "true"

    move-object/from16 v0, v162

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 879
    const/4 v7, 0x2

    new-array v0, v7, [Ljava/lang/Class;

    move-object/from16 v190, v0

    const/4 v7, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v190, v7

    const/4 v7, 0x1

    const-class v9, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    aput-object v9, v190, v7

    .line 881
    .local v190, "ptype":[Ljava/lang/Class;
    const/4 v7, 0x2

    new-array v0, v7, [Ljava/lang/Object;

    move-object/from16 v182, v0

    const/4 v7, 0x0

    aput-object v5, v182, v7

    const/4 v7, 0x1

    aput-object v240, v182, v7

    .line 882
    .local v182, "obj":[Ljava/lang/Object;
    const-string v175, "com.intel.multidisplay.DisplayObserver"

    .line 883
    .local v175, "name":Ljava/lang/String;
    const-string v7, "SystemServer"

    const-string v9, "Intel Display Observer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    move-object/from16 v0, p0

    move-object/from16 v1, v175

    move-object/from16 v2, v190

    move-object/from16 v3, v182

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServerThread;->createServiceWithConstructor(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    .end local v175    # "name":Ljava/lang/String;
    .end local v182    # "obj":[Ljava/lang/Object;
    .end local v190    # "ptype":[Ljava/lang/Class;
    :cond_18
    :try_start_36
    const-string v7, "SystemServer"

    const-string v9, "VR Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    new-instance v231, Lcom/android/server/VRManagerService;

    move-object/from16 v0, v231

    invoke-direct {v0, v5}, Lcom/android/server/VRManagerService;-><init>(Landroid/content/Context;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_17

    .line 893
    .end local v230    # "vrManager":Lcom/android/server/VRManagerService;
    .local v231, "vrManager":Lcom/android/server/VRManagerService;
    :try_start_37
    const-string/jumbo v7, "vr"

    move-object/from16 v0, v231

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_7e

    move-object/from16 v230, v231

    .line 913
    .end local v231    # "vrManager":Lcom/android/server/VRManagerService;
    .restart local v230    # "vrManager":Lcom/android/server/VRManagerService;
    :goto_22
    if-nez v122, :cond_1a

    .line 915
    :try_start_38
    const-string v7, "SystemServer"

    const-string v9, "LockSettingsService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    new-instance v159, Lcom/android/server/LockSettingsService;

    move-object/from16 v0, v159

    invoke-direct {v0, v5}, Lcom/android/server/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_18

    .line 917
    .end local v158    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v159, "lockSettings":Lcom/android/server/LockSettingsService;
    :try_start_39
    const-string v7, "lock_settings"

    move-object/from16 v0, v159

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_7d

    move-object/from16 v158, v159

    .line 931
    .end local v159    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v158    # "lockSettings":Lcom/android/server/LockSettingsService;
    :goto_23
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v227

    .line 932
    .restart local v227    # "versionInfo":Landroid/os/Bundle;
    const-string v7, "2.0"

    const-string/jumbo v9, "version"

    move-object/from16 v0, v227

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 934
    :try_start_3a
    invoke-virtual/range {v185 .. v185}, Lcom/android/server/pm/PersonaManagerService;->preSystemReady()V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_19

    .line 943
    :cond_19
    :goto_24
    :try_start_3b
    const-string v7, "SystemServer"

    const-string v9, "SdpManagerService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    new-instance v200, Lcom/android/server/SdpManagerService;

    move-object/from16 v0, v200

    invoke-direct {v0, v5}, Lcom/android/server/SdpManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_1a

    .line 945
    .end local v199    # "sdpService":Lcom/android/server/SdpManagerService;
    .local v200, "sdpService":Lcom/android/server/SdpManagerService;
    :try_start_3c
    const-string/jumbo v7, "sdp"

    move-object/from16 v0, v200

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_7c

    move-object/from16 v199, v200

    .line 952
    .end local v200    # "sdpService":Lcom/android/server/SdpManagerService;
    .restart local v199    # "sdpService":Lcom/android/server/SdpManagerService;
    :goto_25
    :try_start_3d
    const-string v7, "SystemServer"

    const-string v9, "Enterprise Policy"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    new-instance v136, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    move-object/from16 v0, v186

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    move-object v7, v0

    move-object/from16 v0, v136

    move-object/from16 v1, v111

    invoke-direct {v0, v5, v7, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;-><init>(Landroid/content/Context;Landroid/content/pm/IPackageManager;Landroid/app/admin/IDevicePolicyManager;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_1b

    .line 954
    .end local v135    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .local v136, "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :try_start_3e
    const-string v7, "enterprise_policy"

    move-object/from16 v0, v136

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 955
    const-string v7, "SystemServer"

    const-string v9, "Enterprise Policymanager service created..."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_7b

    move-object/from16 v135, v136

    .line 964
    .end local v136    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v227    # "versionInfo":Landroid/os/Bundle;
    .restart local v135    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    :cond_1a
    :goto_26
    :try_start_3f
    const-string v7, "SystemServer"

    const-string v9, "HarmonyEAS service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    new-instance v161, Lcom/android/server/HarmonyEASService;

    move-object/from16 v0, v161

    invoke-direct {v0, v5}, Lcom/android/server/HarmonyEASService;-><init>(Landroid/content/Context;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_1c

    .line 966
    .end local v160    # "mHMS":Lcom/android/server/HarmonyEASService;
    .local v161, "mHMS":Lcom/android/server/HarmonyEASService;
    :try_start_40
    const-string v7, "harmony_eas_service"

    move-object/from16 v0, v161

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 967
    const-string v7, "SystemServer"

    const-string v9, "Harmony EAS service created..."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_7a

    move-object/from16 v160, v161

    .line 973
    .end local v161    # "mHMS":Lcom/android/server/HarmonyEASService;
    .restart local v160    # "mHMS":Lcom/android/server/HarmonyEASService;
    :goto_27
    if-nez v124, :cond_1b

    .line 975
    :try_start_41
    const-string v7, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    new-instance v209, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v209

    move-object/from16 v1, v240

    invoke-direct {v0, v5, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_1d

    .line 977
    .end local v208    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .local v209, "statusBar":Lcom/android/server/StatusBarManagerService;
    :try_start_42
    const-string/jumbo v7, "statusbar"

    move-object/from16 v0, v209

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_79

    move-object/from16 v208, v209

    .line 983
    .end local v209    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v208    # "statusBar":Lcom/android/server/StatusBarManagerService;
    :cond_1b
    :goto_28
    if-nez v122, :cond_1c

    .line 985
    :try_start_43
    const-string v7, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    const-string v7, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v5}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_1e

    .line 998
    :cond_1c
    :goto_29
    :try_start_44
    const-string v7, "SystemServer"

    const-string v9, "ClipboardEx Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    const-string v7, "clipboardEx"

    new-instance v9, Lcom/android/server/sec/InternalClipboardExService;

    invoke-direct {v9, v5}, Lcom/android/server/sec/InternalClipboardExService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_1f

    .line 1005
    :goto_2a
    if-nez v121, :cond_1d

    .line 1007
    :try_start_45
    const-string v7, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    invoke-static {v5}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v30

    .line 1009
    const-string v7, "network_management"

    move-object/from16 v0, v30

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_20

    .line 1015
    :cond_1d
    :goto_2b
    if-nez v122, :cond_1e

    .line 1017
    :try_start_46
    const-string v7, "SystemServer"

    const-string v9, "Text Service Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    new-instance v220, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v220

    invoke-direct {v0, v5}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_21

    .line 1019
    .end local v219    # "tsms":Lcom/android/server/TextServicesManagerService;
    .local v220, "tsms":Lcom/android/server/TextServicesManagerService;
    :try_start_47
    const-string/jumbo v7, "textservices"

    move-object/from16 v0, v220

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_78

    move-object/from16 v219, v220

    .line 1025
    .end local v220    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v219    # "tsms":Lcom/android/server/TextServicesManagerService;
    :cond_1e
    :goto_2c
    if-nez v121, :cond_55

    .line 1027
    :try_start_48
    const-string v7, "SystemServer"

    const-string v9, "NetworkStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    new-instance v177, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v177

    move-object/from16 v1, v30

    move-object/from16 v2, v16

    invoke-direct {v0, v5, v1, v2}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_22

    .line 1029
    .end local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v177, "networkStats":Lcom/android/server/net/NetworkStatsService;
    :try_start_49
    const-string v7, "netstats"

    move-object/from16 v0, v177

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_77

    move-object/from16 v29, v177

    .line 1035
    .end local v177    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :goto_2d
    :try_start_4a
    const-string v7, "SystemServer"

    const-string v9, "NetworkPolicy Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    new-instance v25, Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v27

    move-object/from16 v26, v5

    move-object/from16 v28, v4

    invoke-direct/range {v25 .. v30}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_23

    .line 1039
    .end local v176    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v25, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_4b
    const-string v7, "netpolicy"

    move-object/from16 v0, v25

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_76

    .line 1045
    :goto_2e
    :try_start_4c
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi P2pService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    new-instance v239, Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v0, v239

    invoke-direct {v0, v5}, Landroid/net/wifi/p2p/WifiP2pService;-><init>(Landroid/content/Context;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4c} :catch_24

    .line 1047
    .end local v238    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .local v239, "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    :try_start_4d
    const-string/jumbo v7, "wifip2p"

    move-object/from16 v0, v239

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_4d} :catch_75

    move-object/from16 v238, v239

    .line 1053
    .end local v239    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v238    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    :goto_2f
    :try_start_4e
    const-string v7, "SystemServer"

    const-string v9, "Wi-Fi Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    new-instance v236, Lcom/android/server/wifi/WifiService;

    move-object/from16 v0, v236

    invoke-direct {v0, v5}, Lcom/android/server/wifi/WifiService;-><init>(Landroid/content/Context;)V
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_4e .. :try_end_4e} :catch_25

    .line 1055
    .end local v235    # "wifi":Lcom/android/server/wifi/WifiService;
    .local v236, "wifi":Lcom/android/server/wifi/WifiService;
    :try_start_4f
    const-string/jumbo v7, "wifi"

    move-object/from16 v0, v236

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_4f} :catch_74

    move-object/from16 v235, v236

    .line 1062
    .end local v236    # "wifi":Lcom/android/server/wifi/WifiService;
    .restart local v235    # "wifi":Lcom/android/server/wifi/WifiService;
    :goto_30
    :try_start_50
    const-string v7, "SystemServer"

    const-string v9, "MSAP Wi-Fi Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    new-instance v172, Lcom/android/server/MsapWifiService;

    move-object/from16 v0, v172

    invoke-direct {v0, v5}, Lcom/android/server/MsapWifiService;-><init>(Landroid/content/Context;)V
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_50 .. :try_end_50} :catch_26

    .line 1064
    .end local v171    # "msapwifi":Lcom/android/server/MsapWifiService;
    .local v172, "msapwifi":Lcom/android/server/MsapWifiService;
    :try_start_51
    const-string v7, "msapwifi"

    move-object/from16 v0, v172

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_51} :catch_73

    move-object/from16 v171, v172

    .line 1071
    .end local v172    # "msapwifi":Lcom/android/server/MsapWifiService;
    .restart local v171    # "msapwifi":Lcom/android/server/MsapWifiService;
    :goto_31
    :try_start_52
    const-string v7, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    new-instance v94, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v94

    move-object/from16 v1, v30

    move-object/from16 v2, v29

    move-object/from16 v3, v25

    invoke-direct {v0, v5, v1, v2, v3}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_52} :catch_27

    .line 1074
    .end local v93    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v94, "connectivity":Lcom/android/server/ConnectivityService;
    :try_start_53
    const-string v7, "connectivity"

    move-object/from16 v0, v94

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1075
    move-object/from16 v0, v29

    move-object/from16 v1, v94

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 1076
    move-object/from16 v0, v25

    move-object/from16 v1, v94

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 1078
    invoke-virtual/range {v238 .. v238}, Landroid/net/wifi/p2p/WifiP2pService;->connectivityServiceReady()V

    .line 1079
    invoke-virtual/range {v235 .. v235}, Lcom/android/server/wifi/WifiService;->checkAndStartWifi()V
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_53} :catch_72

    move-object/from16 v93, v94

    .line 1123
    .end local v94    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v93    # "connectivity":Lcom/android/server/ConnectivityService;
    :goto_32
    :try_start_54
    const-string v7, "SystemServer"

    const-string v9, "Network Service Discovery Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    invoke-static {v5}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v203

    .line 1125
    const-string/jumbo v7, "servicediscovery"

    move-object/from16 v0, v203

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_54} :catch_28

    .line 1132
    :goto_33
    :try_start_55
    const-string v7, "SystemServer"

    const-string v9, "DPM Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    move-object/from16 v0, v93

    invoke-static {v5, v0}, Lcom/android/server/ServerThread;->startDpmService(Landroid/content/Context;Lcom/android/server/ConnectivityService;)V
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_55} :catch_29

    .line 1139
    :goto_34
    if-nez v122, :cond_1f

    .line 1141
    :try_start_56
    const-string v7, "SystemServer"

    const-string v9, "UpdateLock Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    const-string/jumbo v7, "updatelock"

    new-instance v9, Lcom/android/server/UpdateLockService;

    invoke-direct {v9, v5}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_56} :catch_2a

    .line 1154
    :cond_1f
    :goto_35
    if-eqz v169, :cond_20

    if-nez v24, :cond_20

    .line 1156
    const-string/jumbo v7, "vold.decrypt"

    const-string v9, "null"

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v9, "trigger_restart_min_framework"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_20

    .line 1157
    invoke-virtual/range {v169 .. v169}, Lcom/android/server/MountService;->waitForAsecScan()V

    .line 1161
    :cond_20
    if-eqz v70, :cond_21

    .line 1162
    :try_start_57
    const-string v7, "SystemServer"

    const-string v9, "accountManager systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    invoke-virtual/range {v70 .. v70}, Lcom/android/server/accounts/AccountManagerService;->systemReady()V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_57} :catch_2b

    .line 1170
    :cond_21
    :goto_36
    if-eqz v101, :cond_22

    .line 1171
    :try_start_58
    const-string v7, "SystemServer"

    const-string v9, "contentService systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    invoke-virtual/range {v101 .. v101}, Lcom/android/server/content/ContentService;->systemReady()V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_58 .. :try_end_58} :catch_2c

    .line 1179
    :cond_22
    :goto_37
    :try_start_59
    const-string v7, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    new-instance v181, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v181

    move-object/from16 v1, v208

    invoke-direct {v0, v5, v1, v6}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_59} :catch_2d

    .line 1181
    .end local v180    # "notification":Lcom/android/server/NotificationManagerService;
    .local v181, "notification":Lcom/android/server/NotificationManagerService;
    :try_start_5a
    const-string v7, "notification"

    move-object/from16 v0, v181

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1182
    move-object/from16 v0, v25

    move-object/from16 v1, v181

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V
    :try_end_5a
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5a} :catch_71

    move-object/from16 v180, v181

    .line 1188
    .end local v181    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v180    # "notification":Lcom/android/server/NotificationManagerService;
    :goto_38
    :try_start_5b
    const-string v7, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    const-string v7, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v5}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_5b} :catch_2e

    .line 1195
    :goto_39
    if-nez v119, :cond_23

    .line 1197
    :try_start_5c
    const-string v7, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    new-instance v157, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v157

    invoke-direct {v0, v5}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_5c} :catch_2f

    .line 1199
    .end local v156    # "location":Lcom/android/server/LocationManagerService;
    .local v157, "location":Lcom/android/server/LocationManagerService;
    :try_start_5d
    const-string v7, "location"

    move-object/from16 v0, v157

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_5d .. :try_end_5d} :catch_70

    move-object/from16 v156, v157

    .line 1205
    .end local v157    # "location":Lcom/android/server/LocationManagerService;
    .restart local v156    # "location":Lcom/android/server/LocationManagerService;
    :goto_3a
    :try_start_5e
    const-string v7, "SystemServer"

    const-string v9, "Country Detector"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    new-instance v103, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v103

    invoke-direct {v0, v5}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_5e
    .catch Ljava/lang/Throwable; {:try_start_5e .. :try_end_5e} :catch_30

    .line 1207
    .end local v102    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v103, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_5f
    const-string v7, "country_detector"

    move-object/from16 v0, v103

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_5f} :catch_6f

    move-object/from16 v102, v103

    .line 1245
    .end local v103    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v102    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :cond_23
    :goto_3b
    :try_start_60
    const-string v7, "SystemServer"

    const-string v9, "SLocation Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    const-string v7, "com.samsung.location.SLocationLoader"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v198

    .line 1247
    .local v198, "sLocationLoader":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v7, "getSLocationService"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    const-class v12, Landroid/content/Context;

    aput-object v12, v9, v10

    move-object/from16 v0, v198

    invoke-virtual {v0, v7, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v142

    .line 1248
    .local v142, "getSLocationService":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    move-object/from16 v0, v142

    invoke-virtual {v0, v7, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/os/IBinder;

    move-object/from16 v197, v0

    .line 1249
    const-string/jumbo v7, "sec_location"

    move-object/from16 v0, v197

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1250
    const-string v7, "SystemServer"

    const-string v9, "Loading SLocationService has been completed."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_60} :catch_31

    .line 1255
    .end local v142    # "getSLocationService":Ljava/lang/reflect/Method;
    .end local v198    # "sLocationLoader":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_3c
    if-nez v122, :cond_24

    .line 1257
    :try_start_61
    const-string v7, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    const-string/jumbo v7, "search"

    new-instance v9, Lcom/android/server/search/SearchManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_61} :catch_32

    .line 1266
    :cond_24
    :goto_3d
    :try_start_62
    const-string v7, "com.sec.feature.spell_manager_service"

    move-object/from16 v0, v186

    invoke-interface {v0, v7}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_49

    .line 1267
    const-string v7, "SystemServer"

    const-string v9, "Spell Manager Service starting..."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    const-string/jumbo v7, "spell"

    new-instance v9, Landroid/server/spell/SpellManagerService;

    invoke-direct {v9, v5}, Landroid/server/spell/SpellManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_62} :catch_33

    .line 1278
    :goto_3e
    :try_start_63
    const-string v7, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    const-string v7, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v10, Ljava/io/File;

    const-string v12, "/data/system/dropbox"

    invoke-direct {v10, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v5, v10}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_63 .. :try_end_63} :catch_34

    .line 1285
    :goto_3f
    if-nez v122, :cond_25

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x1110032

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_25

    .line 1288
    :try_start_64
    const-string v7, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    if-nez v33, :cond_25

    .line 1290
    new-instance v234, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v234

    invoke-direct {v0, v5}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_64} :catch_35

    .line 1291
    .end local v233    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .local v234, "wallpaper":Lcom/android/server/WallpaperManagerService;
    :try_start_65
    const-string/jumbo v7, "wallpaper"

    move-object/from16 v0, v234

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_65} :catch_6e

    move-object/from16 v233, v234

    .line 1298
    .end local v234    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v233    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :cond_25
    :goto_40
    if-nez v120, :cond_26

    const-string v7, "0"

    const-string/jumbo v9, "system_init.startaudioservice"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_26

    .line 1300
    :try_start_66
    const-string v7, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    const-string v7, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v5}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_66} :catch_36

    .line 1306
    :cond_26
    :goto_41
    if-nez v122, :cond_27

    .line 1308
    :try_start_67
    const-string v7, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    new-instance v130, Lcom/android/server/DockObserver;

    move-object/from16 v0, v130

    invoke-direct {v0, v5}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;)V
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_67} :catch_37

    .end local v129    # "dock":Lcom/android/server/DockObserver;
    .local v130, "dock":Lcom/android/server/DockObserver;
    move-object/from16 v129, v130

    .line 1316
    .end local v130    # "dock":Lcom/android/server/DockObserver;
    .restart local v129    # "dock":Lcom/android/server/DockObserver;
    :cond_27
    :goto_42
    if-nez v120, :cond_28

    .line 1318
    :try_start_68
    const-string v7, "SystemServer"

    const-string v9, "Wired Accessory Manager"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    new-instance v7, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v20

    invoke-direct {v7, v5, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_68 .. :try_end_68} :catch_38

    .line 1327
    :cond_28
    :goto_43
    if-nez v122, :cond_29

    .line 1329
    :try_start_69
    const-string v7, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    new-instance v226, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v226

    invoke-direct {v0, v5}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_69} :catch_39

    .line 1332
    .end local v225    # "usb":Lcom/android/server/usb/UsbService;
    .local v226, "usb":Lcom/android/server/usb/UsbService;
    :try_start_6a
    const-string/jumbo v7, "usb"

    move-object/from16 v0, v226

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_6a .. :try_end_6a} :catch_6d

    move-object/from16 v225, v226

    .line 1338
    .end local v226    # "usb":Lcom/android/server/usb/UsbService;
    .restart local v225    # "usb":Lcom/android/server/usb/UsbService;
    :goto_44
    :try_start_6b
    const-string v7, "SystemServer"

    const-string v9, "Serial Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    new-instance v202, Lcom/android/server/SerialService;

    move-object/from16 v0, v202

    invoke-direct {v0, v5}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_6b .. :try_end_6b} :catch_3a

    .line 1341
    .end local v201    # "serial":Lcom/android/server/SerialService;
    .local v202, "serial":Lcom/android/server/SerialService;
    :try_start_6c
    const-string/jumbo v7, "serial"

    move-object/from16 v0, v202

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_6c .. :try_end_6c} :catch_6c

    move-object/from16 v201, v202

    .line 1348
    .end local v202    # "serial":Lcom/android/server/SerialService;
    .restart local v201    # "serial":Lcom/android/server/SerialService;
    :cond_29
    :goto_45
    :try_start_6d
    const-string v7, "SystemServer"

    const-string v9, "Twilight Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    new-instance v222, Lcom/android/server/TwilightService;

    move-object/from16 v0, v222

    invoke-direct {v0, v5}, Lcom/android/server/TwilightService;-><init>(Landroid/content/Context;)V
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_6d} :catch_3b

    .end local v221    # "twilight":Lcom/android/server/TwilightService;
    .local v222, "twilight":Lcom/android/server/TwilightService;
    move-object/from16 v221, v222

    .line 1355
    .end local v222    # "twilight":Lcom/android/server/TwilightService;
    .restart local v221    # "twilight":Lcom/android/server/TwilightService;
    :goto_46
    :try_start_6e
    const-string v7, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    new-instance v224, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v224

    move-object/from16 v1, v221

    invoke-direct {v0, v5, v1}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;Lcom/android/server/TwilightService;)V
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_6e} :catch_3c

    .end local v223    # "uiMode":Lcom/android/server/UiModeManagerService;
    .local v224, "uiMode":Lcom/android/server/UiModeManagerService;
    move-object/from16 v223, v224

    .line 1363
    .end local v224    # "uiMode":Lcom/android/server/UiModeManagerService;
    .restart local v223    # "uiMode":Lcom/android/server/UiModeManagerService;
    :goto_47
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v9, "CscFeature_Common_EnableSUA"

    invoke-virtual {v7, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2a

    .line 1366
    :try_start_6f
    const-string v7, "SystemServer"

    const-string v9, "KiesUsb Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    const-string v7, "kiesusb"

    new-instance v9, Lcom/android/server/KiesConnectivity/KiesUsbObserver;

    invoke-direct {v9, v5}, Lcom/android/server/KiesConnectivity/KiesUsbObserver;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_6f} :catch_3d

    .line 1374
    :cond_2a
    :goto_48
    if-nez v122, :cond_2b

    .line 1376
    :try_start_70
    const-string v7, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    const-string v7, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_70
    .catch Ljava/lang/Throwable; {:try_start_70 .. :try_end_70} :catch_3e

    .line 1384
    :goto_49
    :try_start_71
    const-string v7, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    new-instance v75, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v75

    invoke-direct {v0, v5}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_71 .. :try_end_71} :catch_3f

    .line 1386
    .end local v74    # "appWidget":Lcom/android/server/AppWidgetService;
    .local v75, "appWidget":Lcom/android/server/AppWidgetService;
    :try_start_72
    const-string v7, "appwidget"

    move-object/from16 v0, v75

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_72
    .catch Ljava/lang/Throwable; {:try_start_72 .. :try_end_72} :catch_6b

    move-object/from16 v74, v75

    .line 1392
    .end local v75    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v74    # "appWidget":Lcom/android/server/AppWidgetService;
    :goto_4a
    :try_start_73
    const-string v7, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    new-instance v196, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v196

    invoke-direct {v0, v5}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_73
    .catch Ljava/lang/Throwable; {:try_start_73 .. :try_end_73} :catch_40

    .end local v195    # "recognition":Lcom/android/server/RecognitionManagerService;
    .local v196, "recognition":Lcom/android/server/RecognitionManagerService;
    move-object/from16 v195, v196

    .line 1398
    .end local v196    # "recognition":Lcom/android/server/RecognitionManagerService;
    .restart local v195    # "recognition":Lcom/android/server/RecognitionManagerService;
    :cond_2b
    :goto_4b
    const-string/jumbo v7, "ro.SecEDS.enable"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v69

    .line 1400
    .local v69, "SecEDSEnable":Ljava/lang/String;
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SecEDS Service ro.tvout.enable = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v69

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    const-string v7, "false"

    move-object/from16 v0, v69

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2c

    .line 1408
    :try_start_74
    const-string v7, "SystemServer"

    const-string v9, "Starting SecEDSEnable Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    const/16 v134, 0x0

    .line 1412
    .local v134, "edsclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v7, "com.android.server.SecExternalDisplayService"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v134

    .line 1414
    if-nez v134, :cond_4a

    .line 1416
    const-string v7, "SystemServer"

    const-string v9, "eds Service not exist"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_74 .. :try_end_74} :catch_41

    .line 1443
    .end local v134    # "edsclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2c
    :goto_4c
    :try_start_75
    const-string v7, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    const-string v7, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v5}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_75
    .catch Ljava/lang/Throwable; {:try_start_75 .. :try_end_75} :catch_42

    .line 1470
    :goto_4d
    :try_start_76
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v183

    .line 1471
    .local v183, "pM":Landroid/content/pm/PackageManager;
    if-eqz v183, :cond_2d

    .line 1472
    const-string v7, "com.sec.feature.cocktailbar"

    move-object/from16 v0, v183

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2d

    .line 1473
    const-string v7, "SystemServer"

    const-string v9, "CocktailBar Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    const-string v7, "CocktailBarService"

    new-instance v9, Lcom/android/server/cocktailbar/CocktailBarManagerService;

    invoke-direct {v9, v5}, Lcom/android/server/cocktailbar/CocktailBarManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_76
    .catch Ljava/lang/Throwable; {:try_start_76 .. :try_end_76} :catch_43

    .line 1486
    .end local v183    # "pM":Landroid/content/pm/PackageManager;
    :cond_2d
    :goto_4e
    :try_start_77
    const-string v7, "SystemServer"

    const-string v9, "SamplingProfiler Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    const-string/jumbo v7, "samplingprofiler"

    new-instance v9, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v9, v5}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_77 .. :try_end_77} :catch_44

    .line 1493
    :goto_4f
    if-nez v121, :cond_2e

    .line 1495
    :try_start_78
    const-string v7, "SystemServer"

    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    new-instance v179, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v179

    invoke-direct {v0, v5}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_78
    .catch Ljava/lang/Throwable; {:try_start_78 .. :try_end_78} :catch_45

    .end local v178    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v179, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v178, v179

    .line 1528
    .end local v179    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v178    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :cond_2e
    :goto_50
    if-nez v120, :cond_2f

    .line 1530
    :try_start_79
    const-string v7, "SystemServer"

    const-string v9, "CommonTimeManagementService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    new-instance v91, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v91

    invoke-direct {v0, v5}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_79
    .catch Ljava/lang/Throwable; {:try_start_79 .. :try_end_79} :catch_46

    .line 1532
    .end local v90    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v91, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :try_start_7a
    const-string v7, "commontime_management"

    move-object/from16 v0, v91

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7a
    .catch Ljava/lang/Throwable; {:try_start_7a .. :try_end_7a} :catch_6a

    move-object/from16 v90, v91

    .line 1538
    .end local v91    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v90    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :cond_2f
    :goto_51
    if-nez v121, :cond_30

    .line 1540
    :try_start_7b
    const-string v7, "SystemServer"

    const-string v9, "CertBlacklister"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    new-instance v7, Lcom/android/server/CertBlacklister;

    invoke-direct {v7, v5}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_7b
    .catch Ljava/lang/Throwable; {:try_start_7b .. :try_end_7b} :catch_47

    .line 1547
    :cond_30
    :goto_52
    if-nez v122, :cond_31

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x111004c

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_31

    .line 1550
    :try_start_7c
    const-string v7, "SystemServer"

    const-string v9, "Dreams Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    new-instance v132, Lcom/android/server/dreams/DreamManagerService;

    move-object/from16 v0, v132

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v1}, Lcom/android/server/dreams/DreamManagerService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
    :try_end_7c
    .catch Ljava/lang/Throwable; {:try_start_7c .. :try_end_7c} :catch_48

    .line 1553
    .end local v131    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .local v132, "dreamy":Lcom/android/server/dreams/DreamManagerService;
    :try_start_7d
    const-string v7, "dreams"

    move-object/from16 v0, v132

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7d
    .catch Ljava/lang/Throwable; {:try_start_7d .. :try_end_7d} :catch_69

    move-object/from16 v131, v132

    .line 1559
    .end local v132    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v131    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    :cond_31
    :goto_53
    if-nez v122, :cond_32

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v7

    if-nez v7, :cond_32

    if-nez v117, :cond_32

    .line 1561
    :try_start_7e
    const-string v7, "SystemServer"

    const-string v9, "Assets Atlas Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    new-instance v78, Lcom/android/server/AssetAtlasService;

    move-object/from16 v0, v78

    invoke-direct {v0, v5}, Lcom/android/server/AssetAtlasService;-><init>(Landroid/content/Context;)V
    :try_end_7e
    .catch Ljava/lang/Throwable; {:try_start_7e .. :try_end_7e} :catch_49

    .line 1563
    .end local v77    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v78, "atlas":Lcom/android/server/AssetAtlasService;
    :try_start_7f
    const-string v7, "assetatlas"

    move-object/from16 v0, v78

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7f
    .catch Ljava/lang/Throwable; {:try_start_7f .. :try_end_7f} :catch_68

    move-object/from16 v77, v78

    .line 1570
    .end local v78    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v77    # "atlas":Lcom/android/server/AssetAtlasService;
    :cond_32
    :goto_54
    :try_start_80
    const-string v7, "SystemServer"

    const-string v9, "IdleMaintenanceService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    new-instance v7, Lcom/android/server/IdleMaintenanceService;

    invoke-direct {v7, v5, v8}, Lcom/android/server/IdleMaintenanceService;-><init>(Landroid/content/Context;Lcom/android/server/BatteryService;)V
    :try_end_80
    .catch Ljava/lang/Throwable; {:try_start_80 .. :try_end_80} :catch_4a

    .line 1578
    :goto_55
    const-string v7, "SystemServer"

    const-string v9, "SEC_PRODUCT_FEATURE_ABSOLUTE_ENABLE=FALSE - true"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    :try_start_81
    const-string v7, "SystemServer"

    const-string v9, "Absolute Persistence Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    const-string v7, "ABTPersistenceService"

    new-instance v9, Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-direct {v9, v5}, Lcom/absolute/android/persistservice/ABTPersistenceService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_81
    .catch Ljava/lang/Throwable; {:try_start_81 .. :try_end_81} :catch_4b

    .line 1590
    :goto_56
    :try_start_82
    const-string v7, "SystemServer"

    const-string v9, "Print Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    new-instance v189, Lcom/android/server/print/PrintManagerService;

    move-object/from16 v0, v189

    invoke-direct {v0, v5}, Lcom/android/server/print/PrintManagerService;-><init>(Landroid/content/Context;)V
    :try_end_82
    .catch Ljava/lang/Throwable; {:try_start_82 .. :try_end_82} :catch_4c

    .line 1592
    .end local v188    # "printManager":Lcom/android/server/print/PrintManagerService;
    .local v189, "printManager":Lcom/android/server/print/PrintManagerService;
    :try_start_83
    const-string v7, "print"

    move-object/from16 v0, v189

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_83
    .catch Ljava/lang/Throwable; {:try_start_83 .. :try_end_83} :catch_67

    move-object/from16 v188, v189

    .line 1597
    .end local v189    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v188    # "printManager":Lcom/android/server/print/PrintManagerService;
    :goto_57
    if-nez v122, :cond_33

    .line 1599
    :try_start_84
    const-string v7, "SystemServer"

    const-string v9, "Media Router Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    new-instance v164, Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, v164

    invoke-direct {v0, v5}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_84
    .catch Ljava/lang/Throwable; {:try_start_84 .. :try_end_84} :catch_4d

    .line 1601
    .end local v163    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v164, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_85
    const-string v7, "media_router"

    move-object/from16 v0, v164

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_85
    .catch Ljava/lang/Throwable; {:try_start_85 .. :try_end_85} :catch_66

    move-object/from16 v163, v164

    .line 1607
    .end local v164    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v163    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :cond_33
    :goto_58
    if-eqz v113, :cond_34

    .line 1609
    :try_start_86
    const-string v7, "SystemServer"

    const-string v9, "Digital Pen Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    new-instance v115, Ldalvik/system/PathClassLoader;

    const-string/jumbo v7, "system/framework/DigitalPenService.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    move-object/from16 v0, v115

    invoke-direct {v0, v7, v9}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1613
    .local v115, "digitalPenClassLoader":Ldalvik/system/PathClassLoader;
    const-string v7, "com.qti.snapdragon.digitalpen.DigitalPenService"

    move-object/from16 v0, v115

    invoke-virtual {v0, v7}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v114

    .line 1615
    .local v114, "digitalPenClass":Ljava/lang/Class;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v7, v9

    move-object/from16 v0, v114

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v106

    .line 1616
    .local v106, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v7, v9

    move-object/from16 v0, v106

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v116

    .line 1617
    .local v116, "digitalPenRemoteObject":Ljava/lang/Object;
    const-string v7, "SystemServer"

    const-string v9, "Successfully loaded DigitalPenService class"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    const-string v7, "DigitalPen"

    check-cast v116, Landroid/os/IBinder;

    .end local v116    # "digitalPenRemoteObject":Ljava/lang/Object;
    move-object/from16 v0, v116

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_86
    .catch Ljava/lang/Throwable; {:try_start_86 .. :try_end_86} :catch_4e

    .line 1638
    .end local v106    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .end local v114    # "digitalPenClass":Ljava/lang/Class;
    .end local v115    # "digitalPenClassLoader":Ldalvik/system/PathClassLoader;
    :cond_34
    :goto_59
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v184

    .line 1639
    .local v184, "packageMgr":Landroid/content/pm/PackageManager;
    const-string v7, "com.sec.feature.minimode"

    move-object/from16 v0, v184

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_36

    .line 1641
    :try_start_87
    const-string v7, "SystemServer"

    const-string v9, "MiniModeAppManager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    const-string v166, "/data/dalvik-cache/system@framework@minimode.jar@classes.dex"

    .line 1643
    .local v166, "minimodeFrameworkDexPath":Ljava/lang/String;
    const-string v168, "/data/dalvik-cache/minimode.dex"

    .line 1645
    .local v168, "minimodeGenDexPath":Ljava/lang/String;
    sget-object v7, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    move-object/from16 v0, v166

    invoke-interface {v7, v0}, Llibcore/io/Os;->stat(Ljava/lang/String;)Llibcore/io/StructStat;

    move-result-object v207

    .line 1646
    .local v207, "stat":Llibcore/io/StructStat;
    if-eqz v207, :cond_35

    .line 1647
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, v166

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/io/File;

    move-object/from16 v0, v168

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v9}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_35

    .line 1648
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v168

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is copied from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v166

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    new-instance v167, Ljava/io/File;

    invoke-direct/range {v167 .. v168}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1650
    .local v167, "minimodeGenDexFile":Ljava/io/File;
    move-object/from16 v0, v207

    iget-wide v9, v0, Llibcore/io/StructStat;->st_mtime:J

    move-object/from16 v0, v167

    invoke-virtual {v0, v9, v10}, Ljava/io/File;->setLastModified(J)Z

    move-result v7

    if-eqz v7, :cond_35

    .line 1651
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "lastModfied time of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v168

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is changed to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v207

    iget-wide v12, v0, Llibcore/io/StructStat;->st_mtime:J

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    .end local v167    # "minimodeGenDexFile":Ljava/io/File;
    :cond_35
    new-instance v86, Ldalvik/system/DexClassLoader;

    const-string v7, "/system/framework/minimode.jar"

    const-string v9, "/data/dalvik-cache/"

    const/4 v10, 0x0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    move-object/from16 v0, v86

    invoke-direct {v0, v7, v9, v10, v12}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1658
    .local v86, "cl":Ljava/lang/ClassLoader;
    const-string v7, "com.sec.minimode.manager.MiniModeAppManagerService"

    move-object/from16 v0, v86

    invoke-virtual {v0, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v67

    .line 1659
    .local v67, "MiniModeAppManagerServiceClass":Ljava/lang/Class;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v7, v9

    move-object/from16 v0, v67

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v68

    .line 1660
    .local v68, "MiniModeAppManagerServiceContructor":Ljava/lang/reflect/Constructor;
    const-string v9, "mini_mode_app_manager"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v7, v10

    move-object/from16 v0, v68

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/IBinder;

    invoke-static {v9, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_87
    .catch Ljava/lang/Throwable; {:try_start_87 .. :try_end_87} :catch_4f

    .line 1669
    .end local v67    # "MiniModeAppManagerServiceClass":Ljava/lang/Class;
    .end local v68    # "MiniModeAppManagerServiceContructor":Ljava/lang/reflect/Constructor;
    .end local v86    # "cl":Ljava/lang/ClassLoader;
    .end local v166    # "minimodeFrameworkDexPath":Ljava/lang/String;
    .end local v168    # "minimodeGenDexPath":Ljava/lang/String;
    .end local v207    # "stat":Llibcore/io/StructStat;
    :cond_36
    :goto_5a
    const-string v7, "com.sec.feature.barcode_emulator"

    move-object/from16 v0, v184

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_37

    .line 1671
    :try_start_88
    const-string v7, "SystemServer"

    const-string v9, "BarBeamService"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    new-instance v79, Landroid/app/BarBeamService;

    move-object/from16 v0, v79

    invoke-direct {v0, v5}, Landroid/app/BarBeamService;-><init>(Landroid/content/Context;)V

    .line 1674
    .local v79, "barbeam":Landroid/app/BarBeamService;
    const-string v7, "barbeam"

    move-object/from16 v0, v79

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_88
    .catch Ljava/lang/Throwable; {:try_start_88 .. :try_end_88} :catch_50

    .line 1682
    .end local v79    # "barbeam":Landroid/app/BarBeamService;
    :cond_37
    :goto_5b
    :try_start_89
    const-string v7, "SystemServer"

    const-string v9, "Motion Recognition Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    const-string v7, "motion_recognition"

    new-instance v9, Landroid/hardware/motion/MotionRecognitionService;

    invoke-direct {v9, v5}, Landroid/hardware/motion/MotionRecognitionService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_89
    .catch Ljava/lang/Throwable; {:try_start_89 .. :try_end_89} :catch_51

    .line 1690
    :goto_5c
    :try_start_8a
    const-string v7, "SystemServer"

    const-string v9, "CEP Proxy KS Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    const-string v7, "cepproxyks"

    new-instance v9, Lcom/android/server/cepproxyks/ScepKeystoreProxyService;

    invoke-direct {v9, v5}, Lcom/android/server/cepproxyks/ScepKeystoreProxyService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8a
    .catch Ljava/lang/Throwable; {:try_start_8a .. :try_end_8a} :catch_52

    .line 1698
    :goto_5d
    :try_start_8b
    const-string v7, "SystemServer"

    const-string v9, "VoIPInterfaceManager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    const-string/jumbo v7, "voip"

    new-instance v9, Lcom/android/server/VoIPInterfaceManager;

    invoke-direct {v9, v5}, Lcom/android/server/VoIPInterfaceManager;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8b
    .catch Ljava/lang/Throwable; {:try_start_8b .. :try_end_8b} :catch_53

    .line 1706
    :goto_5e
    const-string v7, "com.sec.feature.cover.flip"

    move-object/from16 v0, v184

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_38

    const-string v7, "com.sec.feature.cover.sview"

    move-object/from16 v0, v184

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_39

    .line 1709
    :cond_38
    :try_start_8c
    const-string v7, "SystemServer"

    const-string v9, "CoverManager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    new-instance v104, Lcom/android/server/cover/CoverManagerService;

    move-object/from16 v0, v104

    move-object/from16 v1, v240

    move-object/from16 v2, v20

    invoke-direct {v0, v5, v1, v2}, Lcom/android/server/cover/CoverManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/input/InputManagerService;)V

    .line 1711
    .local v104, "cover":Lcom/android/server/cover/CoverManagerService;
    const-string v7, "cover"

    move-object/from16 v0, v104

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8c
    .catch Ljava/lang/Throwable; {:try_start_8c .. :try_end_8c} :catch_54

    .line 1719
    .end local v104    # "cover":Lcom/android/server/cover/CoverManagerService;
    :cond_39
    :goto_5f
    :try_start_8d
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v183

    .line 1720
    .restart local v183    # "pM":Landroid/content/pm/PackageManager;
    if-eqz v183, :cond_3d

    .line 1721
    const-string v7, "SystemServer"

    const-string v9, "PackageManager is not null!!"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    const/16 v152, 0x0

    .line 1723
    .local v152, "isAddService":Z
    const-string v7, "com.sec.feature.multiwindow"

    move-object/from16 v0, v183

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3a

    .line 1724
    const/16 v152, 0x1

    .line 1726
    :cond_3a
    const-string v7, "com.sec.feature.spen_usp"

    move-object/from16 v0, v183

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v7

    const/4 v9, 0x2

    if-lt v7, v9, :cond_3b

    .line 1727
    const/16 v152, 0x1

    .line 1729
    :cond_3b
    const-string v7, "com.sec.feature.spen_usp"

    move-object/from16 v0, v183

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v7

    const/4 v9, 0x1

    if-ne v7, v9, :cond_3c

    .line 1730
    const/16 v152, 0x0

    .line 1732
    :cond_3c
    if-eqz v152, :cond_3d

    .line 1733
    const-string v7, "SystemServer"

    const-string v9, "SpenGestureManagerService enable"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    const-string/jumbo v7, "spengestureservice"

    new-instance v9, Lcom/android/server/smartclip/SpenGestureManagerService;

    move-object/from16 v0, v240

    invoke-direct {v9, v5, v0}, Lcom/android/server/smartclip/SpenGestureManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8d
    .catch Ljava/lang/Throwable; {:try_start_8d .. :try_end_8d} :catch_55

    .line 1743
    .end local v152    # "isAddService":Z
    .end local v183    # "pM":Landroid/content/pm/PackageManager;
    :cond_3d
    :goto_60
    :try_start_8e
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v183

    .line 1744
    .restart local v183    # "pM":Landroid/content/pm/PackageManager;
    if-eqz v183, :cond_3e

    .line 1746
    const-string v7, "SystemServer"

    const-string v9, "PackageManager is not null!!"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    const-string v7, "com.sec.feature.healthcover"

    move-object/from16 v0, v183

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    const/4 v9, 0x1

    if-ne v7, v9, :cond_3e

    .line 1748
    const-string v7, "SystemServer"

    const-string v9, "HealthCoverManager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    new-instance v144, Ldalvik/system/PathClassLoader;

    const-string v7, "/system/framework/healthcoverservice.jar"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    move-object/from16 v0, v144

    invoke-direct {v0, v7, v9}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1750
    .local v144, "hcClassLoader":Ldalvik/system/PathClassLoader;
    const-string v7, "com.samsung.android.healthcover.HealthCoverService"

    move-object/from16 v0, v144

    invoke-virtual {v0, v7}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v143

    .line 1751
    .local v143, "hcClass":Ljava/lang/Class;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v7, v9

    move-object/from16 v0, v143

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v145

    .line 1752
    .local v145, "hcConstructor":Ljava/lang/reflect/Constructor;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v7, v9

    move-object/from16 v0, v145

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v146

    check-cast v146, Landroid/os/IBinder;

    .line 1753
    .local v146, "hcService":Landroid/os/IBinder;
    const-string v7, "healthcover"

    move-object/from16 v0, v146

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_8e} :catch_56

    .line 1767
    .end local v69    # "SecEDSEnable":Ljava/lang/String;
    .end local v143    # "hcClass":Ljava/lang/Class;
    .end local v144    # "hcClassLoader":Ldalvik/system/PathClassLoader;
    .end local v145    # "hcConstructor":Ljava/lang/reflect/Constructor;
    .end local v146    # "hcService":Landroid/os/IBinder;
    .end local v162    # "mdsEnable":Ljava/lang/String;
    .end local v183    # "pM":Landroid/content/pm/PackageManager;
    .end local v184    # "packageMgr":Landroid/content/pm/PackageManager;
    :cond_3e
    :goto_61
    :try_start_8f
    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v86

    .line 1768
    .restart local v86    # "cl":Ljava/lang/ClassLoader;
    const-string v7, "com.sec.android.smartface.SmartFaceManager"

    const/4 v9, 0x1

    move-object/from16 v0, v86

    invoke-static {v7, v9, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v87

    .line 1769
    .local v87, "class_SmartFaceManager":Ljava/lang/Class;
    const-string v7, "SMARTFACE_SERVICE"

    move-object/from16 v0, v87

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v140

    .line 1771
    .local v140, "field_SMARTFACE_SERVICE":Ljava/lang/reflect/Field;
    const-string v7, "com.sec.android.smartface.SmartFaceService"

    const/4 v9, 0x1

    move-object/from16 v0, v86

    invoke-static {v7, v9, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v88

    .line 1772
    .local v88, "class_SmartFaceService":Ljava/lang/Class;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v7, v9

    move-object/from16 v0, v88

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v96

    .line 1774
    .local v96, "constructor_SmartFaceService":Ljava/lang/reflect/Constructor;
    const/4 v7, 0x0

    move-object/from16 v0, v140

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    move-object/from16 v0, v96

    invoke-virtual {v0, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/IBinder;

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1775
    const-string v7, "SystemServer"

    const-string v9, "SmartFaceService loaded!"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_8f} :catch_57

    .line 1783
    .end local v86    # "cl":Ljava/lang/ClassLoader;
    .end local v87    # "class_SmartFaceManager":Ljava/lang/Class;
    .end local v88    # "class_SmartFaceService":Ljava/lang/Class;
    .end local v96    # "constructor_SmartFaceService":Ljava/lang/reflect/Constructor;
    .end local v140    # "field_SMARTFACE_SERVICE":Ljava/lang/reflect/Field;
    :goto_62
    invoke-static {}, Lcom/samsung/appdisabler/AppDisablerService;->configurationFileExists()Z

    move-result v7

    if-eqz v7, :cond_3f

    .line 1785
    :try_start_90
    new-instance v73, Lcom/samsung/appdisabler/AppDisablerService;

    move-object/from16 v0, v73

    invoke-direct {v0, v5}, Lcom/samsung/appdisabler/AppDisablerService;-><init>(Landroid/content/Context;)V

    .line 1786
    .local v73, "appDisablerService":Lcom/samsung/appdisabler/AppDisablerService;
    const-string v7, "SamsungAppDisabler"

    move-object/from16 v0, v73

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_90
    .catch Ljava/lang/Throwable; {:try_start_90 .. :try_end_90} :catch_58

    .line 1816
    .end local v73    # "appDisablerService":Lcom/samsung/appdisabler/AppDisablerService;
    :cond_3f
    :goto_63
    const-string v7, "SystemServer"

    const-string v9, "Wait for CP upgrade - start"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    :goto_64
    const-string/jumbo v7, "ril.cbd.boot_done"

    const-string v9, "0"

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "2"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4b

    .line 1818
    const-wide/16 v9, 0x3e8

    invoke-static {v9, v10}, Landroid/os/SystemClock;->sleep(J)V

    .line 1819
    const-string v7, "SystemServer"

    const-string v9, "Wait for CP upgrade ..."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64

    .line 465
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v74    # "appWidget":Lcom/android/server/AppWidgetService;
    .end local v77    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v102    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v111    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .end local v131    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .end local v135    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v147    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v156    # "location":Lcom/android/server/LocationManagerService;
    .end local v158    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v163    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v180    # "notification":Lcom/android/server/NotificationManagerService;
    .end local v188    # "printManager":Lcom/android/server/print/PrintManagerService;
    .end local v197    # "sLocation":Landroid/os/IBinder;
    .end local v208    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .end local v219    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v230    # "vrManager":Lcom/android/server/VRManagerService;
    .end local v233    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v80    # "battery":Lcom/android/server/BatteryService;
    .restart local v105    # "cryptState":Ljava/lang/String;
    .restart local v149    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v155    # "lights":Lcom/android/server/LightsService;
    .restart local v176    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :cond_40
    :try_start_91
    const-string v7, "1"

    move-object/from16 v0, v105

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 466
    const-string v7, "SystemServer"

    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    const/16 v24, 0x1

    goto/16 :goto_7

    .line 472
    :cond_41
    const/4 v7, 0x0

    goto/16 :goto_8

    .line 496
    .restart local v154    # "knoxVerInfo":Landroid/os/Bundle;
    :catch_2
    move-exception v133

    .line 497
    .local v133, "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting SE Android Manager Service"

    move-object/from16 v0, v133

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_91
    .catch Ljava/lang/RuntimeException; {:try_start_91 .. :try_end_91} :catch_3

    goto/16 :goto_a

    .line 758
    .end local v105    # "cryptState":Ljava/lang/String;
    .end local v133    # "e":Ljava/lang/Throwable;
    .end local v154    # "knoxVerInfo":Landroid/os/Bundle;
    :catch_3
    move-exception v133

    move-object/from16 v20, v149

    .end local v149    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v72

    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v80

    .end local v80    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v155

    .line 759
    .end local v155    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    .local v133, "e":Ljava/lang/RuntimeException;
    :goto_65
    const-string v7, "System"

    const-string v9, "******************************************"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    const-string v7, "System"

    const-string v9, "************ Failure starting core service"

    move-object/from16 v0, v133

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_18

    .line 518
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v133    # "e":Ljava/lang/RuntimeException;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v80    # "battery":Lcom/android/server/BatteryService;
    .restart local v105    # "cryptState":Ljava/lang/String;
    .restart local v149    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v154    # "knoxVerInfo":Landroid/os/Bundle;
    .restart local v155    # "lights":Lcom/android/server/LightsService;
    .restart local v227    # "versionInfo":Landroid/os/Bundle;
    :catch_4
    move-exception v133

    .line 519
    .local v133, "e":Ljava/lang/Throwable;
    :goto_66
    :try_start_92
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Account Manager"

    move-object/from16 v0, v133

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b

    .line 528
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_5
    move-exception v133

    .line 529
    .restart local v133    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting KT UCA Service"

    move-object/from16 v0, v133

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_92
    .catch Ljava/lang/RuntimeException; {:try_start_92 .. :try_end_92} :catch_3

    goto/16 :goto_c

    .line 535
    .end local v133    # "e":Ljava/lang/Throwable;
    :cond_42
    const/4 v7, 0x0

    goto/16 :goto_d

    .line 545
    .end local v107    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v108    # "dEncService":Lcom/android/server/DirEncryptService;
    :catch_6
    move-exception v133

    .line 546
    .restart local v133    # "e":Ljava/lang/Throwable;
    :try_start_93
    const-string v7, "SystemServer"

    const-string v9, "Failure starting DirEncryptService"

    move-object/from16 v0, v133

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_93
    .catch Ljava/lang/RuntimeException; {:try_start_93 .. :try_end_93} :catch_87

    .line 547
    const/16 v107, 0x0

    .end local v108    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v107    # "dEncService":Lcom/android/server/DirEncryptService;
    goto/16 :goto_e

    .line 572
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_7
    move-exception v133

    .line 573
    .restart local v133    # "e":Ljava/lang/Throwable;
    :goto_67
    :try_start_94
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failure starting Container Service"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static/range {v133 .. v133}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 595
    .end local v133    # "e":Ljava/lang/Throwable;
    .restart local v213    # "timaEnabled":Z
    :catch_8
    move-exception v133

    .line 596
    .restart local v133    # "e":Ljava/lang/Throwable;
    :goto_68
    const-string/jumbo v7, "starting TimaService"

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 606
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_9
    move-exception v133

    .line 607
    .restart local v133    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting TimaObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 619
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_a
    move-exception v133

    .line 620
    .local v133, "e":Ljava/lang/Exception;
    const-string v7, "SystemServer"

    const-string v9, "Unable to add TimaKesytore provider"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    invoke-virtual/range {v133 .. v133}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_94
    .catch Ljava/lang/RuntimeException; {:try_start_94 .. :try_end_94} :catch_3

    goto/16 :goto_12

    .line 662
    .end local v80    # "battery":Lcom/android/server/BatteryService;
    .end local v133    # "e":Ljava/lang/Exception;
    .end local v155    # "lights":Lcom/android/server/LightsService;
    .end local v228    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    .restart local v210    # "tactileAssist":Lcom/android/server/TactileAssistService;
    .restart local v229    # "vibrator":Lcom/android/server/VibratorService;
    :catch_b
    move-exception v133

    .line 663
    .restart local v133    # "e":Ljava/lang/Exception;
    :try_start_95
    const-string v7, "SystemServer"

    const-string/jumbo v9, "ssrm.jar not found"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_95
    .catch Ljava/lang/RuntimeException; {:try_start_95 .. :try_end_95} :catch_c

    goto/16 :goto_13

    .line 758
    .end local v133    # "e":Ljava/lang/Exception;
    :catch_c
    move-exception v133

    move-object/from16 v20, v149

    .end local v149    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v72

    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v228, v229

    .end local v229    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v228    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_65

    .line 705
    .end local v97    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v127    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .end local v228    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v98    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v128    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .restart local v229    # "vibrator":Lcom/android/server/VibratorService;
    :cond_43
    const/16 v22, 0x0

    goto/16 :goto_14

    :cond_44
    const/16 v23, 0x0

    goto/16 :goto_15

    .line 727
    :cond_45
    const/4 v7, 0x1

    move/from16 v0, v138

    if-ne v0, v7, :cond_46

    .line 728
    :try_start_96
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    .line 758
    :catch_d
    move-exception v133

    move-object/from16 v97, v98

    .end local v98    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v97    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v127, v128

    .end local v128    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .restart local v127    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    move-object/from16 v228, v229

    .end local v229    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v228    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_65

    .line 729
    .end local v97    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v127    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .end local v228    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v98    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v128    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .restart local v229    # "vibrator":Lcom/android/server/VibratorService;
    :cond_46
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v9, "android.hardware.bluetooth"

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_47

    .line 731
    const-string v7, "SystemServer"

    const-string v9, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    .line 732
    :cond_47
    if-eqz v118, :cond_48

    .line 733
    const-string v7, "SystemServer"

    const-string v9, "Bluetooth Service disabled by config"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    .line 735
    :cond_48
    const-string v7, "SystemServer"

    const-string v9, "Bluetooth Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    new-instance v82, Lcom/android/server/BluetoothManagerService;

    move-object/from16 v0, v82

    invoke-direct {v0, v5}, Lcom/android/server/BluetoothManagerService;-><init>(Landroid/content/Context;)V
    :try_end_96
    .catch Ljava/lang/RuntimeException; {:try_start_96 .. :try_end_96} :catch_d

    .line 737
    .end local v81    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .local v82, "bluetooth":Lcom/android/server/BluetoothManagerService;
    :try_start_97
    const-string v7, "bluetooth_manager"

    move-object/from16 v0, v82

    invoke-static {v7, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 740
    const-string v7, "SystemServer"

    const-string v9, "Bluetooth Secure Mode Manager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    const-string v7, "bluetooth_secure_mode_manager"

    new-instance v9, Landroid/app/BluetoothSecureManagerService;

    invoke-direct {v9, v5}, Landroid/app/BluetoothSecureManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_97
    .catch Ljava/lang/RuntimeException; {:try_start_97 .. :try_end_97} :catch_8f

    move-object/from16 v81, v82

    .end local v82    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v81    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    goto/16 :goto_16

    .line 752
    :catch_e
    move-exception v133

    .line 753
    .local v133, "e":Ljava/lang/Throwable;
    :goto_69
    :try_start_98
    const-string v7, "SystemServer"

    const-string v9, "Failure starting RCP Manager Service"

    move-object/from16 v0, v133

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_98
    .catch Ljava/lang/RuntimeException; {:try_start_98 .. :try_end_98} :catch_d

    goto/16 :goto_17

    .line 793
    .end local v98    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v105    # "cryptState":Ljava/lang/String;
    .end local v128    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .end local v133    # "e":Ljava/lang/Throwable;
    .end local v154    # "knoxVerInfo":Landroid/os/Bundle;
    .end local v210    # "tactileAssist":Lcom/android/server/TactileAssistService;
    .end local v213    # "timaEnabled":Z
    .end local v227    # "versionInfo":Landroid/os/Bundle;
    .end local v229    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v74    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v77    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v97    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v102    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v111    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v127    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .restart local v131    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v135    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v147    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v156    # "location":Lcom/android/server/LocationManagerService;
    .restart local v158    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v163    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v180    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v188    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v197    # "sLocation":Landroid/os/IBinder;
    .restart local v208    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v219    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v228    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v230    # "vrManager":Lcom/android/server/VRManagerService;
    .restart local v233    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :catch_f
    move-exception v133

    .line 794
    .restart local v133    # "e":Ljava/lang/Throwable;
    :goto_6a
    const-string/jumbo v7, "starting Input MethodManager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 801
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_10
    move-exception v133

    .line 802
    .restart local v133    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 810
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_11
    move-exception v133

    .line 811
    .restart local v133    # "e":Ljava/lang/Throwable;
    const-string v7, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 817
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_12
    move-exception v133

    .line 818
    .restart local v133    # "e":Ljava/lang/Throwable;
    const-string v7, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 834
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_13
    move-exception v133

    .line 835
    .restart local v133    # "e":Ljava/lang/Throwable;
    const-string v7, "making Containerservice preSystemReady ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 845
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_14
    move-exception v133

    .line 846
    .restart local v133    # "e":Ljava/lang/Throwable;
    :goto_6b
    const-string/jumbo v7, "starting DevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 859
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_15
    move-exception v133

    .line 860
    .restart local v133    # "e":Ljava/lang/Throwable;
    :goto_6c
    const-string/jumbo v7, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 871
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_16
    move-exception v133

    .line 872
    .restart local v133    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting DirEncryption service"

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 894
    .end local v133    # "e":Ljava/lang/Throwable;
    .restart local v162    # "mdsEnable":Ljava/lang/String;
    :catch_17
    move-exception v133

    .line 895
    .restart local v133    # "e":Ljava/lang/Throwable;
    :goto_6d
    const-string/jumbo v7, "starting VR Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 918
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_18
    move-exception v133

    .line 919
    .restart local v133    # "e":Ljava/lang/Throwable;
    :goto_6e
    const-string/jumbo v7, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 935
    .end local v133    # "e":Ljava/lang/Throwable;
    .restart local v227    # "versionInfo":Landroid/os/Bundle;
    :catch_19
    move-exception v133

    .line 936
    .restart local v133    # "e":Ljava/lang/Throwable;
    const-string v7, "Unable to call PMS preSystemReady method"

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 946
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_1a
    move-exception v133

    .line 947
    .restart local v133    # "e":Ljava/lang/Throwable;
    :goto_6f
    const-string/jumbo v7, "unable to start SdpManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 956
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_1b
    move-exception v133

    .line 957
    .restart local v133    # "e":Ljava/lang/Throwable;
    :goto_70
    const-string v7, "SystemServer"

    const-string v9, "Failure starting EnterpriseDeviceManagerService"

    move-object/from16 v0, v133

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_26

    .line 968
    .end local v133    # "e":Ljava/lang/Throwable;
    .end local v227    # "versionInfo":Landroid/os/Bundle;
    :catch_1c
    move-exception v133

    .line 969
    .restart local v133    # "e":Ljava/lang/Throwable;
    :goto_71
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Harmony EAS service"

    move-object/from16 v0, v133

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_27

    .line 978
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_1d
    move-exception v133

    .line 979
    .restart local v133    # "e":Ljava/lang/Throwable;
    :goto_72
    const-string/jumbo v7, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 988
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_1e
    move-exception v133

    .line 989
    .restart local v133    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 1001
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_1f
    move-exception v133

    .line 1002
    .restart local v133    # "e":Ljava/lang/Throwable;
    const-string v7, "Failure starting ClipboardEx Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 1010
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_20
    move-exception v133

    .line 1011
    .restart local v133    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .line 1020
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_21
    move-exception v133

    .line 1021
    .restart local v133    # "e":Ljava/lang/Throwable;
    :goto_73
    const-string/jumbo v7, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .line 1030
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_22
    move-exception v133

    .line 1031
    .restart local v133    # "e":Ljava/lang/Throwable;
    :goto_74
    const-string/jumbo v7, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .line 1040
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_23
    move-exception v133

    move-object/from16 v25, v176

    .line 1041
    .end local v176    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v133    # "e":Ljava/lang/Throwable;
    :goto_75
    const-string/jumbo v7, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 1048
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_24
    move-exception v133

    .line 1049
    .restart local v133    # "e":Ljava/lang/Throwable;
    :goto_76
    const-string/jumbo v7, "starting Wi-Fi P2pService"

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 1056
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_25
    move-exception v133

    .line 1057
    .restart local v133    # "e":Ljava/lang/Throwable;
    :goto_77
    const-string/jumbo v7, "starting Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .line 1065
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_26
    move-exception v133

    .line 1066
    .restart local v133    # "e":Ljava/lang/Throwable;
    :goto_78
    const-string/jumbo v7, "starting MSAP Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 1080
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_27
    move-exception v133

    .line 1081
    .restart local v133    # "e":Ljava/lang/Throwable;
    :goto_79
    const-string/jumbo v7, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_32

    .line 1127
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_28
    move-exception v133

    .line 1128
    .restart local v133    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .line 1134
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_29
    move-exception v133

    .line 1135
    .restart local v133    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting DpmService"

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_34

    .line 1144
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_2a
    move-exception v133

    .line 1145
    .restart local v133    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_35

    .line 1165
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_2b
    move-exception v133

    .line 1166
    .restart local v133    # "e":Ljava/lang/Throwable;
    const-string v7, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_36

    .line 1174
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_2c
    move-exception v133

    .line 1175
    .restart local v133    # "e":Ljava/lang/Throwable;
    const-string v7, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_37

    .line 1183
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_2d
    move-exception v133

    .line 1184
    .restart local v133    # "e":Ljava/lang/Throwable;
    :goto_7a
    const-string/jumbo v7, "starting Notification Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_38

    .line 1191
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_2e
    move-exception v133

    .line 1192
    .restart local v133    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting DeviceStorageMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_39

    .line 1200
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_2f
    move-exception v133

    .line 1201
    .restart local v133    # "e":Ljava/lang/Throwable;
    :goto_7b
    const-string/jumbo v7, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3a

    .line 1208
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_30
    move-exception v133

    .line 1209
    .restart local v133    # "e":Ljava/lang/Throwable;
    :goto_7c
    const-string/jumbo v7, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3b

    .line 1251
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_31
    move-exception v133

    .line 1252
    .restart local v133    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Loading SLocation has been failed, error or not support"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v133 .. v133}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3c

    .line 1260
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_32
    move-exception v133

    .line 1261
    .restart local v133    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3d

    .line 1271
    .end local v133    # "e":Ljava/lang/Throwable;
    :cond_49
    :try_start_99
    const-string v7, "SystemServer"

    const-string v9, "Spell Manager Service disabled"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_99
    .catch Ljava/lang/Throwable; {:try_start_99 .. :try_end_99} :catch_33

    goto/16 :goto_3e

    .line 1273
    :catch_33
    move-exception v133

    .line 1274
    .restart local v133    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "starting Spell Service failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v133

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3e

    .line 1281
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_34
    move-exception v133

    .line 1282
    .restart local v133    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3f

    .line 1293
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_35
    move-exception v133

    .line 1294
    .restart local v133    # "e":Ljava/lang/Throwable;
    :goto_7d
    const-string/jumbo v7, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_40

    .line 1302
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_36
    move-exception v133

    .line 1303
    .restart local v133    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_41

    .line 1311
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_37
    move-exception v133

    .line 1312
    .restart local v133    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting DockObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_42

    .line 1322
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_38
    move-exception v133

    .line 1323
    .restart local v133    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_43

    .line 1333
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_39
    move-exception v133

    .line 1334
    .restart local v133    # "e":Ljava/lang/Throwable;
    :goto_7e
    const-string/jumbo v7, "starting UsbService"

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_44

    .line 1342
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_3a
    move-exception v133

    .line 1343
    .restart local v133    # "e":Ljava/lang/Throwable;
    :goto_7f
    const-string v7, "SystemServer"

    const-string v9, "Failure starting SerialService"

    move-object/from16 v0, v133

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_45

    .line 1350
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_3b
    move-exception v133

    .line 1351
    .restart local v133    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting TwilightService"

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_46

    .line 1358
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_3c
    move-exception v133

    .line 1359
    .restart local v133    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting UiModeManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_47

    .line 1368
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_3d
    move-exception v133

    .line 1369
    .restart local v133    # "e":Ljava/lang/Throwable;
    const-string v7, "Failue staring KiesUsbObserver Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_48

    .line 1379
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_3e
    move-exception v133

    .line 1380
    .restart local v133    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object/from16 v0, v133

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_49

    .line 1387
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_3f
    move-exception v133

    .line 1388
    .restart local v133    # "e":Ljava/lang/Throwable;
    :goto_80
    const-string/jumbo v7, "starting AppWidget Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4a

    .line 1394
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_40
    move-exception v133

    .line 1395
    .restart local v133    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting Recognition Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4b

    .line 1424
    .end local v133    # "e":Ljava/lang/Throwable;
    .restart local v69    # "SecEDSEnable":Ljava/lang/String;
    .restart local v134    # "edsclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4a
    :try_start_9a
    const-string v7, "SystemServer"

    const-string v9, "edsclass Service exist"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    const/4 v7, 0x1

    new-array v0, v7, [Ljava/lang/Class;

    move-object/from16 v76, v0

    .line 1428
    .local v76, "arg":[Ljava/lang/Class;
    const/4 v7, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v76, v7

    .line 1430
    move-object/from16 v0, v134

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v95

    .line 1432
    .local v95, "constructor":Ljava/lang/reflect/Constructor;
    const-string v9, "SecExternalDisplayService"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v7, v10

    move-object/from16 v0, v95

    invoke-virtual {v0, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/IBinder;

    invoke-static {v9, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_9a
    .catch Ljava/lang/Throwable; {:try_start_9a .. :try_end_9a} :catch_41

    goto/16 :goto_4c

    .line 1435
    .end local v76    # "arg":[Ljava/lang/Class;
    .end local v95    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v134    # "edsclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_41
    move-exception v133

    .line 1437
    .restart local v133    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting eds Service"

    move-object/from16 v0, v133

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4c

    .line 1445
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_42
    move-exception v133

    .line 1446
    .restart local v133    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4d

    .line 1477
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_43
    move-exception v133

    .line 1478
    .restart local v133    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting CocktailBarManagerService Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4e

    .line 1489
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_44
    move-exception v133

    .line 1490
    .restart local v133    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4f

    .line 1497
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_45
    move-exception v133

    .line 1498
    .restart local v133    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_50

    .line 1533
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_46
    move-exception v133

    .line 1534
    .restart local v133    # "e":Ljava/lang/Throwable;
    :goto_81
    const-string/jumbo v7, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_51

    .line 1542
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_47
    move-exception v133

    .line 1543
    .restart local v133    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_52

    .line 1554
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_48
    move-exception v133

    .line 1555
    .restart local v133    # "e":Ljava/lang/Throwable;
    :goto_82
    const-string/jumbo v7, "starting DreamManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_53

    .line 1564
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_49
    move-exception v133

    .line 1565
    .restart local v133    # "e":Ljava/lang/Throwable;
    :goto_83
    const-string/jumbo v7, "starting AssetAtlasService"

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_54

    .line 1572
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_4a
    move-exception v133

    .line 1573
    .restart local v133    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting IdleMaintenanceService"

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_55

    .line 1584
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_4b
    move-exception v133

    .line 1585
    .restart local v133    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Absolute Persistence Service"

    move-object/from16 v0, v133

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_56

    .line 1593
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_4c
    move-exception v133

    .line 1594
    .restart local v133    # "e":Ljava/lang/Throwable;
    :goto_84
    const-string/jumbo v7, "starting Print Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_57

    .line 1602
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_4d
    move-exception v133

    .line 1603
    .restart local v133    # "e":Ljava/lang/Throwable;
    :goto_85
    const-string/jumbo v7, "starting MediaRouterService"

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_58

    .line 1619
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_4e
    move-exception v133

    .line 1620
    .restart local v133    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting DigitalPenService"

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_59

    .line 1662
    .end local v133    # "e":Ljava/lang/Throwable;
    .restart local v184    # "packageMgr":Landroid/content/pm/PackageManager;
    :catch_4f
    move-exception v133

    .line 1663
    .restart local v133    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting MiniModeAppManager Service"

    move-object/from16 v0, v133

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5a

    .line 1675
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_50
    move-exception v133

    .line 1676
    .restart local v133    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting BarBeam Service"

    move-object/from16 v0, v133

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5b

    .line 1684
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_51
    move-exception v133

    .line 1685
    .restart local v133    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting Motion Recognition Service"

    move-object/from16 v0, v133

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5c

    .line 1692
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_52
    move-exception v133

    .line 1693
    .restart local v133    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting CEP Proxy Service"

    move-object/from16 v0, v133

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5d

    .line 1700
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_53
    move-exception v133

    .line 1701
    .restart local v133    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting VoIPInterfaceManager Service"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5e

    .line 1712
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_54
    move-exception v133

    .line 1713
    .restart local v133    # "e":Ljava/lang/Throwable;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting CoverManager Service"

    move-object/from16 v0, v133

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5f

    .line 1737
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_55
    move-exception v133

    .line 1738
    .restart local v133    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting SpenGestureManagerService Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_60

    .line 1756
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_56
    move-exception v133

    .line 1757
    .local v133, "e":Ljava/lang/Exception;
    const-string v7, "SystemServer"

    const-string v9, "Failure starting HealthCoverService"

    move-object/from16 v0, v133

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_61

    .line 1776
    .end local v69    # "SecEDSEnable":Ljava/lang/String;
    .end local v133    # "e":Ljava/lang/Exception;
    .end local v162    # "mdsEnable":Ljava/lang/String;
    .end local v184    # "packageMgr":Landroid/content/pm/PackageManager;
    :catch_57
    move-exception v133

    .line 1777
    .restart local v133    # "e":Ljava/lang/Exception;
    const-string v7, "Fail to start SmartFaceService"

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_62

    .line 1787
    .end local v133    # "e":Ljava/lang/Exception;
    :catch_58
    move-exception v133

    .line 1788
    .local v133, "e":Ljava/lang/Throwable;
    const-string v7, "Failure starting SamsungAppDisablerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_63

    .line 1821
    .end local v133    # "e":Ljava/lang/Throwable;
    :cond_4b
    const-string v7, "SystemServer"

    const-string v9, "Wait for CP upgrade - end"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1826
    const-string v7, "SystemServer"

    const-string v9, "Window Manager detectSafeMode"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1827
    invoke-virtual/range {v240 .. v240}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v47

    .line 1828
    .local v47, "safeMode":Z
    if-eqz v47, :cond_54

    .line 1829
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 1831
    const/4 v7, 0x1

    sput-boolean v7, Ldalvik/system/Zygote;->systemInSafeMode:Z

    .line 1833
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 1842
    :goto_86
    :try_start_9b
    const-string v7, "SystemServer"

    const-string/jumbo v9, "vibrator systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1843
    invoke-virtual/range {v228 .. v228}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_9b
    .catch Ljava/lang/Throwable; {:try_start_9b .. :try_end_9b} :catch_59

    .line 1848
    :goto_87
    if-eqz v158, :cond_4c

    .line 1850
    :try_start_9c
    const-string v7, "SystemServer"

    const-string v9, "lockSettings systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    invoke-virtual/range {v158 .. v158}, Lcom/android/server/LockSettingsService;->systemReady()V
    :try_end_9c
    .catch Ljava/lang/Throwable; {:try_start_9c .. :try_end_9c} :catch_5a

    .line 1857
    :cond_4c
    :goto_88
    if-eqz v111, :cond_4d

    .line 1859
    :try_start_9d
    const-string v7, "SystemServer"

    const-string v9, "devicePolicy systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1860
    invoke-virtual/range {v111 .. v111}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V
    :try_end_9d
    .catch Ljava/lang/Throwable; {:try_start_9d .. :try_end_9d} :catch_5b

    .line 1868
    :cond_4d
    :goto_89
    if-eqz v135, :cond_4e

    .line 1869
    invoke-virtual/range {v135 .. v135}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->systemReady()V

    .line 1870
    const-string v7, "SystemServer"

    const-string v9, "enterprisePolicy systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1874
    :cond_4e
    if-eqz v180, :cond_4f

    .line 1876
    :try_start_9e
    const-string v7, "SystemServer"

    const-string v9, "notification systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    const/4 v7, -0x2

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1880
    invoke-virtual/range {v180 .. v180}, Lcom/android/server/NotificationManagerService;->systemReady()V
    :try_end_9e
    .catch Ljava/lang/Throwable; {:try_start_9e .. :try_end_9e} :catch_5c

    .line 1887
    :cond_4f
    :goto_8a
    :try_start_9f
    const-string v7, "SystemServer"

    const-string v9, "Window Manager systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    invoke-virtual/range {v240 .. v240}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_9f
    .catch Ljava/lang/Throwable; {:try_start_9f .. :try_end_9f} :catch_5d

    .line 1893
    :goto_8b
    if-eqz v47, :cond_50

    .line 1894
    const-string v7, "SystemServer"

    const-string v9, "ActivityManager showSafeModeOverlay"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1895
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 1901
    :cond_50
    invoke-virtual/range {v240 .. v240}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v92

    .line 1902
    .local v92, "config":Landroid/content/res/Configuration;
    new-instance v165, Landroid/util/DisplayMetrics;

    invoke-direct/range {v165 .. v165}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1903
    .local v165, "metrics":Landroid/util/DisplayMetrics;
    const-string/jumbo v7, "window"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v232

    check-cast v232, Landroid/view/WindowManager;

    .line 1904
    .local v232, "w":Landroid/view/WindowManager;
    invoke-interface/range {v232 .. v232}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    move-object/from16 v0, v165

    invoke-virtual {v7, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1905
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object/from16 v0, v92

    move-object/from16 v1, v165

    invoke-virtual {v7, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1908
    :try_start_a0
    const-string v7, "SystemServer"

    const-string v9, "PowerManagerService systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1909
    move-object/from16 v0, v221

    move-object/from16 v1, v131

    invoke-virtual {v4, v0, v1}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/server/TwilightService;Lcom/android/server/dreams/DreamManagerService;)V
    :try_end_a0
    .catch Ljava/lang/Throwable; {:try_start_a0 .. :try_end_a0} :catch_5e

    .line 1916
    :goto_8c
    :try_start_a1
    const-string v7, "SystemServer"

    const-string v9, "LightsService systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1917
    invoke-virtual {v6}, Lcom/android/server/LightsService;->systemReady()V
    :try_end_a1
    .catch Ljava/lang/Throwable; {:try_start_a1 .. :try_end_a1} :catch_5f

    .line 1923
    :goto_8d
    if-eqz v127, :cond_51

    .line 1925
    :try_start_a2
    const-string v7, "SystemServer"

    const-string v9, "AdaptiveDisplayColorService systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1926
    invoke-virtual/range {v127 .. v127}, Lcom/android/server/AdaptiveDisplayColorService;->systemReady()V
    :try_end_a2
    .catch Ljava/lang/Throwable; {:try_start_a2 .. :try_end_a2} :catch_60

    .line 1933
    :cond_51
    :goto_8e
    :try_start_a3
    const-string v7, "SystemServer"

    const-string v9, "PackageManagerService systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    invoke-interface/range {v186 .. v186}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_a3
    .catch Ljava/lang/Throwable; {:try_start_a3 .. :try_end_a3} :catch_61

    .line 1940
    :goto_8f
    :try_start_a4
    const-string v7, "SystemServer"

    const-string v9, "DisplayManagerService systemReady"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    move/from16 v0, v47

    move/from16 v1, v24

    invoke-virtual {v11, v0, v1}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_a4
    .catch Ljava/lang/Throwable; {:try_start_a4 .. :try_end_a4} :catch_62

    .line 1946
    :goto_90
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v227

    .line 1947
    .restart local v227    # "versionInfo":Landroid/os/Bundle;
    const-string v7, "2.0"

    const-string/jumbo v9, "version"

    move-object/from16 v0, v227

    invoke-virtual {v0, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_52

    .line 1949
    :try_start_a5
    invoke-virtual/range {v185 .. v185}, Lcom/android/server/pm/PersonaManagerService;->systemReady()V
    :try_end_a5
    .catch Ljava/lang/Throwable; {:try_start_a5 .. :try_end_a5} :catch_63

    .line 1956
    :cond_52
    :goto_91
    :try_start_a6
    invoke-virtual/range {v199 .. v199}, Lcom/android/server/SdpManagerService;->systemReady()V
    :try_end_a6
    .catch Ljava/lang/Throwable; {:try_start_a6 .. :try_end_a6} :catch_64

    .line 1962
    :goto_92
    move-object/from16 v34, v5

    .line 1963
    .local v34, "contextF":Landroid/content/Context;
    move-object/from16 v35, v169

    .line 1964
    .local v35, "mountServiceF":Lcom/android/server/MountService;
    move-object/from16 v36, v8

    .line 1965
    .local v36, "batteryF":Lcom/android/server/BatteryService;
    move-object/from16 v37, v30

    .line 1966
    .local v37, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object/from16 v38, v29

    .line 1967
    .local v38, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v39, v25

    .line 1968
    .local v39, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v40, v93

    .line 1969
    .local v40, "connectivityF":Lcom/android/server/ConnectivityService;
    move-object/from16 v41, v129

    .line 1970
    .local v41, "dockF":Lcom/android/server/DockObserver;
    move-object/from16 v42, v225

    .line 1971
    .local v42, "usbF":Lcom/android/server/usb/UsbService;
    move-object/from16 v43, v221

    .line 1972
    .local v43, "twilightF":Lcom/android/server/TwilightService;
    move-object/from16 v44, v223

    .line 1973
    .local v44, "uiModeF":Lcom/android/server/UiModeManagerService;
    move-object/from16 v46, v74

    .line 1974
    .local v46, "appWidgetF":Lcom/android/server/AppWidgetService;
    move-object/from16 v48, v233

    .line 1975
    .local v48, "wallpaperF":Lcom/android/server/WallpaperManagerService;
    move-object/from16 v49, v147

    .line 1976
    .local v49, "immF":Lcom/android/server/InputMethodManagerService;
    move-object/from16 v45, v195

    .line 1977
    .local v45, "recognitionF":Lcom/android/server/RecognitionManagerService;
    move-object/from16 v51, v156

    .line 1978
    .local v51, "locationF":Lcom/android/server/LocationManagerService;
    move-object/from16 v52, v197

    .line 1979
    .local v52, "sLocationF":Landroid/os/IBinder;
    move-object/from16 v53, v102

    .line 1980
    .local v53, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v54, v178

    .line 1981
    .local v54, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v55, v90

    .line 1982
    .local v55, "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v56, v219

    .line 1983
    .local v56, "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    move-object/from16 v50, v208

    .line 1984
    .local v50, "statusBarF":Lcom/android/server/StatusBarManagerService;
    move-object/from16 v57, v131

    .line 1985
    .local v57, "dreamyF":Lcom/android/server/dreams/DreamManagerService;
    move-object/from16 v58, v77

    .line 1986
    .local v58, "atlasF":Lcom/android/server/AssetAtlasService;
    move-object/from16 v59, v20

    .line 1987
    .local v59, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v60, v211

    .line 1989
    .local v60, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v61, v230

    .line 1991
    .local v61, "vrManagerF":Lcom/android/server/VRManagerService;
    move-object/from16 v64, v173

    .line 1992
    .local v64, "msimTelephonyRegistryF":Lcom/android/server/MSimTelephonyRegistry;
    move-object/from16 v65, v188

    .line 1993
    .local v65, "printManagerF":Lcom/android/server/print/PrintManagerService;
    move-object/from16 v66, v163

    .line 1996
    .local v66, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v63, v99

    .line 2004
    .local v63, "containerServiceF":Lcom/sec/knox/container/EnterpriseContainerService;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v7

    new-instance v31, Lcom/android/server/ServerThread$2;

    move-object/from16 v32, p0

    invoke-direct/range {v31 .. v66}, Lcom/android/server/ServerThread$2;-><init>(Lcom/android/server/ServerThread;ZLandroid/content/Context;Lcom/android/server/MountService;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/TwilightService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Landroid/os/IBinder;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/VRManagerService;ZLcom/sec/knox/container/EnterpriseContainerService;Lcom/android/server/MSimTelephonyRegistry;Lcom/android/server/print/PrintManagerService;Lcom/android/server/media/MediaRouterService;)V

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 2196
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v7

    if-eqz v7, :cond_53

    .line 2197
    const-string v7, "SystemServer"

    const-string v9, "Enabled StrictMode for system server main thread."

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2200
    :cond_53
    const-string v7, "SystemServer"

    const-string v9, "!@Boot: End initAndLoop"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2201
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 2202
    const-string v7, "SystemServer"

    const-string v9, "System ServerThread is exiting!"

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2203
    return-void

    .line 1836
    .end local v34    # "contextF":Landroid/content/Context;
    .end local v35    # "mountServiceF":Lcom/android/server/MountService;
    .end local v36    # "batteryF":Lcom/android/server/BatteryService;
    .end local v37    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v38    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v39    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v40    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v41    # "dockF":Lcom/android/server/DockObserver;
    .end local v42    # "usbF":Lcom/android/server/usb/UsbService;
    .end local v43    # "twilightF":Lcom/android/server/TwilightService;
    .end local v44    # "uiModeF":Lcom/android/server/UiModeManagerService;
    .end local v45    # "recognitionF":Lcom/android/server/RecognitionManagerService;
    .end local v46    # "appWidgetF":Lcom/android/server/AppWidgetService;
    .end local v48    # "wallpaperF":Lcom/android/server/WallpaperManagerService;
    .end local v49    # "immF":Lcom/android/server/InputMethodManagerService;
    .end local v50    # "statusBarF":Lcom/android/server/StatusBarManagerService;
    .end local v51    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v52    # "sLocationF":Landroid/os/IBinder;
    .end local v53    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v54    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v55    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v56    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .end local v57    # "dreamyF":Lcom/android/server/dreams/DreamManagerService;
    .end local v58    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v59    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v60    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v61    # "vrManagerF":Lcom/android/server/VRManagerService;
    .end local v63    # "containerServiceF":Lcom/sec/knox/container/EnterpriseContainerService;
    .end local v64    # "msimTelephonyRegistryF":Lcom/android/server/MSimTelephonyRegistry;
    .end local v65    # "printManagerF":Lcom/android/server/print/PrintManagerService;
    .end local v66    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v92    # "config":Landroid/content/res/Configuration;
    .end local v165    # "metrics":Landroid/util/DisplayMetrics;
    .end local v227    # "versionInfo":Landroid/os/Bundle;
    .end local v232    # "w":Landroid/view/WindowManager;
    :cond_54
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_86

    .line 1844
    :catch_59
    move-exception v133

    .line 1845
    .restart local v133    # "e":Ljava/lang/Throwable;
    const-string v7, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_87

    .line 1852
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_5a
    move-exception v133

    .line 1853
    .restart local v133    # "e":Ljava/lang/Throwable;
    const-string v7, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_88

    .line 1861
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_5b
    move-exception v133

    .line 1862
    .restart local v133    # "e":Ljava/lang/Throwable;
    const-string v7, "making Device Policy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_89

    .line 1881
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_5c
    move-exception v133

    .line 1882
    .restart local v133    # "e":Ljava/lang/Throwable;
    const-string v7, "making Notification Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8a

    .line 1889
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_5d
    move-exception v133

    .line 1890
    .restart local v133    # "e":Ljava/lang/Throwable;
    const-string v7, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8b

    .line 1910
    .end local v133    # "e":Ljava/lang/Throwable;
    .restart local v92    # "config":Landroid/content/res/Configuration;
    .restart local v165    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v232    # "w":Landroid/view/WindowManager;
    :catch_5e
    move-exception v133

    .line 1911
    .restart local v133    # "e":Ljava/lang/Throwable;
    const-string v7, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8c

    .line 1918
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_5f
    move-exception v133

    .line 1919
    .restart local v133    # "e":Ljava/lang/Throwable;
    const-string v7, "making Lights Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8d

    .line 1927
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_60
    move-exception v133

    .line 1928
    .restart local v133    # "e":Ljava/lang/Throwable;
    const-string v7, "making Adaptive Display Color Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8e

    .line 1935
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_61
    move-exception v133

    .line 1936
    .restart local v133    # "e":Ljava/lang/Throwable;
    const-string v7, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8f

    .line 1942
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_62
    move-exception v133

    .line 1943
    .restart local v133    # "e":Ljava/lang/Throwable;
    const-string v7, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_90

    .line 1950
    .end local v133    # "e":Ljava/lang/Throwable;
    .restart local v227    # "versionInfo":Landroid/os/Bundle;
    :catch_63
    move-exception v133

    .line 1951
    .restart local v133    # "e":Ljava/lang/Throwable;
    const-string v7, "making Persona Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_91

    .line 1957
    .end local v133    # "e":Ljava/lang/Throwable;
    :catch_64
    move-exception v133

    .line 1958
    .restart local v133    # "e":Ljava/lang/Throwable;
    const-string v7, "making Sdp manager service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v7, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_92

    .line 478
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v47    # "safeMode":Z
    .end local v74    # "appWidget":Lcom/android/server/AppWidgetService;
    .end local v77    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v92    # "config":Landroid/content/res/Configuration;
    .end local v102    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v111    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .end local v131    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .end local v133    # "e":Ljava/lang/Throwable;
    .end local v135    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v147    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v156    # "location":Lcom/android/server/LocationManagerService;
    .end local v158    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v163    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v165    # "metrics":Landroid/util/DisplayMetrics;
    .end local v180    # "notification":Lcom/android/server/NotificationManagerService;
    .end local v188    # "printManager":Lcom/android/server/print/PrintManagerService;
    .end local v197    # "sLocation":Landroid/os/IBinder;
    .end local v208    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .end local v219    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v227    # "versionInfo":Landroid/os/Bundle;
    .end local v230    # "vrManager":Lcom/android/server/VRManagerService;
    .end local v232    # "w":Landroid/view/WindowManager;
    .end local v233    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v80    # "battery":Lcom/android/server/BatteryService;
    .restart local v105    # "cryptState":Ljava/lang/String;
    .restart local v149    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v155    # "lights":Lcom/android/server/LightsService;
    .restart local v176    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :catch_65
    move-exception v7

    goto/16 :goto_9

    .line 1602
    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v80    # "battery":Lcom/android/server/BatteryService;
    .end local v105    # "cryptState":Ljava/lang/String;
    .end local v149    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v155    # "lights":Lcom/android/server/LightsService;
    .end local v176    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v69    # "SecEDSEnable":Ljava/lang/String;
    .restart local v74    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v77    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v102    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v111    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v131    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v135    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v147    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v156    # "location":Lcom/android/server/LocationManagerService;
    .restart local v158    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v162    # "mdsEnable":Ljava/lang/String;
    .restart local v164    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v180    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v188    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v197    # "sLocation":Landroid/os/IBinder;
    .restart local v208    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v219    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v230    # "vrManager":Lcom/android/server/VRManagerService;
    .restart local v233    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :catch_66
    move-exception v133

    move-object/from16 v163, v164

    .end local v164    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v163    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    goto/16 :goto_85

    .line 1593
    .end local v188    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v189    # "printManager":Lcom/android/server/print/PrintManagerService;
    :catch_67
    move-exception v133

    move-object/from16 v188, v189

    .end local v189    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v188    # "printManager":Lcom/android/server/print/PrintManagerService;
    goto/16 :goto_84

    .line 1564
    .end local v77    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v78    # "atlas":Lcom/android/server/AssetAtlasService;
    :catch_68
    move-exception v133

    move-object/from16 v77, v78

    .end local v78    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v77    # "atlas":Lcom/android/server/AssetAtlasService;
    goto/16 :goto_83

    .line 1554
    .end local v131    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v132    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    :catch_69
    move-exception v133

    move-object/from16 v131, v132

    .end local v132    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v131    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    goto/16 :goto_82

    .line 1533
    .end local v90    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v91    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :catch_6a
    move-exception v133

    move-object/from16 v90, v91

    .end local v91    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v90    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_81

    .line 1387
    .end local v69    # "SecEDSEnable":Ljava/lang/String;
    .end local v74    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v75    # "appWidget":Lcom/android/server/AppWidgetService;
    :catch_6b
    move-exception v133

    move-object/from16 v74, v75

    .end local v75    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v74    # "appWidget":Lcom/android/server/AppWidgetService;
    goto/16 :goto_80

    .line 1342
    .end local v201    # "serial":Lcom/android/server/SerialService;
    .restart local v202    # "serial":Lcom/android/server/SerialService;
    :catch_6c
    move-exception v133

    move-object/from16 v201, v202

    .end local v202    # "serial":Lcom/android/server/SerialService;
    .restart local v201    # "serial":Lcom/android/server/SerialService;
    goto/16 :goto_7f

    .line 1333
    .end local v225    # "usb":Lcom/android/server/usb/UsbService;
    .restart local v226    # "usb":Lcom/android/server/usb/UsbService;
    :catch_6d
    move-exception v133

    move-object/from16 v225, v226

    .end local v226    # "usb":Lcom/android/server/usb/UsbService;
    .restart local v225    # "usb":Lcom/android/server/usb/UsbService;
    goto/16 :goto_7e

    .line 1293
    .end local v233    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v234    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :catch_6e
    move-exception v133

    move-object/from16 v233, v234

    .end local v234    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v233    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_7d

    .line 1208
    .end local v102    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v103    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :catch_6f
    move-exception v133

    move-object/from16 v102, v103

    .end local v103    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v102    # "countryDetector":Lcom/android/server/CountryDetectorService;
    goto/16 :goto_7c

    .line 1200
    .end local v156    # "location":Lcom/android/server/LocationManagerService;
    .restart local v157    # "location":Lcom/android/server/LocationManagerService;
    :catch_70
    move-exception v133

    move-object/from16 v156, v157

    .end local v157    # "location":Lcom/android/server/LocationManagerService;
    .restart local v156    # "location":Lcom/android/server/LocationManagerService;
    goto/16 :goto_7b

    .line 1183
    .end local v180    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v181    # "notification":Lcom/android/server/NotificationManagerService;
    :catch_71
    move-exception v133

    move-object/from16 v180, v181

    .end local v181    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v180    # "notification":Lcom/android/server/NotificationManagerService;
    goto/16 :goto_7a

    .line 1080
    .end local v93    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v94    # "connectivity":Lcom/android/server/ConnectivityService;
    :catch_72
    move-exception v133

    move-object/from16 v93, v94

    .end local v94    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v93    # "connectivity":Lcom/android/server/ConnectivityService;
    goto/16 :goto_79

    .line 1065
    .end local v171    # "msapwifi":Lcom/android/server/MsapWifiService;
    .restart local v172    # "msapwifi":Lcom/android/server/MsapWifiService;
    :catch_73
    move-exception v133

    move-object/from16 v171, v172

    .end local v172    # "msapwifi":Lcom/android/server/MsapWifiService;
    .restart local v171    # "msapwifi":Lcom/android/server/MsapWifiService;
    goto/16 :goto_78

    .line 1056
    .end local v235    # "wifi":Lcom/android/server/wifi/WifiService;
    .restart local v236    # "wifi":Lcom/android/server/wifi/WifiService;
    :catch_74
    move-exception v133

    move-object/from16 v235, v236

    .end local v236    # "wifi":Lcom/android/server/wifi/WifiService;
    .restart local v235    # "wifi":Lcom/android/server/wifi/WifiService;
    goto/16 :goto_77

    .line 1048
    .end local v238    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v239    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    :catch_75
    move-exception v133

    move-object/from16 v238, v239

    .end local v239    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v238    # "wifiP2p":Landroid/net/wifi/p2p/WifiP2pService;
    goto/16 :goto_76

    .line 1040
    :catch_76
    move-exception v133

    goto/16 :goto_75

    .line 1030
    .end local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v176    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v177    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catch_77
    move-exception v133

    move-object/from16 v29, v177

    .end local v177    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v29    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_74

    .line 1020
    .end local v219    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v220    # "tsms":Lcom/android/server/TextServicesManagerService;
    :catch_78
    move-exception v133

    move-object/from16 v219, v220

    .end local v220    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v219    # "tsms":Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_73

    .line 978
    .end local v208    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v209    # "statusBar":Lcom/android/server/StatusBarManagerService;
    :catch_79
    move-exception v133

    move-object/from16 v208, v209

    .end local v209    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v208    # "statusBar":Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_72

    .line 968
    .end local v160    # "mHMS":Lcom/android/server/HarmonyEASService;
    .restart local v161    # "mHMS":Lcom/android/server/HarmonyEASService;
    :catch_7a
    move-exception v133

    move-object/from16 v160, v161

    .end local v161    # "mHMS":Lcom/android/server/HarmonyEASService;
    .restart local v160    # "mHMS":Lcom/android/server/HarmonyEASService;
    goto/16 :goto_71

    .line 956
    .end local v135    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v136    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v227    # "versionInfo":Landroid/os/Bundle;
    :catch_7b
    move-exception v133

    move-object/from16 v135, v136

    .end local v136    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v135    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    goto/16 :goto_70

    .line 946
    .end local v199    # "sdpService":Lcom/android/server/SdpManagerService;
    .restart local v200    # "sdpService":Lcom/android/server/SdpManagerService;
    :catch_7c
    move-exception v133

    move-object/from16 v199, v200

    .end local v200    # "sdpService":Lcom/android/server/SdpManagerService;
    .restart local v199    # "sdpService":Lcom/android/server/SdpManagerService;
    goto/16 :goto_6f

    .line 918
    .end local v158    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v227    # "versionInfo":Landroid/os/Bundle;
    .restart local v159    # "lockSettings":Lcom/android/server/LockSettingsService;
    :catch_7d
    move-exception v133

    move-object/from16 v158, v159

    .end local v159    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v158    # "lockSettings":Lcom/android/server/LockSettingsService;
    goto/16 :goto_6e

    .line 894
    .end local v230    # "vrManager":Lcom/android/server/VRManagerService;
    .restart local v231    # "vrManager":Lcom/android/server/VRManagerService;
    :catch_7e
    move-exception v133

    move-object/from16 v230, v231

    .end local v231    # "vrManager":Lcom/android/server/VRManagerService;
    .restart local v230    # "vrManager":Lcom/android/server/VRManagerService;
    goto/16 :goto_6d

    .line 859
    .end local v162    # "mdsEnable":Ljava/lang/String;
    .end local v169    # "mountService":Lcom/android/server/MountService;
    .restart local v170    # "mountService":Lcom/android/server/MountService;
    :catch_7f
    move-exception v133

    move-object/from16 v169, v170

    .end local v170    # "mountService":Lcom/android/server/MountService;
    .restart local v169    # "mountService":Lcom/android/server/MountService;
    goto/16 :goto_6c

    .line 845
    .end local v111    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v112    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    :catch_80
    move-exception v133

    move-object/from16 v111, v112

    .end local v112    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v111    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_6b

    .line 827
    :catch_81
    move-exception v7

    goto/16 :goto_1d

    .line 793
    .end local v147    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v148    # "imm":Lcom/android/server/InputMethodManagerService;
    :catch_82
    move-exception v133

    move-object/from16 v147, v148

    .end local v148    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v147    # "imm":Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_6a

    .line 758
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v74    # "appWidget":Lcom/android/server/AppWidgetService;
    .end local v77    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v102    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v111    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .end local v131    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .end local v135    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .end local v147    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v156    # "location":Lcom/android/server/LocationManagerService;
    .end local v158    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v163    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v180    # "notification":Lcom/android/server/NotificationManagerService;
    .end local v188    # "printManager":Lcom/android/server/print/PrintManagerService;
    .end local v197    # "sLocation":Landroid/os/IBinder;
    .end local v208    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .end local v219    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v230    # "vrManager":Lcom/android/server/VRManagerService;
    .end local v233    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v80    # "battery":Lcom/android/server/BatteryService;
    .restart local v126    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v149    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v155    # "lights":Lcom/android/server/LightsService;
    :catch_83
    move-exception v133

    move-object/from16 v20, v149

    .end local v149    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v72

    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v80

    .end local v80    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v11, v126

    .end local v126    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    move-object/from16 v6, v155

    .end local v155    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    goto/16 :goto_65

    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v211    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v80    # "battery":Lcom/android/server/BatteryService;
    .restart local v149    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v155    # "lights":Lcom/android/server/LightsService;
    .restart local v212    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_84
    move-exception v133

    move-object/from16 v211, v212

    .end local v212    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v211    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v149

    .end local v149    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v72

    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v80

    .end local v80    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v155

    .end local v155    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    goto/16 :goto_65

    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v173    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v80    # "battery":Lcom/android/server/BatteryService;
    .restart local v149    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v155    # "lights":Lcom/android/server/LightsService;
    .restart local v174    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    :catch_85
    move-exception v133

    move-object/from16 v173, v174

    .end local v174    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    .restart local v173    # "msimTelephonyRegistry":Lcom/android/server/MSimTelephonyRegistry;
    move-object/from16 v20, v149

    .end local v149    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v72

    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v80

    .end local v80    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v155

    .end local v155    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    goto/16 :goto_65

    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v70    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v71    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v80    # "battery":Lcom/android/server/BatteryService;
    .restart local v105    # "cryptState":Ljava/lang/String;
    .restart local v149    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v154    # "knoxVerInfo":Landroid/os/Bundle;
    .restart local v155    # "lights":Lcom/android/server/LightsService;
    .restart local v227    # "versionInfo":Landroid/os/Bundle;
    :catch_86
    move-exception v133

    move-object/from16 v20, v149

    .end local v149    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v72

    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v80

    .end local v80    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v155

    .end local v155    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    move-object/from16 v70, v71

    .end local v71    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v70    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_65

    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v107    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v80    # "battery":Lcom/android/server/BatteryService;
    .restart local v108    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v149    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v155    # "lights":Lcom/android/server/LightsService;
    :catch_87
    move-exception v133

    move-object/from16 v107, v108

    .end local v108    # "dEncService":Lcom/android/server/DirEncryptService;
    .restart local v107    # "dEncService":Lcom/android/server/DirEncryptService;
    move-object/from16 v20, v149

    .end local v149    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v72

    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v80

    .end local v80    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v155

    .end local v155    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    goto/16 :goto_65

    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v99    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v80    # "battery":Lcom/android/server/BatteryService;
    .restart local v100    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    .restart local v149    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v155    # "lights":Lcom/android/server/LightsService;
    :catch_88
    move-exception v133

    move-object/from16 v99, v100

    .end local v100    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    .restart local v99    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    move-object/from16 v20, v149

    .end local v149    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v72

    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v80

    .end local v80    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v155

    .end local v155    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    goto/16 :goto_65

    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v216    # "timaService":Lcom/android/server/TimaService;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v80    # "battery":Lcom/android/server/BatteryService;
    .restart local v149    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v155    # "lights":Lcom/android/server/LightsService;
    .restart local v213    # "timaEnabled":Z
    .restart local v217    # "timaService":Lcom/android/server/TimaService;
    :catch_89
    move-exception v133

    move-object/from16 v216, v217

    .end local v217    # "timaService":Lcom/android/server/TimaService;
    .restart local v216    # "timaService":Lcom/android/server/TimaService;
    move-object/from16 v20, v149

    .end local v149    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v72

    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v80

    .end local v80    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    move-object/from16 v6, v155

    .end local v155    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    goto/16 :goto_65

    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v80    # "battery":Lcom/android/server/BatteryService;
    .restart local v149    # "inputManager":Lcom/android/server/input/InputManagerService;
    :catch_8a
    move-exception v133

    move-object/from16 v20, v149

    .end local v149    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v72

    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v8, v80

    .end local v80    # "battery":Lcom/android/server/BatteryService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    goto/16 :goto_65

    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v149    # "inputManager":Lcom/android/server/input/InputManagerService;
    :catch_8b
    move-exception v133

    move-object/from16 v20, v149

    .end local v149    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v16, v72

    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    goto/16 :goto_65

    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v127    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .end local v228    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v128    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .restart local v149    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v210    # "tactileAssist":Lcom/android/server/TactileAssistService;
    .restart local v229    # "vibrator":Lcom/android/server/VibratorService;
    :catch_8c
    move-exception v133

    move-object/from16 v20, v149

    .end local v149    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v127, v128

    .end local v128    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .restart local v127    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    move-object/from16 v16, v72

    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v228, v229

    .end local v229    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v228    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_65

    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v97    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v127    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .end local v228    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v98    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v128    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .restart local v149    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v229    # "vibrator":Lcom/android/server/VibratorService;
    :catch_8d
    move-exception v133

    move-object/from16 v97, v98

    .end local v98    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v97    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v20, v149

    .end local v149    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v127, v128

    .end local v128    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .restart local v127    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    move-object/from16 v16, v72

    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    move-object/from16 v228, v229

    .end local v229    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v228    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_65

    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v97    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v127    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .end local v228    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v98    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v128    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .restart local v149    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v229    # "vibrator":Lcom/android/server/VibratorService;
    :catch_8e
    move-exception v133

    move-object/from16 v97, v98

    .end local v98    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v97    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v20, v149

    .end local v149    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v127, v128

    .end local v128    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .restart local v127    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    move-object/from16 v228, v229

    .end local v229    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v228    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_65

    .end local v81    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .end local v97    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v127    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .end local v228    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v82    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v98    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v128    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .restart local v229    # "vibrator":Lcom/android/server/VibratorService;
    :catch_8f
    move-exception v133

    move-object/from16 v97, v98

    .end local v98    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v97    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v81, v82

    .end local v82    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    .restart local v81    # "bluetooth":Lcom/android/server/BluetoothManagerService;
    move-object/from16 v127, v128

    .end local v128    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .restart local v127    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    move-object/from16 v228, v229

    .end local v229    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v228    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_65

    .end local v97    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v127    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .end local v191    # "rcpManagerService":Lcom/android/server/RCPManagerService;
    .end local v228    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v98    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v128    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .restart local v192    # "rcpManagerService":Lcom/android/server/RCPManagerService;
    .restart local v229    # "vibrator":Lcom/android/server/VibratorService;
    :catch_90
    move-exception v133

    move-object/from16 v191, v192

    .end local v192    # "rcpManagerService":Lcom/android/server/RCPManagerService;
    .restart local v191    # "rcpManagerService":Lcom/android/server/RCPManagerService;
    move-object/from16 v97, v98

    .end local v98    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v97    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v127, v128

    .end local v128    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .restart local v127    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    move-object/from16 v228, v229

    .end local v229    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v228    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_65

    .line 752
    .end local v97    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v127    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .end local v191    # "rcpManagerService":Lcom/android/server/RCPManagerService;
    .end local v228    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v98    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v128    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .restart local v192    # "rcpManagerService":Lcom/android/server/RCPManagerService;
    .restart local v229    # "vibrator":Lcom/android/server/VibratorService;
    :catch_91
    move-exception v133

    move-object/from16 v191, v192

    .end local v192    # "rcpManagerService":Lcom/android/server/RCPManagerService;
    .restart local v191    # "rcpManagerService":Lcom/android/server/RCPManagerService;
    goto/16 :goto_69

    .line 595
    .end local v6    # "lights":Lcom/android/server/LightsService;
    .end local v8    # "battery":Lcom/android/server/BatteryService;
    .end local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v98    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v128    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .end local v210    # "tactileAssist":Lcom/android/server/TactileAssistService;
    .end local v216    # "timaService":Lcom/android/server/TimaService;
    .end local v229    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v80    # "battery":Lcom/android/server/BatteryService;
    .restart local v97    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v127    # "displayColor":Lcom/android/server/AdaptiveDisplayColorService;
    .restart local v149    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v155    # "lights":Lcom/android/server/LightsService;
    .restart local v217    # "timaService":Lcom/android/server/TimaService;
    .restart local v228    # "vibrator":Lcom/android/server/VibratorService;
    :catch_92
    move-exception v133

    move-object/from16 v216, v217

    .end local v217    # "timaService":Lcom/android/server/TimaService;
    .restart local v216    # "timaService":Lcom/android/server/TimaService;
    goto/16 :goto_68

    .line 572
    .end local v99    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    .end local v213    # "timaEnabled":Z
    .restart local v100    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    :catch_93
    move-exception v133

    move-object/from16 v99, v100

    .end local v100    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    .restart local v99    # "containerService":Lcom/sec/knox/container/EnterpriseContainerService;
    goto/16 :goto_67

    .line 518
    .end local v70    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v71    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :catch_94
    move-exception v133

    move-object/from16 v70, v71

    .end local v71    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v70    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_66

    .line 407
    .end local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v105    # "cryptState":Ljava/lang/String;
    .end local v113    # "digitalPenCapable":Z
    .end local v117    # "disableAtlas":Z
    .end local v118    # "disableBluetooth":Z
    .end local v119    # "disableLocation":Z
    .end local v120    # "disableMedia":Z
    .end local v121    # "disableNetwork":Z
    .end local v122    # "disableNonCoreServices":Z
    .end local v123    # "disableStorage":Z
    .end local v124    # "disableSystemUI":Z
    .end local v125    # "disableTelephony":Z
    .end local v150    # "installer":Lcom/android/server/pm/Installer;
    .end local v154    # "knoxVerInfo":Landroid/os/Bundle;
    .end local v227    # "versionInfo":Landroid/os/Bundle;
    .restart local v126    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v151    # "installer":Lcom/android/server/pm/Installer;
    :catch_95
    move-exception v133

    move-object/from16 v150, v151

    .end local v151    # "installer":Lcom/android/server/pm/Installer;
    .restart local v150    # "installer":Lcom/android/server/pm/Installer;
    goto/16 :goto_6

    .end local v4    # "power":Lcom/android/server/power/PowerManagerService;
    .end local v150    # "installer":Lcom/android/server/pm/Installer;
    .restart local v151    # "installer":Lcom/android/server/pm/Installer;
    .restart local v187    # "power":Lcom/android/server/power/PowerManagerService;
    :catch_96
    move-exception v133

    move-object/from16 v4, v187

    .end local v187    # "power":Lcom/android/server/power/PowerManagerService;
    .restart local v4    # "power":Lcom/android/server/power/PowerManagerService;
    move-object/from16 v150, v151

    .end local v151    # "installer":Lcom/android/server/pm/Installer;
    .restart local v150    # "installer":Lcom/android/server/pm/Installer;
    goto/16 :goto_6

    .end local v72    # "alarm":Lcom/android/server/AlarmManagerService;
    .end local v80    # "battery":Lcom/android/server/BatteryService;
    .end local v126    # "display":Lcom/android/server/display/DisplayManagerService;
    .end local v149    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v155    # "lights":Lcom/android/server/LightsService;
    .restart local v6    # "lights":Lcom/android/server/LightsService;
    .restart local v8    # "battery":Lcom/android/server/BatteryService;
    .restart local v11    # "display":Lcom/android/server/display/DisplayManagerService;
    .restart local v16    # "alarm":Lcom/android/server/AlarmManagerService;
    .restart local v20    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v74    # "appWidget":Lcom/android/server/AppWidgetService;
    .restart local v77    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v102    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v111    # "devicePolicy":Lcom/android/server/DevicePolicyManagerService;
    .restart local v113    # "digitalPenCapable":Z
    .restart local v117    # "disableAtlas":Z
    .restart local v118    # "disableBluetooth":Z
    .restart local v119    # "disableLocation":Z
    .restart local v120    # "disableMedia":Z
    .restart local v121    # "disableNetwork":Z
    .restart local v122    # "disableNonCoreServices":Z
    .restart local v123    # "disableStorage":Z
    .restart local v124    # "disableSystemUI":Z
    .restart local v125    # "disableTelephony":Z
    .restart local v131    # "dreamy":Lcom/android/server/dreams/DreamManagerService;
    .restart local v135    # "enterprisePolicy":Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
    .restart local v147    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v156    # "location":Lcom/android/server/LocationManagerService;
    .restart local v158    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v162    # "mdsEnable":Ljava/lang/String;
    .restart local v163    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v180    # "notification":Lcom/android/server/NotificationManagerService;
    .restart local v188    # "printManager":Lcom/android/server/print/PrintManagerService;
    .restart local v197    # "sLocation":Landroid/os/IBinder;
    .restart local v208    # "statusBar":Lcom/android/server/StatusBarManagerService;
    .restart local v219    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v230    # "vrManager":Lcom/android/server/VRManagerService;
    .restart local v233    # "wallpaper":Lcom/android/server/WallpaperManagerService;
    :cond_55
    move-object/from16 v25, v176

    .end local v176    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_34

    .end local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v162    # "mdsEnable":Ljava/lang/String;
    .restart local v176    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :cond_56
    move-object/from16 v25, v176

    .end local v176    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v25    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_61
.end method

.method reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 233
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 235
    return-void
.end method
