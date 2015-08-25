.class public Landroid/sec/enterprise/EnterpriseDeviceManager;
.super Ljava/lang/Object;
.source "EnterpriseDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;
    }
.end annotation


# static fields
.field private static final EDM_CLASS_NAME:Ljava/lang/String; = "android.app.enterprise.EnterpriseDeviceManager"

.field public static final ENTERPRISE_POLICY_SERVICE:Ljava/lang/String; = "enterprise_policy"

.field public static final ENTERPRISE_PROXY_SERVICE:Ljava/lang/String; = "edm_proxy"

.field private static final KNOX_CLASS_NAME:Ljava/lang/String; = "com.sec.enterprise.knox.EnterpriseKnoxManager"

.field public static final KNOX_ENTERPRISE_POLICY_SERVICE:Ljava/lang/String; = "knox_enterprise_policy"

.field private static mInstance:Landroid/sec/enterprise/EnterpriseDeviceManager;

.field private static mInstanceCreated:Z


# instance fields
.field private mApplicationPolicy:Landroid/sec/enterprise/ApplicationPolicy;

.field private mApplicationPolicyCreated:Z

.field private mBluetoothPolicy:Landroid/sec/enterprise/BluetoothPolicy;

.field private mBluetoothPolicyCreated:Z

.field private mBrowserPolicy:Landroid/sec/enterprise/BrowserPolicy;

.field private mBrowserPolicyCreated:Z

.field private mCertificatePolicy:Landroid/sec/enterprise/certificate/CertificatePolicy;

.field private mCertificatePolicyCreated:Z

.field private mClientCertificateManager:Landroid/sec/enterprise/ClientCertificateManager;

.field private mClientCertificateManagerCreated:Z

.field private mDateTimePolicy:Landroid/sec/enterprise/DateTimePolicy;

.field private mDateTimePolicyCreated:Z

.field private mDeviceAccountPolicy:Landroid/sec/enterprise/DeviceAccountPolicy;

.field private mDeviceAccountPolicyCreated:Z

.field private mDeviceInventory:Landroid/sec/enterprise/DeviceInventory;

.field private mDeviceInventoryCreated:Z

.field private mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

.field private mFirewallPolicyCreated:Z

.field private mKioskMode:Landroid/sec/enterprise/kioskmode/KioskMode;

.field private mKioskModeCreated:Z

.field private mKnoxCustomManager:Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;

.field private mKnoxCustomManagerCreated:Z

.field private mLocationPolicy:Landroid/sec/enterprise/LocationPolicy;

.field private mLocationPolicyCreated:Z

.field private mMiscPolicy:Landroid/sec/enterprise/general/MiscPolicy;

.field private mMiscPolicyCreated:Z

.field private mPasswordPolicy:Landroid/sec/enterprise/PasswordPolicy;

.field private mPasswordPolicyCreated:Z

.field private mPhonePolicy:Landroid/sec/enterprise/PhoneRestrictionPolicy;

.field private mPhonePolicyCreated:Z

.field private mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

.field private mRestrictionPolicyCreated:Z

.field private mRoamingPolicy:Landroid/sec/enterprise/RoamingPolicy;

.field private mRoamingPolicyCreated:Z

.field private mSmartCardAccessPolicy:Landroid/sec/enterprise/SmartCardAccessPolicy;

.field private mSmartCardAccessPolicyCreated:Z

.field private mTimaKeystore:Landroid/sec/enterprise/TimaKeystore;

.field private mTimaKeystoreCreated:Z

.field private mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

