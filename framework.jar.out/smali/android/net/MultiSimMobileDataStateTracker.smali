.class public Landroid/net/MultiSimMobileDataStateTracker;
.super Landroid/net/MobileDataStateTracker;
.source "MultiSimMobileDataStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/MultiSimMobileDataStateTracker$1;,
        Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;,
        Landroid/net/MultiSimMobileDataStateTracker$MultiSimMdstHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "MultiSimMobileDataStateTracker"

.field private static final VDBG:Z


# instance fields
.field private mDataConnectionTrackerAcs:[Lcom/android/internal/util/AsyncChannel;

.field mSelectedSimSlot:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 3
    .param p1, "netType"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Landroid/net/MobileDataStateTracker;-><init>(ILjava/lang/String;)V

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/MultiSimMobileDataStateTracker;->mSelectedSimSlot:I

    .line 83
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/util/AsyncChannel;

    iput-object v0, p0, Landroid/net/MultiSimMobileDataStateTracker;->mDataConnectionTrackerAcs:[Lcom/android/internal/util/AsyncChannel;

    .line 85
    new-instance v0, Landroid/net/NetworkInfo;

    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getTelephonyManagerFromDataPrefer()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getTelephonyManagerFromDataPrefer()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, p2, v2}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/MultiSimMobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 88
    invoke-static {p1}, Landroid/net/MultiSimMobileDataStateTracker;->networkTypeToApnType(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/MultiSimMobileDataStateTracker;->mApnType:Ljava/lang/String;

    .line 90
    return-void
.end method

.method static synthetic access$100(Landroid/net/MultiSimMobileDataStateTracker;)[Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .param p0, "x0"    # Landroid/net/MultiSimMobileDataStateTracker;

    .prologue
    .line 66
    iget-object v0, p0, Landroid/net/MultiSimMobileDataStateTracker;->mDataConnectionTrackerAcs:[Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$200(Landroid/net/MultiSimMobileDataStateTracker;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/MultiSimMobileDataStateTracker;

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/net/MultiSimMobileDataStateTracker;->isSlot2DataFuncImplementedOnCtcNonCggModel()Z

    move-result v0

    return v0
.end method

.method private isSlot2DataFuncImplementedOnCtcNonCggModel()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 157
    const/4 v4, 0x0

    .line 158
    .local v4, "ret":Z
    const-string v6, "ro.product.name"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "buildcarrier":Ljava/lang/String;
    const-string v6, "gsm.sim.operator.numeric"

    const-string v7, "none"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, "numeric":Ljava/lang/String;
    const-string v6, "gsm.sim.operator.numeric2"

    const-string v7, "none"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 161
    .local v3, "numeric2":Ljava/lang/String;
    const-string v6, "ril.ICC_TYPE"

    invoke-static {v6, v5}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 162
    .local v1, "cardType":I
    const-string v6, "ja3gduosctc"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x4

    if-ne v1, v6, :cond_0

    const-string v6, "20404"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v4, v5

    .line 166
    :goto_0
    return v4

    .line 162
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private setEnableApn(Ljava/lang/String;ZI)I
    .locals 6
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "enable"    # Z
    .param p3, "simSlot"    # I

    .prologue
    .line 613
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/net/MultiSimMobileDataStateTracker;->getPhoneService(Z)V

    .line 618
    const/4 v3, 0x0

    .local v3, "retry":I
    :goto_0
    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    .line 619
    iget-object v4, p0, Landroid/net/MultiSimMobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-nez v4, :cond_1

    .line 620
    const-string v4, "Ignoring feature request because could not acquire PhoneService"

    invoke-virtual {p0, v4}, Landroid/net/MultiSimMobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 643
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p2, :cond_6

    const-string v4, "enable"

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " APN type \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/net/MultiSimMobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 644
    const/4 v4, 0x3

    :goto_2
    return v4

    .line 625
    :cond_1
    :try_start_0
    const-string v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 626
    .local v1, "phoneService":Lcom/android/internal/telephony/ITelephony;
    const-string v4, "phone2"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 627
    .local v2, "phoneService2":Lcom/android/internal/telephony/ITelephony;
    if-eqz p2, :cond_3

    .line 628
    if-nez p3, :cond_2

    .line 629
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->enableApnType(Ljava/lang/String;)I

    move-result v4

    goto :goto_2

    .line 631
    :cond_2
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->enableApnType(Ljava/lang/String;)I

    move-result v4

    goto :goto_2

    .line 633
    :cond_3
    if-nez p3, :cond_4

    .line 634
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->disableApnType(Ljava/lang/String;)I

    move-result v4

    goto :goto_2

    .line 636
    :cond_4
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->disableApnType(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_2

    .line 638
    .end local v1    # "phoneService":Lcom/android/internal/telephony/ITelephony;
    .end local v2    # "phoneService2":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 639
    .local v0, "e":Landroid/os/RemoteException;
    if-nez v3, :cond_5

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroid/net/MultiSimMobileDataStateTracker;->getPhoneService(Z)V

    .line 618
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 643
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_6
    const-string v4, "disable"

    goto :goto_1
.end method


# virtual methods
.method protected getPhoneService(Z)V
    .locals 7
    .param p1, "forceRefresh"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 332
    const-string v3, "persist.sys.dataprefer.simid"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/MultiSimManager;->getLogicalSimSlot(I)I

    move-result v2

    .line 333
    .local v2, "simSlot":I
    const-string v3, "ril.datacross.simid"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 335
    .local v0, "crossSimSlot":I
    iget v3, p0, Landroid/net/MultiSimMobileDataStateTracker;->mSelectedSimSlot:I

    if-eq v3, v2, :cond_0

    .line 336
    const/4 p1, 0x1

    .line 338
    :cond_0
    if-eq v0, v4, :cond_1

    .line 339
    const/4 p1, 0x1

    .line 341
    move v2, v0

    .line 344
    :cond_1
    iget-object v3, p0, Landroid/net/MultiSimMobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    if-eqz v3, :cond_2

    if-eqz p1, :cond_3

    .line 345
    :cond_2
    iput v2, p0, Landroid/net/MultiSimMobileDataStateTracker;->mSelectedSimSlot:I

    .line 346
    const-string v3, "phone"

    invoke-static {v3, v2}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    iput-object v3, p0, Landroid/net/MultiSimMobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    .line 351
    :cond_3
    const-string v3, "persist.sys.dataprefer.simid"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 352
    .local v1, "dataPreferSimSlot":I
    const-string v3, "mms"

    iget-object v4, p0, Landroid/net/MultiSimMobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 353
    const-string v3, "phone"

    invoke-static {v3, v5}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    iput-object v3, p0, Landroid/net/MultiSimMobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    .line 364
    :goto_0
    return-void

    .line 354
    :cond_4
    const-string v3, "mms2"

    iget-object v4, p0, Landroid/net/MultiSimMobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 355
    const-string v3, "phone"

    invoke-static {v3, v6}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    iput-object v3, p0, Landroid/net/MultiSimMobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    goto :goto_0

    .line 356
    :cond_5
    invoke-direct {p0}, Landroid/net/MultiSimMobileDataStateTracker;->isSlot2DataFuncImplementedOnCtcNonCggModel()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 358
    const-string v3, "phone"

    invoke-static {v3, v6}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    iput-object v3, p0, Landroid/net/MultiSimMobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    goto :goto_0

    .line 360
    :cond_6
    const-string v3, "phone"

    invoke-static {v3, v1}, Lcom/android/internal/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    iput-object v3, p0, Landroid/net/MultiSimMobileDataStateTracker;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    goto :goto_0
.end method

.method public getTcpBufferSizesPropName()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 384
    const-string/jumbo v0, "unknown"

    .line 388
    .local v0, "networkTypeStr":Ljava/lang/String;
    const-string v2, "mms"

    iget-object v3, p0, Landroid/net/MultiSimMobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 389
    invoke-static {v4}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v1

    .line 400
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    :goto_0
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 451
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown network type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/net/MultiSimMobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 453
    :cond_0
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "net.tcp.buffersize."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 390
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1
    const-string v2, "mms2"

    iget-object v3, p0, Landroid/net/MultiSimMobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 391
    const/4 v2, 0x1

    invoke-static {v2}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v1

    .restart local v1    # "tm":Landroid/telephony/TelephonyManager;
    goto :goto_0

    .line 393
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    :cond_2
    const-string v2, "persist.sys.dataprefer.simid"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v1

    .restart local v1    # "tm":Landroid/telephony/TelephonyManager;
    goto :goto_0

    .line 402
    :pswitch_0
    const-string v0, "gprs"

    .line 403
    goto :goto_1

    .line 405
    :pswitch_1
    const-string v0, "edge"

    .line 406
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_DATA_EDGE_USE_GPRS_BUFFERSIZE_FOR_MMS2"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "mms2"

    iget-object v3, p0, Landroid/net/MultiSimMobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 408
    const-string v0, "gprs"

    goto :goto_1

    .line 412
    :pswitch_2
    const-string/jumbo v0, "umts"

    .line 413
    goto :goto_1

    .line 415
    :pswitch_3
    const-string v0, "hsdpa"

    .line 416
    goto :goto_1

    .line 418
    :pswitch_4
    const-string v0, "hsupa"

    .line 419
    goto :goto_1

    .line 421
    :pswitch_5
    const-string v0, "hspa"

    .line 422
    goto :goto_1

    .line 424
    :pswitch_6
    const-string v0, "hspap"

    .line 425
    goto :goto_1

    .line 427
    :pswitch_7
    const-string v0, "cdma"

    .line 428
    goto :goto_1

    .line 430
    :pswitch_8
    const-string v0, "1xrtt"

    .line 431
    goto :goto_1

    .line 433
    :pswitch_9
    const-string v0, "evdo"

    .line 434
    goto :goto_1

    .line 436
    :pswitch_a
    const-string v0, "evdo"

    .line 437
    goto :goto_1

    .line 439
    :pswitch_b
    const-string v0, "evdo"

    .line 440
    goto :goto_1

    .line 442
    :pswitch_c
    const-string v0, "iden"

    .line 443
    goto :goto_1

    .line 445
    :pswitch_d
    const-string v0, "lte"

    .line 446
    goto :goto_1

    .line 448
    :pswitch_e
    const-string v0, "ehrpd"

    .line 449
    goto :goto_1

    .line 400
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_c
        :pswitch_b
        :pswitch_d
        :pswitch_e
        :pswitch_6
    .end packed-switch
.end method

.method public reconnect(I)Z
    .locals 4
    .param p1, "simSlot"    # I

    .prologue
    const/4 v3, 0x0

    .line 571
    const/4 v0, 0x0

    .line 572
    .local v0, "retValue":Z
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/net/MultiSimMobileDataStateTracker;->setTeardownRequested(Z)V

    .line 573
    iget-object v1, p0, Landroid/net/MultiSimMobileDataStateTracker;->mApnType:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, p1}, Landroid/net/MultiSimMobileDataStateTracker;->setEnableApn(Ljava/lang/String;ZI)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 593
    const-string v1, "Error in reconnect - unexpected response."

    invoke-virtual {p0, v1}, Landroid/net/MultiSimMobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 596
    :goto_0
    :pswitch_0
    return v0

    .line 576
    :pswitch_1
    const/4 v0, 0x1

    .line 577
    goto :goto_0

    .line 583
    :pswitch_2
    iget-object v1, p0, Landroid/net/MultiSimMobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 584
    iget-object v1, p0, Landroid/net/MultiSimMobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2, v3, v3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    :cond_0
    const/4 v0, 0x1

    .line 588
    goto :goto_0

    .line 573
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setDependencyMet(Z)V
    .locals 7
    .param p1, "met"    # Z

    .prologue
    const/4 v4, 0x0

    .line 549
    const-string v5, "persist.sys.dataprefer.simid"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 550
    .local v3, "simSlot":I
    invoke-static {v3}, Lcom/android/internal/telephony/MultiSimManager;->getLogicalSimSlot(I)I

    move-result v3

    .line 551
    const-string v5, "apnType"

    iget-object v6, p0, Landroid/net/MultiSimMobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 554
    .local v0, "bundle":Landroid/os/Bundle;
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 555
    .local v2, "msg":Landroid/os/Message;
    const v5, 0x4201f

    iput v5, v2, Landroid/os/Message;->what:I

    .line 556
    if-eqz p1, :cond_0

    const/4 v4, 0x1

    :cond_0
    iput v4, v2, Landroid/os/Message;->arg1:I

    .line 557
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 558
    iget-object v4, p0, Landroid/net/MultiSimMobileDataStateTracker;->mDataConnectionTrackerAcs:[Lcom/android/internal/util/AsyncChannel;

    aget-object v4, v4, v3

    invoke-virtual {v4, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    .end local v2    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 560
    :catch_0
    move-exception v1

    .line 561
    .local v1, "e":Ljava/lang/NullPointerException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDependencyMet: X mAc was null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/net/MultiSimMobileDataStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setEnableFailFastMobileData(I)V
    .locals 4
    .param p1, "enabled"    # I

    .prologue
    .line 531
    const-string v2, "persist.sys.dataprefer.simid"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 532
    .local v1, "simSlot":I
    invoke-static {v1}, Lcom/android/internal/telephony/MultiSimManager;->getLogicalSimSlot(I)I

    move-result v1

    .line 534
    iget-object v2, p0, Landroid/net/MultiSimMobileDataStateTracker;->mDataConnectionTrackerAcs:[Lcom/android/internal/util/AsyncChannel;

    aget-object v0, v2, v1

    .line 535
    .local v0, "channel":Lcom/android/internal/util/AsyncChannel;
    if-eqz v0, :cond_0

    .line 536
    const v2, 0x42024

    invoke-virtual {v0, v2, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 539
    :cond_0
    return-void
.end method

.method public setPolicyDataEnable(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    const/4 v2, 0x0

    .line 510
    const-string v3, "persist.sys.dataprefer.simid"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 511
    .local v1, "simSlot":I
    invoke-static {v1}, Lcom/android/internal/telephony/MultiSimManager;->getLogicalSimSlot(I)I

    move-result v1

    .line 513
    iget-object v3, p0, Landroid/net/MultiSimMobileDataStateTracker;->mDataConnectionTrackerAcs:[Lcom/android/internal/util/AsyncChannel;

    aget-object v0, v3, v1

    .line 514
    .local v0, "channel":Lcom/android/internal/util/AsyncChannel;
    if-eqz v0, :cond_1

    .line 515
    const v3, 0x42020

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v3, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 517
    iput-boolean p1, p0, Landroid/net/MultiSimMobileDataStateTracker;->mPolicyDataEnabled:Z

    .line 520
    :cond_1
    return-void
.end method

.method public setUserDataEnable(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 464
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 465
    iget-object v2, p0, Landroid/net/MultiSimMobileDataStateTracker;->mDataConnectionTrackerAcs:[Lcom/android/internal/util/AsyncChannel;

    aget-object v0, v2, v1

    .line 466
    .local v0, "channel":Lcom/android/internal/util/AsyncChannel;
    if-eqz v0, :cond_1

    .line 467
    const v3, 0x4201e

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v0, v3, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 469
    iput-boolean p1, p0, Landroid/net/MultiSimMobileDataStateTracker;->mUserDataEnabled:Z

    .line 464
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 467
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 472
    :cond_1
    const-string v2, "setUserDataEnable: channel = null"

    invoke-virtual {p0, v2}, Landroid/net/MultiSimMobileDataStateTracker;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 478
    .end local v0    # "channel":Lcom/android/internal/util/AsyncChannel;
    :cond_2
    return-void
.end method

.method public setUserDataEnableEx(ZI)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "simSlot"    # I

    .prologue
    .line 485
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUserDataEnableEx: E enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", simSlot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/MultiSimMobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 487
    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getSimSlotCount()I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 488
    iget-object v1, p0, Landroid/net/MultiSimMobileDataStateTracker;->mDataConnectionTrackerAcs:[Lcom/android/internal/util/AsyncChannel;

    aget-object v0, v1, p2

    .line 489
    .local v0, "channel":Lcom/android/internal/util/AsyncChannel;
    if-eqz v0, :cond_2

    .line 490
    const v2, 0x4201e

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(II)V

    .line 492
    iput-boolean p1, p0, Landroid/net/MultiSimMobileDataStateTracker;->mUserDataEnabled:Z

    .line 500
    .end local v0    # "channel":Lcom/android/internal/util/AsyncChannel;
    :cond_0
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUserDataEnable: X enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", simSlot="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/MultiSimMobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 502
    return-void

    .line 490
    .restart local v0    # "channel":Lcom/android/internal/util/AsyncChannel;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 494
    :cond_2
    const-string v1, "setUserDataEnableEx: channel = null"

    invoke-virtual {p0, v1}, Landroid/net/MultiSimMobileDataStateTracker;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public startMonitoring(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "target"    # Landroid/os/Handler;

    .prologue
    .line 102
    iput-object p2, p0, Landroid/net/MultiSimMobileDataStateTracker;->mTarget:Landroid/os/Handler;

    .line 103
    iput-object p1, p0, Landroid/net/MultiSimMobileDataStateTracker;->mContext:Landroid/content/Context;

    .line 105
    new-instance v1, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMdstHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMdstHandler;-><init>(Landroid/os/Looper;Landroid/net/MultiSimMobileDataStateTracker;)V

    iput-object v1, p0, Landroid/net/MultiSimMobileDataStateTracker;->mHandler:Landroid/os/Handler;

    .line 107
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 108
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    const-string v1, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Landroid/net/MultiSimMobileDataStateTracker;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;-><init>(Landroid/net/MultiSimMobileDataStateTracker;Landroid/net/MultiSimMobileDataStateTracker$1;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 112
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    iput-object v1, p0, Landroid/net/MultiSimMobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 114
    return-void
.end method

.method public supplyMessenger(Landroid/os/Messenger;I)V
    .locals 3
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "simSlot"    # I

    .prologue
    .line 371
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    .line 372
    .local v0, "ac":Lcom/android/internal/util/AsyncChannel;
    iget-object v1, p0, Landroid/net/MultiSimMobileDataStateTracker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/net/MultiSimMobileDataStateTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;I)V

    .line 374
    return-void
.end method

.method public teardown(I)Z
    .locals 4
    .param p1, "simSlot"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 604
    invoke-virtual {p0, v0}, Landroid/net/MultiSimMobileDataStateTracker;->setTeardownRequested(Z)V

    .line 605
    iget-object v2, p0, Landroid/net/MultiSimMobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-direct {p0, v2, v1, p1}, Landroid/net/MultiSimMobileDataStateTracker;->setEnableApn(Ljava/lang/String;ZI)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
