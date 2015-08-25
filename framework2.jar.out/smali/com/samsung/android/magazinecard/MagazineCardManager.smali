.class public Lcom/samsung/android/magazinecard/MagazineCardManager;
.super Ljava/lang/Object;
.source "MagazineCardManager.java"


# static fields
.field private static KNOX_APP_PACKAGE_NAME_PREFIX:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mCurrentUserID:I


# instance fields
.field private mService:Lcom/samsung/android/magazinecard/IMagazineCardManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-string v0, "MagazineCardManager"

    sput-object v0, Lcom/samsung/android/magazinecard/MagazineCardManager;->TAG:Ljava/lang/String;

    .line 52
    const-string/jumbo v0, "sec_container_"

    sput-object v0, Lcom/samsung/android/magazinecard/MagazineCardManager;->KNOX_APP_PACKAGE_NAME_PREFIX:Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/magazinecard/MagazineCardManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/magazinecard/MagazineCardManager;->mService:Lcom/samsung/android/magazinecard/IMagazineCardManager;

    .line 64
    sget-object v0, Lcom/samsung/android/magazinecard/MagazineCardManager;->TAG:Ljava/lang/String;

    const-string v1, "MagazineCardManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    sput-object p1, Lcom/samsung/android/magazinecard/MagazineCardManager;->mContext:Landroid/content/Context;

    .line 67
    sget-object v0, Lcom/samsung/android/magazinecard/MagazineCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    sput v0, Lcom/samsung/android/magazinecard/MagazineCardManager;->mCurrentUserID:I

    .line 68
    invoke-direct {p0}, Lcom/samsung/android/magazinecard/MagazineCardManager;->getService()Lcom/samsung/android/magazinecard/IMagazineCardManager;

    .line 69
    return-void
.end method