.field private mWifiPolicyCreated:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mSmartCardAccessPolicyCreated:Z

    .line 152
    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mClientCertificateManagerCreated:Z

    .line 153
    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mTimaKeystoreCreated:Z

    .line 154
    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mApplicationPolicyCreated:Z

    .line 155
    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mRoamingPolicyCreated:Z

    .line 156
    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDeviceInventoryCreated:Z

    .line 157
    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mRestrictionPolicyCreated:Z

    .line 158
    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mPasswordPolicyCreated:Z

    .line 159
    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mBrowserPolicyCreated:Z

    .line 160
    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mLocationPolicyCreated:Z

    .line 161
    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mBluetoothPolicyCreated:Z

    .line 162
    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mPhonePolicyCreated:Z

    .line 163
    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mWifiPolicyCreated:Z

    .line 164
    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDateTimePolicyCreated:Z

    .line 165
    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mFirewallPolicyCreated:Z

    .line 166
    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mKioskModeCreated:Z

    .line 168
    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mCertificatePolicyCreated:Z

    .line 170
    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDeviceAccountPolicyCreated:Z

    .line 173
    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mMiscPolicyCreated:Z

    .line 178
    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mKnoxCustomManagerCreated:Z

    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 89
    :try_start_0
    const-string v3, "android.app.enterprise.EnterpriseDeviceManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 90
    .local v0, "c":Ljava/lang/Class;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 91
    .local v1, "constructor":Ljava/lang/reflect/Constructor;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 95
    .end local v0    # "c":Ljava/lang/Class;
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;
    :goto_0
    return-object v3

    .line 92
    :catch_0
    move-exception v2

    .line 93
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 95
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static createKnox(Landroid/content/Context;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v4, 0x0

    .line 100
    :try_start_0
    const-string v3, "com.sec.enterprise.knox.EnterpriseKnoxManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 103
    .local v0, "c":Ljava/lang/Class;
    const-string v3, "getInstance"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 104
    .local v2, "m":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 108
    .end local v0    # "c":Ljava/lang/Class;
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return-object v3

    .line 105
    :catch_0
    move-exception v1

    .line 106
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v3, v4

    .line 108
    goto :goto_0
.end method

.method public static getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 112
    sget-boolean v0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mInstanceCreated:Z

    if-nez v0, :cond_1

    .line 113
    const-class v1, Landroid/sec/enterprise/EnterpriseDeviceManager;

    monitor-enter v1

    .line 114
    :try_start_0
    sget-boolean v0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mInstanceCreated:Z

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Landroid/sec/enterprise/EnterpriseDeviceManager;

    invoke-direct {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;-><init>()V

    sput-object v0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mInstance:Landroid/sec/enterprise/EnterpriseDeviceManager;

    .line 116
    const/4 v0, 0x1

    sput-boolean v0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mInstanceCreated:Z

    .line 118
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :cond_1
    sget-object v0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mInstance:Landroid/sec/enterprise/EnterpriseDeviceManager;

    return-object v0

    .line 118
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getService()Landroid/sec/enterprise/IEDMProxy;
    .locals 1

    .prologue
    .line 84
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getApplicationPolicy()Landroid/sec/enterprise/ApplicationPolicy;
    .locals 2

    .prologue
    .line 187
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mApplicationPolicyCreated:Z

    if-nez v0, :cond_1

    .line 188
    const-class v1, Landroid/sec/enterprise/ApplicationPolicy;

    monitor-enter v1

    .line 189
    :try_start_0
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mApplicationPolicyCreated:Z

    if-nez v0, :cond_0

    .line 190
    new-instance v0, Landroid/sec/enterprise/ApplicationPolicy;

    invoke-direct {v0}, Landroid/sec/enterprise/ApplicationPolicy;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mApplicationPolicy:Landroid/sec/enterprise/ApplicationPolicy;

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mApplicationPolicyCreated:Z

    .line 193
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    :cond_1
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mApplicationPolicy:Landroid/sec/enterprise/ApplicationPolicy;

    return-object v0

    .line 193
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getBluetoothPolicy()Landroid/sec/enterprise/BluetoothPolicy;
    .locals 2

    .prologue
    .line 306
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mBluetoothPolicyCreated:Z

    if-nez v0, :cond_1

    .line 307
    const-class v1, Landroid/sec/enterprise/BluetoothPolicy;

    monitor-enter v1

    .line 308
    :try_start_0
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mBluetoothPolicyCreated:Z

    if-nez v0, :cond_0

    .line 309
    new-instance v0, Landroid/sec/enterprise/BluetoothPolicy;

    invoke-direct {v0}, Landroid/sec/enterprise/BluetoothPolicy;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mBluetoothPolicy:Landroid/sec/enterprise/BluetoothPolicy;

    .line 310
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mBluetoothPolicyCreated:Z

    .line 312
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    :cond_1
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mBluetoothPolicy:Landroid/sec/enterprise/BluetoothPolicy;

    return-object v0

    .line 312
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getBrowserPolicy()Landroid/sec/enterprise/BrowserPolicy;
    .locals 2

    .prologue
    .line 323
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mBrowserPolicyCreated:Z

    if-nez v0, :cond_1

    .line 324
    const-class v1, Landroid/sec/enterprise/BrowserPolicy;

    monitor-enter v1

    .line 325
    :try_start_0
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mBrowserPolicyCreated:Z

    if-nez v0, :cond_0

    .line 326
    new-instance v0, Landroid/sec/enterprise/BrowserPolicy;

    invoke-direct {v0}, Landroid/sec/enterprise/BrowserPolicy;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mBrowserPolicy:Landroid/sec/enterprise/BrowserPolicy;

    .line 327
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mBrowserPolicyCreated:Z

    .line 329
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    :cond_1
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mBrowserPolicy:Landroid/sec/enterprise/BrowserPolicy;

    return-object v0

    .line 329
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getCertificatePolicy()Landroid/sec/enterprise/certificate/CertificatePolicy;
    .locals 2

    .prologue
    .line 425
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mCertificatePolicyCreated:Z

    if-nez v0, :cond_1

    .line 426
    const-class v1, Landroid/sec/enterprise/certificate/CertificatePolicy;

    monitor-enter v1

    .line 427
    :try_start_0
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mCertificatePolicyCreated:Z

    if-nez v0, :cond_0

    .line 428
    new-instance v0, Landroid/sec/enterprise/certificate/CertificatePolicy;

    invoke-direct {v0}, Landroid/sec/enterprise/certificate/CertificatePolicy;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mCertificatePolicy:Landroid/sec/enterprise/certificate/CertificatePolicy;

    .line 429
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mCertificatePolicyCreated:Z

    .line 431
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    :cond_1
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mCertificatePolicy:Landroid/sec/enterprise/certificate/CertificatePolicy;

    return-object v0

    .line 431
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getClientCertificateManager()Landroid/sec/enterprise/ClientCertificateManager;
    .locals 2

    .prologue
    .line 496
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mClientCertificateManagerCreated:Z

    if-nez v0, :cond_1

    .line 497
    const-class v1, Landroid/sec/enterprise/ClientCertificateManager;

    monitor-enter v1

    .line 498
    :try_start_0
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mClientCertificateManagerCreated:Z

    if-nez v0, :cond_0

    .line 499
    new-instance v0, Landroid/sec/enterprise/ClientCertificateManager;

    invoke-direct {v0}, Landroid/sec/enterprise/ClientCertificateManager;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mClientCertificateManager:Landroid/sec/enterprise/ClientCertificateManager;

    .line 500
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mClientCertificateManagerCreated:Z

    .line 502
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 504
    :cond_1
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mClientCertificateManager:Landroid/sec/enterprise/ClientCertificateManager;

    return-object v0

    .line 502
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getDateTimePolicy()Landroid/sec/enterprise/DateTimePolicy;
    .locals 2

    .prologue
    .line 374
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDateTimePolicyCreated:Z

    if-nez v0, :cond_1

    .line 375
    const-class v1, Landroid/sec/enterprise/DateTimePolicy;

    monitor-enter v1

    .line 376
    :try_start_0
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDateTimePolicyCreated:Z

    if-nez v0, :cond_0

    .line 377
    new-instance v0, Landroid/sec/enterprise/DateTimePolicy;

    invoke-direct {v0}, Landroid/sec/enterprise/DateTimePolicy;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDateTimePolicy:Landroid/sec/enterprise/DateTimePolicy;

    .line 378
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDateTimePolicyCreated:Z

    .line 380
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    :cond_1
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDateTimePolicy:Landroid/sec/enterprise/DateTimePolicy;

    return-object v0

    .line 380
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getDeviceAccountPolicy()Landroid/sec/enterprise/DeviceAccountPolicy;
    .locals 2

    .prologue
    .line 439
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDeviceAccountPolicyCreated:Z

    if-nez v0, :cond_1

    .line 440
    const-class v1, Landroid/sec/enterprise/DeviceAccountPolicy;

    monitor-enter v1

    .line 441
    :try_start_0
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDeviceAccountPolicyCreated:Z

    if-nez v0, :cond_0

    .line 442
    new-instance v0, Landroid/sec/enterprise/DeviceAccountPolicy;

    invoke-direct {v0}, Landroid/sec/enterprise/DeviceAccountPolicy;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDeviceAccountPolicy:Landroid/sec/enterprise/DeviceAccountPolicy;

    .line 443
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDeviceAccountPolicyCreated:Z

    .line 445
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    :cond_1
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDeviceAccountPolicy:Landroid/sec/enterprise/DeviceAccountPolicy;

    return-object v0

    .line 445
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getDeviceInventory()Landroid/sec/enterprise/DeviceInventory;
    .locals 2

    .prologue
    .line 272
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDeviceInventoryCreated:Z

    if-nez v0, :cond_1

    .line 273
    const-class v1, Landroid/sec/enterprise/DeviceInventory;

    monitor-enter v1

    .line 274
    :try_start_0
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDeviceInventoryCreated:Z

    if-nez v0, :cond_0

    .line 275
    new-instance v0, Landroid/sec/enterprise/DeviceInventory;

    invoke-direct {v0}, Landroid/sec/enterprise/DeviceInventory;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDeviceInventory:Landroid/sec/enterprise/DeviceInventory;

    .line 276
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDeviceInventoryCreated:Z

    .line 278
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    :cond_1
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDeviceInventory:Landroid/sec/enterprise/DeviceInventory;

    return-object v0

    .line 278
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getELMPermissions(Ljava/lang/String;)Ljava/util/List;
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
    .line 483
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->getELMPermissions(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 485
    :goto_0
    return-object v1

    .line 484
    :catch_0
    move-exception v0

    .line 485
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFirewallPolicy()Landroid/sec/enterprise/FirewallPolicy;
    .locals 2

    .prologue
    .line 392
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mFirewallPolicyCreated:Z

    if-nez v0, :cond_1

    .line 393
    const-class v1, Landroid/sec/enterprise/FirewallPolicy;

    monitor-enter v1

    .line 394
    :try_start_0
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mFirewallPolicyCreated:Z

    if-nez v0, :cond_0

    .line 395
    new-instance v0, Landroid/sec/enterprise/FirewallPolicy;

    invoke-direct {v0}, Landroid/sec/enterprise/FirewallPolicy;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

    .line 396
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mFirewallPolicyCreated:Z

    .line 398
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    :cond_1
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

    return-object v0

    .line 398
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getKioskMode()Landroid/sec/enterprise/kioskmode/KioskMode;
    .locals 2

    .prologue
    .line 406
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mKioskModeCreated:Z

    if-nez v0, :cond_1

    .line 407
    const-class v1, Landroid/sec/enterprise/kioskmode/KioskMode;

    monitor-enter v1

    .line 408
    :try_start_0
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mKioskModeCreated:Z

    if-nez v0, :cond_0

    .line 409
    new-instance v0, Landroid/sec/enterprise/kioskmode/KioskMode;

    invoke-direct {v0}, Landroid/sec/enterprise/kioskmode/KioskMode;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mKioskMode:Landroid/sec/enterprise/kioskmode/KioskMode;

    .line 410
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mKioskModeCreated:Z

    .line 412
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    :cond_1
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mKioskMode:Landroid/sec/enterprise/kioskmode/KioskMode;

    return-object v0

    .line 412
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getKnoxCustomManager()Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;
    .locals 2

    .prologue
    .line 452
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mKnoxCustomManagerCreated:Z

    if-nez v0, :cond_1

    .line 453
    const-class v1, Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;

    monitor-enter v1

    .line 454
    :try_start_0
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mKnoxCustomManagerCreated:Z

    if-nez v0, :cond_0

    .line 455
    new-instance v0, Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;

    invoke-direct {v0}, Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mKnoxCustomManager:Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;

    .line 456
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mKnoxCustomManagerCreated:Z

    .line 458
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    :cond_1
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mKnoxCustomManager:Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;

    return-object v0

    .line 458
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getLocationPolicy()Landroid/sec/enterprise/LocationPolicy;
    .locals 2

    .prologue
    .line 289
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mLocationPolicyCreated:Z

    if-nez v0, :cond_1

    .line 290
    const-class v1, Landroid/sec/enterprise/LocationPolicy;

    monitor-enter v1

    .line 291
    :try_start_0
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mLocationPolicyCreated:Z

    if-nez v0, :cond_0

    .line 292
    new-instance v0, Landroid/sec/enterprise/LocationPolicy;

    invoke-direct {v0}, Landroid/sec/enterprise/LocationPolicy;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mLocationPolicy:Landroid/sec/enterprise/LocationPolicy;

    .line 293
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mLocationPolicyCreated:Z

    .line 295
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    :cond_1
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mLocationPolicy:Landroid/sec/enterprise/LocationPolicy;

    return-object v0

    .line 295
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getMiscPolicy()Landroid/sec/enterprise/general/MiscPolicy;
    .locals 2

    .prologue
    .line 204
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mMiscPolicyCreated:Z

    if-nez v0, :cond_1

    .line 205
    const-class v1, Landroid/sec/enterprise/general/MiscPolicy;

    monitor-enter v1

    .line 206
    :try_start_0
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mMiscPolicyCreated:Z

    if-nez v0, :cond_0

    .line 207
    new-instance v0, Landroid/sec/enterprise/general/MiscPolicy;

    invoke-direct {v0}, Landroid/sec/enterprise/general/MiscPolicy;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mMiscPolicy:Landroid/sec/enterprise/general/MiscPolicy;

    .line 208
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mMiscPolicyCreated:Z

    .line 210
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    :cond_1
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mMiscPolicy:Landroid/sec/enterprise/general/MiscPolicy;

    return-object v0

    .line 210
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getPasswordPolicy()Landroid/sec/enterprise/PasswordPolicy;
    .locals 2

    .prologue
    .line 255
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mPasswordPolicyCreated:Z

    if-nez v0, :cond_1

    .line 256
    const-class v1, Landroid/sec/enterprise/PasswordPolicy;

    monitor-enter v1

    .line 257
    :try_start_0
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mPasswordPolicyCreated:Z

    if-nez v0, :cond_0

    .line 258
    new-instance v0, Landroid/sec/enterprise/PasswordPolicy;

    invoke-direct {v0}, Landroid/sec/enterprise/PasswordPolicy;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mPasswordPolicy:Landroid/sec/enterprise/PasswordPolicy;

    .line 259
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mPasswordPolicyCreated:Z

    .line 261
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    :cond_1
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mPasswordPolicy:Landroid/sec/enterprise/PasswordPolicy;

    return-object v0

    .line 261
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getPhoneRestrictionPolicy()Landroid/sec/enterprise/PhoneRestrictionPolicy;
    .locals 2

    .prologue
    .line 340
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mPhonePolicyCreated:Z

    if-nez v0, :cond_1

    .line 341
    const-class v1, Landroid/sec/enterprise/PhoneRestrictionPolicy;

    monitor-enter v1

    .line 342
    :try_start_0
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mPhonePolicyCreated:Z

    if-nez v0, :cond_0

    .line 343
    new-instance v0, Landroid/sec/enterprise/PhoneRestrictionPolicy;

    invoke-direct {v0}, Landroid/sec/enterprise/PhoneRestrictionPolicy;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mPhonePolicy:Landroid/sec/enterprise/PhoneRestrictionPolicy;

    .line 344
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mPhonePolicyCreated:Z

    .line 346
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    :cond_1
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mPhonePolicy:Landroid/sec/enterprise/PhoneRestrictionPolicy;

    return-object v0

    .line 346
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;
    .locals 2

    .prologue
    .line 238
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mRestrictionPolicyCreated:Z

    if-nez v0, :cond_1

    .line 239
    const-class v1, Landroid/sec/enterprise/RestrictionPolicy;

    monitor-enter v1

    .line 240
    :try_start_0
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mRestrictionPolicyCreated:Z

    if-nez v0, :cond_0

    .line 241
    new-instance v0, Landroid/sec/enterprise/RestrictionPolicy;

    invoke-direct {v0}, Landroid/sec/enterprise/RestrictionPolicy;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    .line 242
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mRestrictionPolicyCreated:Z

    .line 244
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    :cond_1
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    return-object v0

    .line 244
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getRoamingPolicy()Landroid/sec/enterprise/RoamingPolicy;
    .locals 2

    .prologue
    .line 221
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mRoamingPolicyCreated:Z

    if-nez v0, :cond_1

    .line 222
    const-class v1, Landroid/sec/enterprise/RoamingPolicy;

    monitor-enter v1

    .line 223
    :try_start_0
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mRoamingPolicyCreated:Z

    if-nez v0, :cond_0

    .line 224
    new-instance v0, Landroid/sec/enterprise/RoamingPolicy;

    invoke-direct {v0}, Landroid/sec/enterprise/RoamingPolicy;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mRoamingPolicy:Landroid/sec/enterprise/RoamingPolicy;

    .line 225
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mRoamingPolicyCreated:Z

    .line 227
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    :cond_1
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mRoamingPolicy:Landroid/sec/enterprise/RoamingPolicy;

    return-object v0

    .line 227
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getSmartCardAccessPolicy()Landroid/sec/enterprise/SmartCardAccessPolicy;
    .locals 2

    .prologue
    .line 470
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mSmartCardAccessPolicyCreated:Z

    if-nez v0, :cond_1

    .line 471
    const-class v1, Landroid/sec/enterprise/SmartCardAccessPolicy;

    monitor-enter v1

    .line 472
    :try_start_0
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mSmartCardAccessPolicyCreated:Z

    if-nez v0, :cond_0

    .line 473
    new-instance v0, Landroid/sec/enterprise/SmartCardAccessPolicy;

    invoke-direct {v0}, Landroid/sec/enterprise/SmartCardAccessPolicy;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mSmartCardAccessPolicy:Landroid/sec/enterprise/SmartCardAccessPolicy;

    .line 474
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mSmartCardAccessPolicyCreated:Z

    .line 476
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    :cond_1
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mSmartCardAccessPolicy:Landroid/sec/enterprise/SmartCardAccessPolicy;

    return-object v0

    .line 476
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getTimaKeystore()Landroid/sec/enterprise/TimaKeystore;
    .locals 2

    .prologue
    .line 513
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mTimaKeystoreCreated:Z

    if-nez v0, :cond_1

    .line 514
    const-class v1, Landroid/sec/enterprise/TimaKeystore;

    monitor-enter v1

    .line 515
    :try_start_0
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mTimaKeystoreCreated:Z

    if-nez v0, :cond_0

    .line 516
    new-instance v0, Landroid/sec/enterprise/TimaKeystore;

    invoke-direct {v0}, Landroid/sec/enterprise/TimaKeystore;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mTimaKeystore:Landroid/sec/enterprise/TimaKeystore;

    .line 517
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mTimaKeystoreCreated:Z

    .line 519
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    :cond_1
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mTimaKeystore:Landroid/sec/enterprise/TimaKeystore;

    return-object v0

    .line 519
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getWifiPolicy()Landroid/sec/enterprise/WifiPolicy;
    .locals 2

    .prologue
    .line 357
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mWifiPolicyCreated:Z

    if-nez v0, :cond_1

    .line 358
    const-class v1, Landroid/sec/enterprise/WifiPolicy;

    monitor-enter v1

    .line 359
    :try_start_0
    iget-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mWifiPolicyCreated:Z

    if-nez v0, :cond_0

    .line 360
    new-instance v0, Landroid/sec/enterprise/WifiPolicy;

    invoke-direct {v0}, Landroid/sec/enterprise/WifiPolicy;-><init>()V

    iput-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    .line 361
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mWifiPolicyCreated:Z

    .line 363
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    :cond_1
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    return-object v0

    .line 363
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
