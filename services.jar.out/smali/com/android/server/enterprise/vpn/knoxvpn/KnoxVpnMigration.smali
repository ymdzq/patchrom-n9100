.class Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;
.super Ljava/lang/Thread;
.source "KnoxVpnMigration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final KNOX_VPN_V1_ENABLED:Z

.field private static final KNOX_VPN_V2_ENABLED:Z

.field private static TAG:Ljava/lang/String;

.field private static mCntMigrationGeneric:I

.field private static mCntMigrationPremium:I

.field private static mMigrationStateGeneric:I

.field private static mStorageDbHelper:Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;


# instance fields
.field private FAIL:I

.field private SUCCESS:I

.field private mAdminPackageName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEngine:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

.field private mErrorMessage:Ljava/lang/String;

.field private mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

.field private mNewAdminID:I

.field private mNewContainerID:I

.field private mNumOfContainerPkg:I

.field private mOldAdminID:I

.field private mOldContainerID:I

.field private mPremiumService:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

.field private mVpnIsAll:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 69
    const-string v2, "KnoxVpnMigration"

    sput-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    .line 70
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    .line 82
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mStorageDbHelper:Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;

    .line 87
    sput v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mCntMigrationPremium:I

    .line 95
    sput v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mCntMigrationGeneric:I

    .line 96
    const/4 v0, -0x1

    sput v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mMigrationStateGeneric:I

    .line 100
    const-string v0, "1"

    const-string/jumbo v1, "ro.config.knox"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->KNOX_VPN_V1_ENABLED:Z

    .line 101
    const-string/jumbo v0, "v30"

    const-string/jumbo v1, "ro.config.knox"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->KNOX_VPN_V2_ENABLED:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vpnStorageProvider"    # Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;
    .param p3, "engine"    # Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    .param p4, "map"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 104
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 73
    iput v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mNewAdminID:I

    .line 74
    iput v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mNewContainerID:I

    .line 75
    iput v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mOldAdminID:I

    .line 76
    iput v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mOldContainerID:I

    .line 77
    iput v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mNumOfContainerPkg:I

    .line 78
    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mAdminPackageName:Ljava/lang/String;

    .line 79
    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mContext:Landroid/content/Context;

    .line 83
    const-string v0, "No Error"

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mErrorMessage:Ljava/lang/String;

    .line 92
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->SUCCESS:I

    .line 93
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->FAIL:I

    .line 94
    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mEngine:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 97
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mVpnIsAll:Ljava/util/concurrent/ConcurrentHashMap;

    .line 105
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    const-string v1, "Constructor in KnoxVpnMigration"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-direct {p0, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->checkValidationForValues(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    :goto_0
    return-void

    .line 110
    :cond_0
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mContext:Landroid/content/Context;

    .line 111
    iput-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    .line 112
    iput-object p3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mEngine:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 113
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    goto :goto_0
.end method

.method private checkValidationForValues(Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "map"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x5

    const/4 v1, 0x0

    .line 724
    if-nez p1, :cond_0

    .line 725
    const-string v2, "The value is null"

    invoke-virtual {p0, v3, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->sendMigrationSuccessIntent(ILjava/lang/String;)V

    .line 740
    :goto_0
    return v1

    .line 729
    :cond_0
    :try_start_0
    const-string v2, "knox_1_container_id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mOldContainerID:I

    .line 730
    const-string v2, "knox_2_container_id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mNewContainerID:I

    .line 731
    const-string v2, "admin_uid"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mOldAdminID:I

    .line 732
    iget v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mOldAdminID:I

    iput v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mNewAdminID:I

    .line 733
    const-string v2, "knox_1_apk_count"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mNumOfContainerPkg:I

    .line 734
    const-string v2, "admin_package_name"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mAdminPackageName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 740
    const/4 v1, 0x1

    goto :goto_0

    .line 735
    :catch_0
    move-exception v0

    .line 736
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "The value is null"

    invoke-virtual {p0, v3, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->sendMigrationSuccessIntent(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized deleteDB()Z
    .locals 5

    .prologue
    .line 577
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/knoxvpn/databases/knoxvpn.db"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 578
    .local v1, "vpnDatabasePath":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 579
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 585
    .end local v1    # "vpnDatabasePath":Ljava/io/File;
    :goto_0
    monitor-exit p0

    return v2

    .line 581
    .restart local v1    # "vpnDatabasePath":Ljava/io/File;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    .line 583
    .end local v1    # "vpnDatabasePath":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 584
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERROR : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 585
    const/4 v2, 0x0

    goto :goto_0

    .line 577
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized doMigrationVPN20()I
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x3

    .line 169
    monitor-enter p0

    :try_start_0
    sget v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mCntMigrationGeneric:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mCntMigrationGeneric:I

    .line 171
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->openMigrationDBHelper()I

    move-result v7

    if-nez v7, :cond_0

    .line 172
    const/4 v7, 0x3

    sput v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mMigrationStateGeneric:I

    .line 173
    iget v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->FAIL:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    :goto_0
    monitor-exit p0

    return v7

    .line 176
    :cond_0
    const/4 v3, 0x0

    .line 178
    .local v3, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :try_start_1
    sget v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mMigrationStateGeneric:I

    if-eq v7, v8, :cond_1

    sget v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mMigrationStateGeneric:I

    if-nez v7, :cond_3

    .line 179
    .local v6, "state":Z
    :cond_1
    :goto_1
    if-nez v6, :cond_4

    .line 184
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v7, :cond_2

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    const-string v8, "Genric migration is already in doing "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_2
    iget v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->FAIL:I

    goto :goto_0

    .line 178
    .end local v6    # "state":Z
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 187
    .restart local v6    # "state":Z
    :cond_4
    const/4 v7, 0x2

    sput v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mMigrationStateGeneric:I

    .line 192
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v7, :cond_5

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    const-string v8, "Genric migration will do a clear job"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    :cond_5
    :try_start_2
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v8, "VpnPackageInfo"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    .line 197
    .local v1, "b":Z
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v8, "VpnProfileInfo"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    .line 198
    .local v0, "a":Z
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v7, :cond_6

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "clear result : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 212
    :cond_6
    :try_start_3
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v7, :cond_7

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    const-string v8, "Genric migration step #1 : profile infor "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 214
    :cond_7
    :try_start_4
    const-string v7, "VpnProfileInfo"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0, v7, v8, v9, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 216
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v7, :cond_8

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cvList.size() "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_8
    if-eqz v3, :cond_b

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_b

    .line 222
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 223
    .local v2, "cv":Landroid/content/ContentValues;
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->writeProfileToDB(Landroid/content/ContentValues;)I

    move-result v7

    iget v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->FAIL:I

    if-ne v7, v8, :cond_9

    .line 224
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v7, :cond_a

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    const-string v8, " ERROR : Step #1"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_a
    const/4 v7, 0x3

    sput v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mMigrationStateGeneric:I

    .line 226
    iget v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->FAIL:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 199
    .end local v0    # "a":Z
    .end local v1    # "b":Z
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v5    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v4

    .line 200
    .local v4, "e":Ljava/lang/Exception;
    :try_start_5
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ERROR : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const/4 v7, 0x3

    sput v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mMigrationStateGeneric:I

    .line 202
    iget v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->FAIL:I

    goto/16 :goto_0

    .line 231
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v0    # "a":Z
    .restart local v1    # "b":Z
    :catch_1
    move-exception v4

    .line 232
    .restart local v4    # "e":Ljava/lang/Exception;
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ERROR : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const/4 v7, 0x3

    sput v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mMigrationStateGeneric:I

    .line 234
    iget v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->FAIL:I

    goto/16 :goto_0

    .line 244
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_b
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v7, :cond_c

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    const-string v8, "Genric migration step #2 : package info "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 246
    :cond_c
    :try_start_6
    const-string v7, "VpnPackageInfo"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0, v7, v8, v9, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 248
    if-eqz v3, :cond_10

    .line 249
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v7, :cond_d

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cvList.size() "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_d
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 253
    .restart local v2    # "cv":Landroid/content/ContentValues;
    invoke-direct {p0, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->writePkgToDB(Landroid/content/ContentValues;)I

    move-result v7

    iget v8, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->FAIL:I

    if-ne v7, v8, :cond_e

    .line 254
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v7, :cond_f

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    const-string v8, "ERROR : Step #1"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_f
    const/4 v7, 0x3

    sput v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mMigrationStateGeneric:I

    .line 256
    iget v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->FAIL:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 261
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v5    # "i$":Ljava/util/Iterator;
    :catch_2
    move-exception v4

    .line 262
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_7
    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " error 3 :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const/4 v7, 0x3

    sput v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mMigrationStateGeneric:I

    .line 264
    iget v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->FAIL:I

    goto/16 :goto_0

    .line 268
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_10
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v7, :cond_11

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    const-string v8, "Genric migration step #3 : init hash "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->closeDB()V

    .line 276
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->deleteDB()Z

    .line 279
    const/4 v7, 0x1

    sput v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mMigrationStateGeneric:I

    .line 280
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mEngine:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-virtual {v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->initializeVpnDataAndVendors()V

    .line 283
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v7, :cond_12

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    const-string v8, "Genric migration step #4 : DONE "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_12
    iget v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->SUCCESS:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 169
    .end local v0    # "a":Z
    .end local v1    # "b":Z
    .end local v3    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v6    # "state":Z
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method private doMigrationVpn10()I
    .locals 18

    .prologue
    .line 780
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->getProfilesFromVpn10()Ljava/util/ArrayList;

    move-result-object v7

    .line 781
    .local v7, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;>;"
    if-nez v7, :cond_0

    .line 782
    const/4 v11, 0x4

    .line 872
    :goto_0
    return v11

    .line 784
    :cond_0
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "doMigrationVpn10 : get profile list size : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v5, v11, :cond_5

    .line 787
    sget-object v12, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "doMigrationVpn10 : Got profile : "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;

    iget-object v11, v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, ", adminId : "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;

    iget v11, v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;->adminId:I

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v13, "EnterpriseVpn"

    const/4 v11, 0x2

    new-array v14, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v15, "adminUid"

    aput-object v15, v14, v11

    const/4 v11, 0x1

    const-string v15, "profileName"

    aput-object v15, v14, v11

    const/4 v11, 0x2

    new-array v15, v11, [Ljava/lang/String;

    const/16 v16, 0x0

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;

    iget v11, v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;->adminId:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v15, v16

    const/16 v16, 0x1

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;

    iget-object v11, v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;->name:Ljava/lang/String;

    aput-object v11, v15, v16

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "applicationInfo"

    aput-object v17, v11, v16

    const/16 v16, 0x1

    const-string v17, "CID"

    aput-object v17, v11, v16

    invoke-virtual {v12, v13, v14, v15, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 802
    .local v3, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_4

    .line 804
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "doMigrationVpn10 : Got packagelist from db. size = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    .line 806
    .local v4, "cvalues":Landroid/content/ContentValues;
    const-string v11, "applicationInfo"

    invoke-virtual {v4, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 808
    .local v2, "containerPackageInDB":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v11, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getContainerIdFromPackageName(Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_2

    .line 809
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " is already migrated"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 813
    :cond_2
    const-string v11, "CID"

    invoke-virtual {v4, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 814
    .local v1, "cid":I
    if-nez v1, :cond_3

    .line 815
    :goto_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mOldContainerID:I

    invoke-virtual {v11, v12, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getOriginalPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 817
    .local v9, "originalPackageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v11, v1, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v10

    .line 818
    .local v10, "uid":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v11, v1, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 819
    .local v8, "newPackageName":Ljava/lang/String;
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " new package name is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2, v8, v10}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->replaceEnterpriseVpnInDb(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v11

    if-nez v11, :cond_1

    .line 822
    const-string v11, "Failed to replace EnterpriseVpn DB"

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mErrorMessage:Ljava/lang/String;

    .line 823
    const/4 v11, 0x3

    goto/16 :goto_0

    .line 814
    .end local v8    # "newPackageName":Ljava/lang/String;
    .end local v9    # "originalPackageName":Ljava/lang/String;
    .end local v10    # "uid":I
    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mNewContainerID:I

    goto :goto_3

    .line 786
    .end local v1    # "cid":I
    .end local v2    # "containerPackageInDB":Ljava/lang/String;
    .end local v4    # "cvalues":Landroid/content/ContentValues;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 830
    .end local v3    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_5
    const/4 v5, 0x0

    :goto_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v5, v11, :cond_7

    .line 831
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v13, "EnterpriseVpn"

    const/4 v11, 0x3

    new-array v14, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v15, "CID"

    aput-object v15, v14, v11

    const/4 v11, 0x1

    const-string v15, "adminUid"

    aput-object v15, v14, v11

    const/4 v11, 0x2

    const-string v15, "profileName"

    aput-object v15, v14, v11

    const/4 v11, 0x3

    new-array v15, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mNewContainerID:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v11

    const/16 v16, 0x1

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;

    iget v11, v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;->adminId:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v15, v16

    const/16 v16, 0x2

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;

    iget-object v11, v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;->name:Ljava/lang/String;

    aput-object v11, v15, v16

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "applicationInfo"

    aput-object v17, v11, v16

    invoke-virtual {v12, v13, v14, v15, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 845
    .restart local v3    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "doMigrationVpn10 : After Got packagelist from db. size = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", ContainerPkgs = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mNumOfContainerPkg:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_6

    .line 847
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mNumOfContainerPkg:I

    if-ne v11, v12, :cond_6

    .line 849
    sget-object v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "doMigrationVpn10 : match count which db and container packages. size = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;

    iget-object v12, v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;

    iget v11, v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;->adminId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->updateEnterpriseVpnInDb(Ljava/lang/String;I)Z

    move-result v11

    if-nez v11, :cond_6

    .line 851
    const-string v11, "Failed to update EnterpriseVpn DB"

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mErrorMessage:Ljava/lang/String;

    .line 852
    const/4 v11, 0x3

    goto/16 :goto_0

    .line 830
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_4

    .line 859
    .end local v3    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_7
    const/4 v5, 0x0

    :goto_5
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v5, v11, :cond_a

    .line 860
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;

    iget-object v11, v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->replaceVpnTableInDb(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 861
    const-string v11, "Failed to replace VpnProfile DB"

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mErrorMessage:Ljava/lang/String;

    .line 862
    const/4 v11, 0x3

    goto/16 :goto_0

    .line 864
    :cond_8
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;

    iget v11, v11, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;->adminId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->replaceFipsVpnTableInDb(I)Z

    move-result v11

    if-nez v11, :cond_9

    .line 865
    const-string v11, "Failed to replace FipsVpn DB"

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mErrorMessage:Ljava/lang/String;

    .line 866
    const/4 v11, 0x3

    goto/16 :goto_0

    .line 859
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 870
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->startVpnAfterMigration()V

    .line 872
    const/4 v11, 0x1

    goto/16 :goto_0
.end method

.method private static getMigrationVersion()Ljava/lang/String;
    .locals 9

    .prologue
    .line 693
    const-string v5, ""

    .line 694
    .local v5, "versionName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 696
    .local v3, "token":J
    :try_start_0
    const-string v6, "package"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 697
    .local v2, "pm":Landroid/content/pm/IPackageManager;
    const-string v6, "com.sec.knox.containeragent"

    const/16 v7, 0x80

    const/4 v8, 0x0

    invoke-interface {v2, v6, v7, v8}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 698
    .local v1, "info":Landroid/content/pm/PackageInfo;
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 699
    if-eqz v1, :cond_0

    .line 700
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 705
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "pm":Landroid/content/pm/IPackageManager;
    :cond_0
    :goto_0
    return-object v5

    .line 702
    :catch_0
    move-exception v0

    .line 703
    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getMigrationVersion Exception : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private declared-synchronized getProfilesFromVpn10()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 754
    monitor-enter p0

    const/4 v3, 0x0

    .line 755
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;>;"
    const/4 v1, 0x0

    .line 757
    .local v1, "cvProfileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v6, "Vpn_table"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "profile"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "adminUid"

    aput-object v11, v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 764
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 765
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 767
    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;>;"
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;>;"
    :try_start_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 768
    .local v0, "cvProfile":Landroid/content/ContentValues;
    new-instance v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;

    const-string v6, "profile"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "adminUid"

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v5, p0, v6, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;Ljava/lang/String;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 754
    .end local v0    # "cvProfile":Landroid/content/ContentValues;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    move-object v3, v4

    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;>;"
    .restart local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;>;"
    :goto_1
    monitor-exit p0

    throw v5

    .end local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;>;"
    :cond_0
    move-object v3, v4

    .line 772
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;>;"
    .restart local v3    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;>;"
    :cond_1
    monitor-exit p0

    return-object v3

    .line 754
    :catchall_1
    move-exception v5

    goto :goto_1
.end method

.method public static declared-synchronized isFail()Z
    .locals 3

    .prologue
    .line 593
    const-class v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mCntMigrationGeneric:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x3

    if-le v0, v2, :cond_0

    .line 594
    const/4 v0, 0x1

    .line 596
    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 593
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized isNeedForGeneric()Z
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 546
    const-class v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;

    monitor-enter v4

    :try_start_0
    sget v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mMigrationStateGeneric:I

    if-eq v5, v2, :cond_0

    sget v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mMigrationStateGeneric:I

    if-ne v5, v6, :cond_1

    .line 548
    :cond_0
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    const-string v5, "isNeedForGeneric :  Done / Not need"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 568
    .local v1, "vpnDatabasePath":Ljava/io/File;
    :goto_0
    monitor-exit v4

    return v2

    .line 553
    .end local v1    # "vpnDatabasePath":Ljava/io/File;
    :cond_1
    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string v5, "/data/system/knoxvpn/databases/knoxvpn.db"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 554
    .restart local v1    # "vpnDatabasePath":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    sget-boolean v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->KNOX_VPN_V2_ENABLED:Z

    if-eqz v5, :cond_2

    .line 555
    const/4 v5, 0x0

    sput v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mMigrationStateGeneric:I

    .line 556
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    const-string v6, "isNeedForGeneric : need"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 560
    :catch_0
    move-exception v0

    .line 561
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    const-string v5, "isNeedForGeneric : error"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 562
    goto :goto_0

    .line 565
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v2, 0x4

    sput v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mMigrationStateGeneric:I

    .line 567
    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    const-string v5, "isNeedForGeneric : not need"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v2, v3

    .line 568
    goto :goto_0

    .line 546
    :catchall_0
    move-exception v2

    monitor-exit v4

    throw v2
.end method

.method private static declared-synchronized isNeedForPremium()Z
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 522
    const-class v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;

    monitor-enter v7

    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getPackagesFromVpn10()Ljava/util/ArrayList;

    move-result-object v3

    .line 523
    .local v3, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move v5, v6

    .line 541
    :goto_0
    monitor-exit v7

    return v5

    .line 527
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    :try_start_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-ge v1, v5, :cond_3

    .line 528
    const/4 v4, -0x1

    .line 530
    .local v4, "userId":I
    :try_start_2
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v8, "_"

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 531
    .local v2, "packageArray":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    .line 536
    .end local v2    # "packageArray":[Ljava/lang/String;
    :goto_2
    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 537
    const/4 v5, 0x1

    goto :goto_0

    .line 532
    :catch_0
    move-exception v0

    .line 533
    .local v0, "e":Ljava/lang/Exception;
    const/4 v4, -0x1

    goto :goto_2

    .line 527
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v4    # "userId":I
    :cond_3
    move v5, v6

    .line 541
    goto :goto_0

    .line 522
    .end local v1    # "i":I
    :catchall_0
    move-exception v5

    monitor-exit v7

    throw v5
.end method

.method public static declared-synchronized isNeedToMigration()Z
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 491
    const-class v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;

    monitor-enter v6

    const/4 v2, 0x0

    .line 492
    .local v2, "premiumPolicy":Z
    const/4 v0, 0x0

    .line 493
    .local v0, "genericPolicy":Z
    const/4 v3, 0x0

    .line 496
    .local v3, "result":Z
    :try_start_0
    const-string v7, "net.vpn.migration.version"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 497
    .local v1, "getProperty":Ljava/lang/String;
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isNeedToMigration : prop : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_0
    const-string v7, "4.0"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_2

    .line 515
    :cond_1
    :goto_0
    monitor-exit v6

    return v5

    .line 503
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->getMigrationVersion()Ljava/lang/String;

    move-result-object v4

    .line 504
    .local v4, "versionForMA":Ljava/lang/String;
    sget-boolean v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v7, :cond_3

    sget-object v7, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isNeedToMigration : version : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", fixed version : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "4.0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :cond_3
    const-string v7, "4.0"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 509
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->isNeedForPremium()Z

    move-result v2

    .line 510
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->isNeedForGeneric()Z

    move-result v0

    .line 512
    if-nez v2, :cond_4

    if-eqz v0, :cond_5

    :cond_4
    const/4 v3, 0x1

    .line 514
    :goto_1
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isNeedForGeneric : result : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v5, v3

    .line 515
    goto :goto_0

    :cond_5
    move v3, v5

    .line 512
    goto :goto_1

    .line 491
    .end local v1    # "getProperty":Ljava/lang/String;
    .end local v4    # "versionForMA":Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public static markedMigrationIsDone()Z
    .locals 3

    .prologue
    .line 713
    :try_start_0
    const-string v1, "net.vpn.migration.version"

    const-string v2, "4.0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 717
    const/4 v1, 0x1

    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return v1

    .line 714
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 715
    .restart local v0    # "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private replaceEnterpriseVpnInDb(ILjava/lang/String;Ljava/lang/String;I)Z
    .locals 12
    .param p1, "cid"    # I
    .param p2, "oldPackageName"    # Ljava/lang/String;
    .param p3, "newPackageName"    # Ljava/lang/String;
    .param p4, "uid"    # I

    .prologue
    .line 925
    if-eqz p2, :cond_0

    .line 927
    :try_start_0
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Inside replacePackageNameInDb : old packageName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v6, "EnterpriseVpn"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "applicationInfo"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "profileName"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "UID_APP"

    aput-object v11, v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 936
    .local v2, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 937
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 938
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v5, "CID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 939
    const-string v5, "applicationInfo"

    invoke-virtual {v1, v5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    const-string v5, "UID_APP"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 941
    const-string v5, "containerState"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 942
    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "applicationInfo"

    aput-object v6, v0, v5

    .line 945
    .local v0, "columns":[Ljava/lang/String;
    const/4 v5, 0x1

    new-array v4, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    .line 948
    .local v4, "values":[Ljava/lang/String;
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "replacePackageNameInDb : before DB insert:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, v4, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, v0, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v6, "EnterpriseVpn"

    invoke-virtual {v5, v6, v0, v4, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 956
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v4    # "values":[Ljava/lang/String;
    :goto_0
    return v5

    .line 952
    :catch_0
    move-exception v3

    .line 953
    .local v3, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "replacePackageNameInDb: Exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private replaceFipsVpnTableInDb(I)Z
    .locals 11
    .param p1, "adminId"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v2, 0x1

    const/4 v9, 0x0

    .line 978
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v4, "Fips_Vpn_table"

    new-array v5, v2, [Ljava/lang/String;

    const-string v6, "adminUid"

    aput-object v6, v5, v9

    new-array v6, v2, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    new-array v7, v2, [Ljava/lang/String;

    const-string v8, "fips_mode"

    aput-object v8, v7, v9

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 981
    .local v1, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 982
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 984
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v2, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 985
    const-string v2, "fips_mode"

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 987
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v3, "Fips_Vpn_table"

    invoke-virtual {v2, v3, v10, v10, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    .line 990
    .end local v0    # "cv":Landroid/content/ContentValues;
    :cond_1
    return v2
.end method

.method private replaceVpnTableInDb(Ljava/lang/String;)Z
    .locals 7
    .param p1, "profileName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 960
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 961
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v3, "Password"

    const-string v4, "null"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    const-string v3, "User_Certificate"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 963
    const-string v3, "User_Password"

    const-string v4, "null"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    const-string v3, "CA_Certificate"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 965
    const-string v3, "CA_Password"

    const-string v4, "null"

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "profile"

    aput-object v3, v0, v5

    .line 970
    .local v0, "columns":[Ljava/lang/String;
    new-array v2, v6, [Ljava/lang/String;

    aput-object p1, v2, v5

    .line 974
    .local v2, "values":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v4, "Vpn_table"

    invoke-virtual {v3, v4, v0, v2, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v3

    return v3
.end method

.method private startVpnAfterMigration()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 877
    :try_start_0
    const-string v1, "enterprise_premium_vpn_policy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mPremiumService:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    .line 879
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mPremiumService:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    if-eqz v1, :cond_0

    .line 880
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mPremiumService:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    invoke-interface {v1}, Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;->startVpnAfterMigration()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 885
    :cond_0
    :goto_0
    iput-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mPremiumService:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    .line 887
    return-void

    .line 882
    :catch_0
    move-exception v0

    .line 883
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startVpnAfterMigration: Exception at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 885
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    iput-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mPremiumService:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    throw v1
.end method

.method private updateEnterpriseVpnInDb(Ljava/lang/String;I)Z
    .locals 11
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "adminId"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 891
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v6, "EnterpriseVpn"

    new-array v7, v9, [Ljava/lang/String;

    const-string v8, "profileName"

    aput-object v8, v7, v4

    const-string v8, "CID"

    aput-object v8, v7, v3

    new-array v8, v9, [Ljava/lang/String;

    aput-object p1, v8, v4

    iget v9, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mNewContainerID:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    .line 902
    .local v1, "deleteStatus":Z
    if-eqz v1, :cond_0

    .line 903
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "updateEnterpriseVpnInDb : Removing data is successful "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 906
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v5, "adminUid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 907
    const-string v5, "CID"

    iget v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mNewContainerID:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 908
    const-string v5, "applicationInfo"

    iget-object v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mNewContainerID:I

    const-string v8, "ADD_ALL_PACKAGES"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getPersonifiedName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    const-string v5, "profileName"

    invoke-virtual {v0, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    const-string v5, "UID_APP"

    const/4 v6, -0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 911
    const-string v5, "containerState"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 913
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v6, "EnterpriseVpn"

    invoke-virtual {v5, v6, v10, v10, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    .line 915
    .local v2, "updateStatus":Z
    if-eqz v2, :cond_0

    .line 916
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "updateEnterpriseVpnInDb : Updating data is successful "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v2    # "updateStatus":Z
    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method private writePkgToDB(Landroid/content/ContentValues;)I
    .locals 14
    .param p1, "cv"    # Landroid/content/ContentValues;

    .prologue
    .line 300
    const/4 v9, 0x0

    .line 301
    .local v9, "profileName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 302
    .local v8, "packageName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 303
    .local v7, "originalPackageName":Ljava/lang/String;
    const/4 v6, -0x1

    .line 304
    .local v6, "oldUid":I
    const/4 v4, -0x1

    .line 305
    .local v4, "newUid":I
    const/4 v5, -0x1

    .line 306
    .local v5, "oldCid":I
    const/4 v3, -0x1

    .line 311
    .local v3, "newCid":I
    :try_start_0
    const-string v10, "profileName"

    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 312
    const-string v10, "packageName"

    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 313
    const-string v10, "packageUid"

    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 314
    const-string v10, "packageCid"

    invoke-virtual {p1, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 316
    sget-boolean v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v10, :cond_0

    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "profileName : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_0
    sget-boolean v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v10, :cond_1

    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "old cid : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_1
    sget-boolean v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v10, :cond_2

    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "old Uid : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_2
    sget-boolean v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v10, :cond_3

    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "old packageName : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_3
    if-nez v5, :cond_9

    .line 322
    const/4 v3, 0x0

    .line 323
    move-object v7, v8

    .line 324
    iget-object v10, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v10, v3, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v4

    .line 325
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "0_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 334
    :goto_0
    sget-boolean v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v10, :cond_4

    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "originalPackageName : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_4
    sget-boolean v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v10, :cond_5

    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "new cid : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_5
    sget-boolean v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v10, :cond_6

    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "new uid : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_6
    sget-boolean v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v10, :cond_7

    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "new packageName : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_7
    iget-object v10, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mVpnIsAll:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v10, v9}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    iget v10, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mNewContainerID:I

    if-ne v3, v10, :cond_a

    .line 341
    sget-boolean v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v10, :cond_8

    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Have to skip : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " newCid : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_8
    const/4 v10, 0x1

    .line 366
    :goto_1
    return v10

    .line 328
    :cond_9
    iget v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mNewContainerID:I

    .line 329
    iget-object v10, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    iget v11, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mOldContainerID:I

    invoke-virtual {v10, v11, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getOriginalPackageName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 330
    iget-object v10, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v10, v3, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result v4

    .line 331
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 347
    :cond_a
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 348
    .local v1, "cv2":Landroid/content/ContentValues;
    const-string v10, "profileName"

    invoke-virtual {v1, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string v10, "packageName"

    invoke-virtual {v1, v10, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const-string v10, "packageUid"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 351
    const-string v10, "packageCid"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 353
    iget-object v10, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    const-string v11, "VpnPackageInfo"

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    .line 354
    .local v0, "a":Z
    sget-boolean v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v10, :cond_b

    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "write result1 : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    :cond_b
    if-nez v0, :cond_c

    .line 357
    const/4 v10, 0x0

    goto :goto_1

    .line 361
    .end local v0    # "a":Z
    .end local v1    # "cv2":Landroid/content/ContentValues;
    :catch_0
    move-exception v2

    .line 362
    .local v2, "e":Ljava/lang/Exception;
    sget-object v10, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 366
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "a":Z
    .restart local v1    # "cv2":Landroid/content/ContentValues;
    :cond_c
    const/4 v10, 0x1

    goto/16 :goto_1
.end method

.method private writeProfileToDB(Landroid/content/ContentValues;)I
    .locals 21
    .param p1, "cv"    # Landroid/content/ContentValues;

    .prologue
    .line 376
    const/4 v12, 0x0

    .line 377
    .local v12, "profileName":Ljava/lang/String;
    const/4 v13, 0x0

    .line 378
    .local v13, "protocolType":Ljava/lang/String;
    const/4 v10, 0x0

    .line 379
    .local v10, "packageName":Ljava/lang/String;
    const/4 v15, 0x0

    .line 380
    .local v15, "vendorNameWithCid":Ljava/lang/String;
    const/4 v11, 0x0

    .line 381
    .local v11, "personaId":I
    const/4 v14, -0x1

    .line 382
    .local v14, "routeType":I
    const/4 v6, -0x1

    .line 383
    .local v6, "adminId":I
    const/4 v7, -0x1

    .line 384
    .local v7, "containerVpnState":I
    sget v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->PROFILE_DEACTIVATED:I

    .line 385
    .local v5, "activateState":I
    const/16 v16, -0x1

    .line 390
    .local v16, "vpnServiceType":I
    :try_start_0
    const-string v17, "profileName"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 391
    const-string v17, "defaultRoute"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 392
    const-string v17, "adminUid"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 393
    const-string/jumbo v17, "vendorName"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 394
    const-string v17, "protocolType"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 395
    const-string v17, "activateState"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 398
    const-string v17, "containerVpnState"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    .line 401
    :try_start_1
    const-string/jumbo v17, "vpnServiceType"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v16

    .line 409
    :goto_0
    :try_start_2
    sget-boolean v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v17, :cond_0

    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "profileName : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_0
    sget-boolean v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v17, :cond_1

    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "routeType : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_1
    sget-boolean v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v17, :cond_2

    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "adminId : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_2
    sget-boolean v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v17, :cond_3

    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    const-string v18, "personaId : 0"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_3
    sget-boolean v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v17, :cond_4

    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "vendorNameWithCid : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_4
    sget-boolean v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v17, :cond_5

    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "protocolType : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_5
    sget-boolean v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v17, :cond_6

    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "activateState : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_6
    sget-boolean v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v17, :cond_7

    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "containerVpnState : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_7
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "0_"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 432
    if-nez v7, :cond_a

    .line 433
    const/4 v7, -0x1

    .line 459
    :cond_8
    :goto_1
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 460
    .local v8, "cv2":Landroid/content/ContentValues;
    const-string v17, "profileName"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    const-string v17, "defaultRoute"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 462
    const-string v17, "adminUid"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 463
    const-string v17, "personaId"

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 464
    const-string/jumbo v17, "vendorName"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    const-string v17, "protocolType"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const-string v17, "activateState"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 467
    const-string v17, "containerVpnState"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 468
    const-string/jumbo v17, "vpnServiceType"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 469
    const-string v17, "chainingEnabled"

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mVpnStorageProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    move-object/from16 v17, v0

    const-string v18, "VpnProfileInfo"

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v8}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v4

    .line 472
    .local v4, "a":Z
    sget-boolean v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v17, :cond_9

    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "result 2 : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_9
    if-nez v4, :cond_d

    .line 474
    const/16 v17, 0x0

    .line 483
    .end local v4    # "a":Z
    .end local v8    # "cv2":Landroid/content/ContentValues;
    :goto_2
    return v17

    .line 403
    :catch_0
    move-exception v9

    .line 405
    .local v9, "e":Ljava/lang/Exception;
    const/16 v16, -0x1

    goto/16 :goto_0

    .line 435
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_a
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v7, v0, :cond_c

    .line 436
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mNewContainerID:I

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mVpnIsAll:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_8

    .line 438
    sget-boolean v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v17, :cond_b

    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ALL : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mVpnIsAll:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v12, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 478
    :catch_1
    move-exception v9

    .line 479
    .restart local v9    # "e":Ljava/lang/Exception;
    sget-object v17, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error  :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v9}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    const/16 v17, 0x0

    goto :goto_2

    .line 446
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_c
    const/4 v7, -0x1

    goto/16 :goto_1

    .line 483
    .restart local v4    # "a":Z
    .restart local v8    # "cv2":Landroid/content/ContentValues;
    :cond_d
    const/16 v17, 0x1

    goto/16 :goto_2
.end method


# virtual methods
.method public closeDB()V
    .locals 1

    .prologue
    .line 671
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mStorageDbHelper:Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;

    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->close()V

    .line 672
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mStorageDbHelper:Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;

    .line 675
    return-void
.end method

.method public deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 1
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "sColumns"    # [Ljava/lang/String;
    .param p3, "sValues"    # [Ljava/lang/String;

    .prologue
    .line 657
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mStorageDbHelper:Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "sColumns"    # [Ljava/lang/String;
    .param p3, "sValues"    # [Ljava/lang/String;
    .param p4, "returnColumns"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 663
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mStorageDbHelper "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mStorageDbHelper:Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :cond_0
    sget-boolean v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sTableName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    :cond_1
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mStorageDbHelper:Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized openMigrationDBHelper()I
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 604
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->isNeedToMigration()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_0

    .line 646
    :goto_0
    monitor-exit p0

    return v4

    .line 608
    :cond_0
    :try_start_1
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mStorageDbHelper:Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;

    if-eqz v6, :cond_1

    .line 609
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mStorageDbHelper:Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->close()V

    .line 610
    const/4 v6, 0x0

    sput-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mStorageDbHelper:Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;

    .line 613
    :cond_1
    const/4 v6, 0x1

    invoke-static {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageConstants;->getDbName(I)Ljava/lang/String;

    move-result-object v3

    .line 614
    .local v3, "myPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 616
    .local v1, "dbfile":Ljava/io/File;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 617
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    const-string v7, "Database exist"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 631
    :try_start_3
    new-instance v6, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;

    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    invoke-static {v8}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageConstants;->getDbName(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v9}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageConstants;->getDbVersion(I)I

    move-result v9

    invoke-direct {v6, v7, v8, v9}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    sput-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mStorageDbHelper:Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 638
    :try_start_4
    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mStorageDbHelper:Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;

    invoke-virtual {v6}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 639
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->enableWriteAheadLogging()Z

    .line 640
    sget-boolean v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->DBG:Z

    if-eqz v6, :cond_2

    sget-object v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VpnStorageProvider constructor : db = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_2
    move v4, v5

    .line 646
    goto :goto_0

    .line 620
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_3
    :try_start_5
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    const-string v6, "Database no"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 624
    :catch_0
    move-exception v2

    .line 625
    .local v2, "e":Ljava/lang/Exception;
    :try_start_6
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    const-string v6, "No database"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 604
    .end local v1    # "dbfile":Ljava/io/File;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "myPath":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 641
    .restart local v1    # "dbfile":Ljava/io/File;
    .restart local v3    # "myPath":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 642
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_7
    sget-object v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    const-string v6, "Failed to OPEN/CREATE the database"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0
.end method

.method public putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 1
    .param p1, "sTableName"    # Ljava/lang/String;
    .param p2, "sColumns"    # [Ljava/lang/String;
    .param p3, "sValues"    # [Ljava/lang/String;
    .param p4, "cv"    # Landroid/content/ContentValues;

    .prologue
    .line 652
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mStorageDbHelper:Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized run()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 120
    monitor-enter p0

    const/4 v1, 0x3

    .line 121
    .local v1, "resultForPremium":I
    :try_start_0
    iget v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->FAIL:I

    .line 124
    .local v0, "resultForGeneric":I
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->isNeedForPremium()Z

    move-result v5

    if-ne v5, v3, :cond_7

    .line 125
    :cond_0
    sget v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mCntMigrationPremium:I

    add-int/lit8 v6, v5, 0x1

    sput v6, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mCntMigrationPremium:I

    if-ge v5, v7, :cond_1

    .line 126
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->doMigrationVpn10()I

    move-result v1

    .line 127
    if-ne v1, v3, :cond_0

    .line 136
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->isNeedForGeneric()Z

    move-result v5

    if-ne v5, v3, :cond_3

    .line 137
    :cond_2
    sget v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mCntMigrationGeneric:I

    if-ge v5, v7, :cond_3

    .line 139
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->doMigrationVPN20()I

    move-result v0

    .line 140
    iget v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->SUCCESS:I

    if-ne v0, v5, :cond_2

    .line 146
    :cond_3
    if-eq v1, v3, :cond_4

    sget v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mMigrationStateGeneric:I

    if-ne v5, v3, :cond_8

    :cond_4
    move v2, v3

    .line 147
    .local v2, "state1":Z
    :goto_1
    if-ne v1, v8, :cond_9

    sget v5, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mMigrationStateGeneric:I

    if-ne v5, v8, :cond_9

    .line 150
    .local v3, "state2":Z
    :goto_2
    if-nez v2, :cond_5

    if-eqz v3, :cond_a

    .line 151
    :cond_5
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->markedMigrationIsDone()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 152
    const/4 v4, 0x0

    const-string v5, "Successful"

    invoke-virtual {p0, v4, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->sendMigrationSuccessIntent(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    :cond_6
    :goto_3
    monitor-exit p0

    return-void

    .line 132
    .end local v2    # "state1":Z
    .end local v3    # "state2":Z
    :cond_7
    const/4 v1, 0x4

    goto :goto_0

    :cond_8
    move v2, v4

    .line 146
    goto :goto_1

    .restart local v2    # "state1":Z
    :cond_9
    move v3, v4

    .line 147
    goto :goto_2

    .line 156
    .restart local v3    # "state2":Z
    :cond_a
    :try_start_1
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->markedMigrationIsDone()Z

    .line 157
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->sendMigrationSuccessIntent(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 120
    .end local v0    # "resultForGeneric":I
    .end local v2    # "state1":Z
    .end local v3    # "state2":Z
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized sendMigrationSuccessIntent(ILjava/lang/String;)V
    .locals 6
    .param p1, "status"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 1004
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v1

    .line 1006
    .local v1, "token":J
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1007
    .local v0, "successIntent":Landroid/content/Intent;
    const-string v3, "com.sec.enterprise.knox.VPN_MIGRATION_COMPLETE"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1008
    const-string/jumbo v3, "vpn_migration_status"

    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1009
    const-string/jumbo v3, "vpn_migration_error"

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mErrorMessage:Ljava/lang/String;

    .end local p2    # "errorMsg":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1010
    sget-object v3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sending migration result intent to User ALL [status : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1013
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1015
    monitor-exit p0

    return-void

    .line 1013
    .end local v0    # "successIntent":Landroid/content/Intent;
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1004
    .end local v1    # "token":J
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3
.end method