.method private getAppName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 101
    if-nez p1, :cond_0

    .line 102
    sget-object v1, Lcom/samsung/android/magazinecard/MagazineCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 105
    :cond_0
    const-string v1, "\\."

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "split":[Ljava/lang/String;
    array-length v1, v0

    if-lez v1, :cond_1

    .line 107
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    .line 109
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getComponentName(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 89
    const/4 v0, 0x0

    .line 91
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz p1, :cond_0

    .line 92
    new-instance v0, Landroid/content/ComponentName;

    .end local v0    # "component":Landroid/content/ComponentName;
    const-string v1, ""

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .restart local v0    # "component":Landroid/content/ComponentName;
    :goto_0
    return-object v0

    .line 94
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    .end local v0    # "component":Landroid/content/ComponentName;
    sget-object v1, Lcom/samsung/android/magazinecard/MagazineCardManager;->mContext:Landroid/content/Context;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .restart local v0    # "component":Landroid/content/ComponentName;
    goto :goto_0
.end method

.method private declared-synchronized getService()Lcom/samsung/android/magazinecard/IMagazineCardManager;
    .locals 2

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/magazinecard/MagazineCardManager;->mService:Lcom/samsung/android/magazinecard/IMagazineCardManager;

    if-nez v0, :cond_0

    .line 73
    const-string/jumbo v0, "magazinecardservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/magazinecard/IMagazineCardManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/magazinecard/IMagazineCardManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/magazinecard/MagazineCardManager;->mService:Lcom/samsung/android/magazinecard/IMagazineCardManager;

    .line 74
    iget-object v0, p0, Lcom/samsung/android/magazinecard/MagazineCardManager;->mService:Lcom/samsung/android/magazinecard/IMagazineCardManager;

    if-nez v0, :cond_0

    .line 75
    sget-object v0, Lcom/samsung/android/magazinecard/MagazineCardManager;->TAG:Ljava/lang/String;

    const-string v1, "getService : Could not get the service!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/magazinecard/MagazineCardManager;->mService:Lcom/samsung/android/magazinecard/IMagazineCardManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private isKnoxApp()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 118
    sget-object v2, Lcom/samsung/android/magazinecard/MagazineCardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_0

    sget-object v2, Lcom/samsung/android/magazinecard/MagazineCardManager;->KNOX_APP_PACKAGE_NAME_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v1, :cond_0

    .line 122
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setTimeStamp(Lcom/samsung/android/magazinecard/MagazineCardInfo;)V
    .locals 4
    .param p1, "card"    # Lcom/samsung/android/magazinecard/MagazineCardInfo;

    .prologue
    .line 83
    iget-wide v0, p1, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mTimeStamp:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mTimeStamp:J

    .line 86
    :cond_0
    return-void
.end method


# virtual methods
.method public addCard(Lcom/samsung/android/magazinecard/MagazineCardInfo;)Z
    .locals 8
    .param p1, "card"    # Lcom/samsung/android/magazinecard/MagazineCardInfo;

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    .line 128
    sget-object v4, Lcom/samsung/android/magazinecard/MagazineCardManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addCard : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v7}, Lcom/samsung/android/magazinecard/MagazineCardManager;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " U"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/samsung/android/magazinecard/MagazineCardManager;->mCurrentUserID:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " C"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mCardId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-direct {p0}, Lcom/samsung/android/magazinecard/MagazineCardManager;->isKnoxApp()Z

    move-result v4

    if-ne v4, v3, :cond_1

    .line 132
    sget-object v3, Lcom/samsung/android/magazinecard/MagazineCardManager;->TAG:Ljava/lang/String;

    const-string v4, "addCard : KNOX application cannot use magazine card service"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v3, 0x0

    .line 150
    :cond_0
    :goto_0
    return v3

    .line 137
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/magazinecard/MagazineCardManager;->getService()Lcom/samsung/android/magazinecard/IMagazineCardManager;

    move-result-object v2

    .line 138
    .local v2, "svc":Lcom/samsung/android/magazinecard/IMagazineCardManager;
    if-eqz v2, :cond_0

    .line 139
    invoke-direct {p0, p1}, Lcom/samsung/android/magazinecard/MagazineCardManager;->setTimeStamp(Lcom/samsung/android/magazinecard/MagazineCardInfo;)V

    .line 141
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/samsung/android/magazinecard/MagazineCardManager;->getComponentName(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 143
    .local v0, "component":Landroid/content/ComponentName;
    sget v4, Lcom/samsung/android/magazinecard/MagazineCardManager;->mCurrentUserID:I

    iput v4, p1, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mUserId:I

    .line 144
    sget v4, Lcom/samsung/android/magazinecard/MagazineCardManager;->mCurrentUserID:I

    invoke-interface {v2, v4, v0, p1}, Lcom/samsung/android/magazinecard/IMagazineCardManager;->addCard(ILandroid/content/ComponentName;Lcom/samsung/android/magazinecard/MagazineCardInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 146
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v2    # "svc":Lcom/samsung/android/magazinecard/IMagazineCardManager;
    :catch_0
    move-exception v1

    .line 148
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getCard(I)Lcom/samsung/android/magazinecard/MagazineCardRecord;
    .locals 6
    .param p1, "cardRecordId"    # I

    .prologue
    const/4 v2, 0x0

    .line 295
    :try_start_0
    sget-object v3, Lcom/samsung/android/magazinecard/MagazineCardManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCard : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/samsung/android/magazinecard/MagazineCardManager;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " R"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-direct {p0}, Lcom/samsung/android/magazinecard/MagazineCardManager;->getService()Lcom/samsung/android/magazinecard/IMagazineCardManager;

    move-result-object v1

    .line 297
    .local v1, "svc":Lcom/samsung/android/magazinecard/IMagazineCardManager;
    if-eqz v1, :cond_0

    .line 298
    invoke-interface {v1, p1}, Lcom/samsung/android/magazinecard/IMagazineCardManager;->getCard(I)Lcom/samsung/android/magazinecard/MagazineCardRecord;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 304
    :cond_0
    return-object v2

    .line 300
    .end local v1    # "svc":Lcom/samsung/android/magazinecard/IMagazineCardManager;
    :catch_0
    move-exception v0

    .line 302
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getCardRecordIdList(IZ)[I
    .locals 6
    .param p1, "userId"    # I
    .param p2, "securityMode"    # Z

    .prologue
    const/4 v2, 0x0

    .line 277
    sget-object v3, Lcom/samsung/android/magazinecard/MagazineCardManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCardRecordIdList : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v2}, Lcom/samsung/android/magazinecard/MagazineCardManager;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " U"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/samsung/android/magazinecard/MagazineCardManager;->mCurrentUserID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ReqU"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " SM:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/magazinecard/MagazineCardManager;->getService()Lcom/samsung/android/magazinecard/IMagazineCardManager;

    move-result-object v1

    .line 280
    .local v1, "svc":Lcom/samsung/android/magazinecard/IMagazineCardManager;
    if-eqz v1, :cond_0

    .line 281
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/magazinecard/IMagazineCardManager;->getCardRecordIdList(IZ)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 287
    :cond_0
    return-object v2

    .line 283
    .end local v1    # "svc":Lcom/samsung/android/magazinecard/IMagazineCardManager;
    :catch_0
    move-exception v0

    .line 285
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public isCardExist(I)Z
    .locals 1
    .param p1, "cardId"    # I

    .prologue
    .line 244
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/magazinecard/MagazineCardManager;->isCardExist(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isCardExist(Ljava/lang/String;I)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cardId"    # I

    .prologue
    const/4 v3, 0x0

    .line 248
    sget-object v4, Lcom/samsung/android/magazinecard/MagazineCardManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isCardExist : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, p1}, Lcom/samsung/android/magazinecard/MagazineCardManager;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " U"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/samsung/android/magazinecard/MagazineCardManager;->mCurrentUserID:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " C"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-direct {p0}, Lcom/samsung/android/magazinecard/MagazineCardManager;->isKnoxApp()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 252
    sget-object v4, Lcom/samsung/android/magazinecard/MagazineCardManager;->TAG:Ljava/lang/String;

    const-string v5, "isCardExist : KNOX application cannot use magazine card service"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_0
    :goto_0
    return v3

    .line 258
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/magazinecard/MagazineCardManager;->getService()Lcom/samsung/android/magazinecard/IMagazineCardManager;

    move-result-object v2

    .line 259
    .local v2, "svc":Lcom/samsung/android/magazinecard/IMagazineCardManager;
    if-eqz v2, :cond_0

    .line 260
    invoke-direct {p0, p1}, Lcom/samsung/android/magazinecard/MagazineCardManager;->getComponentName(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 261
    .local v0, "component":Landroid/content/ComponentName;
    sget v3, Lcom/samsung/android/magazinecard/MagazineCardManager;->mCurrentUserID:I

    invoke-interface {v2, v3, v0, p2}, Lcom/samsung/android/magazinecard/IMagazineCardManager;->isCardExist(ILandroid/content/ComponentName;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 263
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v2    # "svc":Lcom/samsung/android/magazinecard/IMagazineCardManager;
    :catch_0
    move-exception v1

    .line 265
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public isServiceEnabled()Z
    .locals 1

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/samsung/android/magazinecard/MagazineCardManager;->isKnoxApp()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/magazinecard/MagazineCardManager;->getService()Lcom/samsung/android/magazinecard/IMagazineCardManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAllCard()Z
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/magazinecard/MagazineCardManager;->removeAllCard(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeAllCard(Ljava/lang/String;)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 215
    sget-object v4, Lcom/samsung/android/magazinecard/MagazineCardManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removeAllCard : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, p1}, Lcom/samsung/android/magazinecard/MagazineCardManager;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " U"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/samsung/android/magazinecard/MagazineCardManager;->mCurrentUserID:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-direct {p0}, Lcom/samsung/android/magazinecard/MagazineCardManager;->isKnoxApp()Z

    move-result v4

    if-ne v4, v3, :cond_1

    .line 219
    sget-object v3, Lcom/samsung/android/magazinecard/MagazineCardManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "removeAllCard : KNOX application cannot use magazine card service"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/4 v3, 0x0

    .line 240
    :cond_0
    :goto_0
    return v3

    .line 224
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/magazinecard/MagazineCardManager;->getService()Lcom/samsung/android/magazinecard/IMagazineCardManager;

    move-result-object v2

    .line 225
    .local v2, "svc":Lcom/samsung/android/magazinecard/IMagazineCardManager;
    if-eqz v2, :cond_0

    .line 226
    const/4 v0, 0x0

    .line 228
    .local v0, "component":Landroid/content/ComponentName;
    if-eqz p1, :cond_2

    .line 229
    new-instance v0, Landroid/content/ComponentName;

    .end local v0    # "component":Landroid/content/ComponentName;
    const-string v4, ""

    invoke-direct {v0, p1, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .restart local v0    # "component":Landroid/content/ComponentName;
    :goto_1
    sget v4, Lcom/samsung/android/magazinecard/MagazineCardManager;->mCurrentUserID:I

    invoke-interface {v2, v4, v0}, Lcom/samsung/android/magazinecard/IMagazineCardManager;->removeAllCard(ILandroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 235
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v2    # "svc":Lcom/samsung/android/magazinecard/IMagazineCardManager;
    :catch_0
    move-exception v1

    .line 237
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 231
    .end local v1    # "ex":Landroid/os/RemoteException;
    .restart local v0    # "component":Landroid/content/ComponentName;
    .restart local v2    # "svc":Lcom/samsung/android/magazinecard/IMagazineCardManager;
    :cond_2
    :try_start_1
    new-instance v0, Landroid/content/ComponentName;

    .end local v0    # "component":Landroid/content/ComponentName;
    sget-object v4, Lcom/samsung/android/magazinecard/MagazineCardManager;->mContext:Landroid/content/Context;

    const-string v5, ""

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v0    # "component":Landroid/content/ComponentName;
    goto :goto_1
.end method

.method public removeCard(I)Z
    .locals 1
    .param p1, "cardId"    # I

    .prologue
    .line 184
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/magazinecard/MagazineCardManager;->removeCard(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public removeCard(Ljava/lang/String;I)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cardId"    # I

    .prologue
    const/4 v3, 0x1

    .line 188
    sget-object v4, Lcom/samsung/android/magazinecard/MagazineCardManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removeCard : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, p1}, Lcom/samsung/android/magazinecard/MagazineCardManager;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " U"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/samsung/android/magazinecard/MagazineCardManager;->mCurrentUserID:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " C"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-direct {p0}, Lcom/samsung/android/magazinecard/MagazineCardManager;->isKnoxApp()Z

    move-result v4

    if-ne v4, v3, :cond_1

    .line 192
    sget-object v3, Lcom/samsung/android/magazinecard/MagazineCardManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "removeCard : KNOX application cannot use magazine card service"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const/4 v3, 0x0

    .line 207
    :cond_0
    :goto_0
    return v3

    .line 197
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/magazinecard/MagazineCardManager;->getService()Lcom/samsung/android/magazinecard/IMagazineCardManager;

    move-result-object v2

    .line 198
    .local v2, "svc":Lcom/samsung/android/magazinecard/IMagazineCardManager;
    if-eqz v2, :cond_0

    .line 199
    invoke-direct {p0, p1}, Lcom/samsung/android/magazinecard/MagazineCardManager;->getComponentName(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 200
    .local v0, "component":Landroid/content/ComponentName;
    sget v4, Lcom/samsung/android/magazinecard/MagazineCardManager;->mCurrentUserID:I

    invoke-interface {v2, v4, v0, p2}, Lcom/samsung/android/magazinecard/IMagazineCardManager;->removeCard(ILandroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 202
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v2    # "svc":Lcom/samsung/android/magazinecard/IMagazineCardManager;
    :catch_0
    move-exception v1

    .line 204
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public updateCard(Lcom/samsung/android/magazinecard/MagazineCardInfo;)Z
    .locals 1
    .param p1, "card"    # Lcom/samsung/android/magazinecard/MagazineCardInfo;

    .prologue
    .line 155
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/magazinecard/MagazineCardManager;->updateCard(Ljava/lang/String;Lcom/samsung/android/magazinecard/MagazineCardInfo;)Z

    move-result v0

    return v0
.end method

.method public updateCard(Ljava/lang/String;Lcom/samsung/android/magazinecard/MagazineCardInfo;)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "card"    # Lcom/samsung/android/magazinecard/MagazineCardInfo;

    .prologue
    const/4 v3, 0x1

    .line 159
    sget-object v4, Lcom/samsung/android/magazinecard/MagazineCardManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateCard : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, p1}, Lcom/samsung/android/magazinecard/MagazineCardManager;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " U"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/samsung/android/magazinecard/MagazineCardManager;->mCurrentUserID:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " C"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mCardId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-direct {p0}, Lcom/samsung/android/magazinecard/MagazineCardManager;->isKnoxApp()Z

    move-result v4

    if-ne v4, v3, :cond_1

    .line 163
    sget-object v3, Lcom/samsung/android/magazinecard/MagazineCardManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "updateCard : KNOX application cannot use magazine card service"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/4 v3, 0x0

    .line 180
    :cond_0
    :goto_0
    return v3

    .line 169
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/magazinecard/MagazineCardManager;->getService()Lcom/samsung/android/magazinecard/IMagazineCardManager;

    move-result-object v2

    .line 170
    .local v2, "svc":Lcom/samsung/android/magazinecard/IMagazineCardManager;
    if-eqz v2, :cond_0

    .line 171
    invoke-direct {p0, p1}, Lcom/samsung/android/magazinecard/MagazineCardManager;->getComponentName(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 173
    .local v0, "component":Landroid/content/ComponentName;
    sget v4, Lcom/samsung/android/magazinecard/MagazineCardManager;->mCurrentUserID:I

    iput v4, p2, Lcom/samsung/android/magazinecard/MagazineCardInfo;->mUserId:I

    .line 174
    sget v4, Lcom/samsung/android/magazinecard/MagazineCardManager;->mCurrentUserID:I

    invoke-interface {v2, v4, v0, p2}, Lcom/samsung/android/magazinecard/IMagazineCardManager;->updateCard(ILandroid/content/ComponentName;Lcom/samsung/android/magazinecard/MagazineCardInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 176
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v2    # "svc":Lcom/samsung/android/magazinecard/IMagazineCardManager;
    :catch_0
    move-exception v1

    .line 178
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
