.class public Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;
.super Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnPolicy$Stub;
.source "EnterpriseVpnPolicyService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseContainerSubscriber;
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService$EnterpriseVpnServiceConnection;
    }
.end annotation


# static fields
.field private static final ACTION_VPN_KNOX_SERVICE:Ljava/lang/String; = "com.sec.enterprise.mdm.services.vpn.KNOX_VPN"

.field private static final DBG:Z

.field private static KNOX_VPN:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static final sErrorResponse:Landroid/app/enterprise/EnterpriseResponseData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mSolutionServiceConnections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService$EnterpriseVpnServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final mSolutionsReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 62
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->DBG:Z

    .line 113
    const-string v0, "EnterpriseVpnPolicyService"

    sput-object v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    .line 115
    const-string v0, "knoxvpn"

    sput-object v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->KNOX_VPN:Ljava/lang/String;

    .line 297
    new-instance v0, Landroid/app/enterprise/EnterpriseResponseData;

    invoke-direct {v0}, Landroid/app/enterprise/EnterpriseResponseData;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->sErrorResponse:Landroid/app/enterprise/EnterpriseResponseData;

    .line 298
    sget-object v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->sErrorResponse:Landroid/app/enterprise/EnterpriseResponseData;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setData(Ljava/lang/Object;)V

    .line 299
    sget-object v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->sErrorResponse:Landroid/app/enterprise/EnterpriseResponseData;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    .line 301
    return-void

    :cond_0
    move v0, v1

    .line 62
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnPolicy$Stub;-><init>()V

    .line 129
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->mSolutionServiceConnections:Ljava/util/Map;

    .line 132
    new-instance v1, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService$1;-><init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;)V

    iput-object v1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->mSolutionsReceiver:Landroid/content/BroadcastReceiver;

    .line 175
    sget-object v1, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    const-string v2, "[Constructor]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->mContext:Landroid/content/Context;

    .line 177
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 178
    .local v0, "filterBoot":Landroid/content/IntentFilter;
    const-string v1, "com.sec.enterprise.mdm.MDM_VPN_ADD_SOLUTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    const-string v1, "com.sec.enterprise.mdm.MDM_VPN_REMOVE_SOLUTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->mSolutionsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 182
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->bindToKnoxVpnService()V

    .line 183
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;Ljava/lang/String;Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService$EnterpriseVpnServiceConnection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService$EnterpriseVpnServiceConnection;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->addVpnSolutionConnection(Ljava/lang/String;Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService$EnterpriseVpnServiceConnection;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;Ljava/lang/String;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService$EnterpriseVpnServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->removeVpnSolutionConnection(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService$EnterpriseVpnServiceConnection;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized addVpnSolutionConnection(Ljava/lang/String;Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService$EnterpriseVpnServiceConnection;)V
    .locals 3
    .param p1, "vpnType"    # Ljava/lang/String;
    .param p2, "serviceConn"    # Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService$EnterpriseVpnServiceConnection;

    .prologue
    .line 267
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding solution "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 269
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->mSolutionServiceConnections:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    :cond_0
    monitor-exit p0

    return-void

    .line 267
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private findUid()I
    .locals 1

    .prologue
    .line 274
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 275
    .local v0, "id":I
    return v0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private declared-synchronized getVpnSolutionService(Ljava/lang/String;)Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;
    .locals 2
    .param p1, "vpnType"    # Ljava/lang/String;

    .prologue
    .line 286
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->mSolutionServiceConnections:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService$EnterpriseVpnServiceConnection;

    .line 288
    .local v0, "serviceConn":Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService$EnterpriseVpnServiceConnection;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService$EnterpriseVpnServiceConnection;->mSolutionService:Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 286
    .end local v0    # "serviceConn":Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService$EnterpriseVpnServiceConnection;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized removeVpnSolutionConnection(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService$EnterpriseVpnServiceConnection;
    .locals 3
    .param p1, "vpnType"    # Ljava/lang/String;

    .prologue
    .line 279
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing solution "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->mSolutionServiceConnections:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService$EnterpriseVpnServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 279
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public activateVpnProfile(Ljava/lang/String;Ljava/lang/String;Z)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 7
    .param p1, "vendorName"    # Ljava/lang/String;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "enable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 381
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->findUid()I

    move-result v0

    .line 382
    .local v0, "adminId":I
    sget-object v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->sErrorResponse:Landroid/app/enterprise/EnterpriseResponseData;

    .line 383
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<*>;"
    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->KNOX_VPN:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->getVpnSolutionService(Ljava/lang/String;)Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;

    move-result-object v3

    .line 384
    .local v3, "solution":Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;
    if-eqz v3, :cond_0

    .line 386
    :try_start_0
    invoke-interface {v3, p1, v0, p2, p3}, Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;->activateVpnProfile(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 394
    :cond_0
    :goto_0
    return-object v2

    .line 387
    :catch_0
    move-exception v1

    .line 388
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error during communication with solution service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0
.end method

.method public addAllContainerPackagesToVpn(Ljava/lang/String;ILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 7
    .param p1, "vendorName"    # Ljava/lang/String;
    .param p2, "containerId"    # I
    .param p3, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 664
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->findUid()I

    move-result v0

    .line 665
    .local v0, "adminId":I
    sget-object v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->sErrorResponse:Landroid/app/enterprise/EnterpriseResponseData;

    .line 666
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<*>;"
    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->KNOX_VPN:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->getVpnSolutionService(Ljava/lang/String;)Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;

    move-result-object v3

    .line 667
    .local v3, "solution":Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;
    if-eqz v3, :cond_0

    .line 669
    :try_start_0
    invoke-interface {v3, p1, v0, p2, p3}, Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;->addAllContainerPackagesToVpn(Ljava/lang/String;IILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 677
    :cond_0
    :goto_0
    return-object v2

    .line 670
    :catch_0
    move-exception v1

    .line 671
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error during communication with solution service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0
.end method

.method public addPackagesToVpn(Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 8
    .param p1, "vendorName"    # Ljava/lang/String;
    .param p2, "containerId"    # I
    .param p3, "packageList"    # [Ljava/lang/String;
    .param p4, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 607
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->findUid()I

    move-result v2

    .line 608
    .local v2, "adminId":I
    sget-object v7, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->sErrorResponse:Landroid/app/enterprise/EnterpriseResponseData;

    .line 609
    .local v7, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<*>;"
    sget-object v1, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->KNOX_VPN:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->getVpnSolutionService(Ljava/lang/String;)Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;

    move-result-object v0

    .line 610
    .local v0, "solution":Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;
    if-eqz v0, :cond_0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 612
    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;->addPackagesToVpn(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 620
    :cond_0
    :goto_0
    return-object v7

    .line 613
    :catch_0
    move-exception v6

    .line 614
    .local v6, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error during communication with solution service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    const/4 v1, 0x1

    const/4 v3, 0x3

    invoke-virtual {v7, v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0
.end method

.method public bindKnoxVpnInterface(Ljava/lang/String;)Z
    .locals 7
    .param p1, "vendorName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 305
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->findUid()I

    move-result v0

    .line 306
    .local v0, "adminId":I
    const/4 v2, 0x0

    .line 307
    .local v2, "responseData":Z
    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->KNOX_VPN:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->getVpnSolutionService(Ljava/lang/String;)Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;

    move-result-object v3

    .line 308
    .local v3, "solution":Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;
    sget-boolean v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->DBG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EnterpriseVpnPolicyService bindKnoxVpnInterface : solution = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_0
    if-eqz v3, :cond_1

    .line 311
    :try_start_0
    invoke-interface {v3, p1, v0}, Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;->bindKnoxVpnInterface(Ljava/lang/String;I)Z

    move-result v2

    .line 312
    sget-boolean v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->DBG:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EnterpriseVpnPolicyService bindKnoxVpnInterface : response = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :cond_1
    :goto_0
    return v2

    .line 313
    :catch_0
    move-exception v1

    .line 314
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error during communication with solution service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public bindToKnoxVpnService()V
    .locals 3

    .prologue
    .line 186
    const-string v1, "com.sec.enterprise.mdm.services.vpn.KNOX_VPN"

    .line 187
    .local v1, "startAction":Ljava/lang/String;
    new-instance v0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService$EnterpriseVpnServiceConnection;

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService$EnterpriseVpnServiceConnection;-><init>(Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;Ljava/lang/String;)V

    .line 189
    .local v0, "serviceConn":Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService$EnterpriseVpnServiceConnection;
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService$EnterpriseVpnServiceConnection;->startConnection()V

    .line 190
    sget-object v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->KNOX_VPN:Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->addVpnSolutionConnection(Ljava/lang/String;Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService$EnterpriseVpnServiceConnection;)V

    .line 191
    return-void
.end method

.method public containerPackageListFromVpnDatabase(I)[Ljava/lang/String;
    .locals 6
    .param p1, "container_id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 761
    const/4 v1, 0x0

    .line 762
    .local v1, "responseData":[Ljava/lang/String;
    sget-object v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->KNOX_VPN:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->getVpnSolutionService(Ljava/lang/String;)Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;

    move-result-object v2

    .line 763
    .local v2, "solution":Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;
    if-eqz v2, :cond_0

    .line 765
    :try_start_0
    invoke-interface {v2, p1}, Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;->containerPackageListFromVpnDatabase(I)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 771
    :cond_0
    :goto_0
    return-object v1

    .line 766
    :catch_0
    move-exception v0

    .line 767
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error during communication with solution service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public createVpnProfile(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 7
    .param p1, "vendorName"    # Ljava/lang/String;
    .param p2, "jsonProfile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 324
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->findUid()I

    move-result v0

    .line 325
    .local v0, "adminId":I
    sget-object v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->sErrorResponse:Landroid/app/enterprise/EnterpriseResponseData;

    .line 326
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<*>;"
    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->KNOX_VPN:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->getVpnSolutionService(Ljava/lang/String;)Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;

    move-result-object v3

    .line 327
    .local v3, "solution":Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;
    if-eqz v3, :cond_0

    .line 329
    :try_start_0
    invoke-interface {v3, p1, v0, p2}, Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;->createVpnProfile(Ljava/lang/String;ILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 337
    :cond_0
    :goto_0
    return-object v2

    .line 330
    :catch_0
    move-exception v1

    .line 331
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error during communication with solution service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0
.end method

.method public getAllPackagesInVpnProfile(Ljava/lang/String;ILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 7
    .param p1, "vendorName"    # Ljava/lang/String;
    .param p2, "containerId"    # I
    .param p3, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 645
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->findUid()I

    move-result v0

    .line 646
    .local v0, "adminId":I
    sget-object v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->sErrorResponse:Landroid/app/enterprise/EnterpriseResponseData;

    .line 647
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<*>;"
    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->KNOX_VPN:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->getVpnSolutionService(Ljava/lang/String;)Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;

    move-result-object v3

    .line 648
    .local v3, "solution":Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;
    if-eqz v3, :cond_0

    .line 650
    :try_start_0
    invoke-interface {v3, p1, v0, p2, p3}, Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;->getAllPackagesInVpnProfile(Ljava/lang/String;IILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 658
    :cond_0
    :goto_0
    return-object v2

    .line 651
    :catch_0
    move-exception v1

    .line 652
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error during communication with solution service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0
.end method

.method public getAllVpnProfiles(Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 7
    .param p1, "vendorName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 400
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->findUid()I

    move-result v0

    .line 401
    .local v0, "adminId":I
    sget-object v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->sErrorResponse:Landroid/app/enterprise/EnterpriseResponseData;

    .line 402
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<*>;"
    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->KNOX_VPN:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->getVpnSolutionService(Ljava/lang/String;)Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;

    move-result-object v3

    .line 403
    .local v3, "solution":Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;
    if-eqz v3, :cond_0

    .line 405
    :try_start_0
    invoke-interface {v3, p1, v0}, Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;->getAllVpnProfiles(Ljava/lang/String;I)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 413
    :cond_0
    :goto_0
    return-object v2

    .line 406
    :catch_0
    move-exception v1

    .line 407
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error during communication with solution service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0
.end method

.method public getCACertificate(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 7
    .param p1, "vendorName"    # Ljava/lang/String;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 476
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->findUid()I

    move-result v0

    .line 477
    .local v0, "adminId":I
    sget-object v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->sErrorResponse:Landroid/app/enterprise/EnterpriseResponseData;

    .line 478
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<*>;"
    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->KNOX_VPN:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->getVpnSolutionService(Ljava/lang/String;)Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;

    move-result-object v3

    .line 479
    .local v3, "solution":Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;
    if-eqz v3, :cond_0

    .line 481
    :try_start_0
    invoke-interface {v3, p1, v0, p2}, Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;->getCACertificate(Ljava/lang/String;ILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 489
    :cond_0
    :goto_0
    return-object v2

    .line 482
    :catch_0
    move-exception v1

    .line 483
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error during communication with solution service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0
.end method

.method public getErrorString(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 7
    .param p1, "vendorName"    # Ljava/lang/String;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 551
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->findUid()I

    move-result v0

    .line 552
    .local v0, "adminId":I
    sget-object v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->sErrorResponse:Landroid/app/enterprise/EnterpriseResponseData;

    .line 553
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<*>;"
    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->KNOX_VPN:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->getVpnSolutionService(Ljava/lang/String;)Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;

    move-result-object v3

    .line 554
    .local v3, "solution":Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;
    if-eqz v3, :cond_0

    .line 556
    :try_start_0
    invoke-interface {v3, p1, v0, p2}, Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;->getErrorString(Ljava/lang/String;ILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 564
    :cond_0
    :goto_0
    return-object v2

    .line 557
    :catch_0
    move-exception v1

    .line 558
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error during communication with solution service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0
.end method

.method public getState(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 7
    .param p1, "vendorName"    # Ljava/lang/String;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 532
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->findUid()I

    move-result v0

    .line 533
    .local v0, "adminId":I
    sget-object v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->sErrorResponse:Landroid/app/enterprise/EnterpriseResponseData;

    .line 534
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<*>;"
    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->KNOX_VPN:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->getVpnSolutionService(Ljava/lang/String;)Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;

    move-result-object v3

    .line 535
    .local v3, "solution":Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;
    if-eqz v3, :cond_0

    .line 537
    :try_start_0
    invoke-interface {v3, p1, v0, p2}, Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;->getState(Ljava/lang/String;ILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 545
    :cond_0
    :goto_0
    return-object v2

    .line 538
    :catch_0
    move-exception v1

    .line 539
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error during communication with solution service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0
.end method

.method public getUserCertificate(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 7
    .param p1, "vendorName"    # Ljava/lang/String;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 438
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->findUid()I

    move-result v0

    .line 439
    .local v0, "adminId":I
    sget-object v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->sErrorResponse:Landroid/app/enterprise/EnterpriseResponseData;

    .line 440
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<*>;"
    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->KNOX_VPN:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->getVpnSolutionService(Ljava/lang/String;)Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;

    move-result-object v3

    .line 441
    .local v3, "solution":Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;
    if-eqz v3, :cond_0

    .line 443
    :try_start_0
    invoke-interface {v3, p1, v0, p2}, Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;->getUserCertificate(Ljava/lang/String;ILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 451
    :cond_0
    :goto_0
    return-object v2

    .line 444
    :catch_0
    move-exception v1

    .line 445
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error during communication with solution service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0
.end method

.method public getVpnModeOfOperation(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 7
    .param p1, "vendorName"    # Ljava/lang/String;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 588
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->findUid()I

    move-result v0

    .line 589
    .local v0, "adminId":I
    sget-object v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->sErrorResponse:Landroid/app/enterprise/EnterpriseResponseData;

    .line 590
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<*>;"
    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->KNOX_VPN:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->getVpnSolutionService(Ljava/lang/String;)Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;

    move-result-object v3

    .line 591
    .local v3, "solution":Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;
    if-eqz v3, :cond_0

    .line 593
    :try_start_0
    invoke-interface {v3, p1, v0, p2}, Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;->getVpnModeOfOperation(Ljava/lang/String;ILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 601
    :cond_0
    :goto_0
    return-object v2

    .line 594
    :catch_0
    move-exception v1

    .line 595
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error during communication with solution service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0
.end method

.method public getVpnProfile(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 7
    .param p1, "vendorName"    # Ljava/lang/String;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 343
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->findUid()I

    move-result v0

    .line 344
    .local v0, "adminId":I
    sget-object v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->sErrorResponse:Landroid/app/enterprise/EnterpriseResponseData;

    .line 345
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<*>;"
    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->KNOX_VPN:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->getVpnSolutionService(Ljava/lang/String;)Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;

    move-result-object v3

    .line 346
    .local v3, "solution":Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;
    if-eqz v3, :cond_0

    .line 348
    :try_start_0
    invoke-interface {v3, p1, v0, p2}, Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;->getVpnProfile(Ljava/lang/String;ILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 356
    :cond_0
    :goto_0
    return-object v2

    .line 349
    :catch_0
    move-exception v1

    .line 350
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error during communication with solution service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0
.end method

.method public notifyContainerAppLaunch(I)V
    .locals 5
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 746
    sget-object v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->KNOX_VPN:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->getVpnSolutionService(Ljava/lang/String;)Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;

    move-result-object v1

    .line 747
    .local v1, "solution":Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;
    if-eqz v1, :cond_0

    .line 749
    :try_start_0
    invoke-interface {v1, p1}, Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;->notifyContainerAppLaunch(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 755
    :cond_0
    :goto_0
    return-void

    .line 750
    :catch_0
    move-exception v0

    .line 751
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error during communication with solution service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onAdminAdded(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 208
    sget-object v1, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    const-string v2, "[onAdminAdded]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.enterprise.mdm.MDM_VPN_ADMIN_ADDED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 210
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "extra_uid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 211
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.sec.MDM_ENTERPRISE_VPN_SOLUTION"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 213
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 218
    sget-object v1, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    const-string v2, "[onAdminRemoved]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.enterprise.mdm.MDM_VPN_ADMIN_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 220
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "extra_uid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 221
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.sec.MDM_ENTERPRISE_VPN_SOLUTION"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method public onContainerCreation(II)V
    .locals 3
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 241
    sget-object v1, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    const-string v2, "[onContainerCreation]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.enterprise.mdm.MDM_VPN_CONTAINER_CREATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 243
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "extra_container_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 244
    const-string v1, "extra_uid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 245
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.sec.MDM_ENTERPRISE_VPN_SOLUTION"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 247
    return-void
.end method

.method public onContainerRemoved(II)V
    .locals 3
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 256
    sget-object v1, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    const-string v2, "[onContainerRemoved]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.enterprise.mdm.MDM_VPN_CONTAINER_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 258
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "extra_container_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 259
    const-string v1, "extra_uid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 260
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.sec.MDM_ENTERPRISE_VPN_SOLUTION"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 231
    sget-object v1, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    const-string v2, "[onPreAdminRemoval]"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.enterprise.mdm.MDM_VPN_PRE_ADMIN_REMOVAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 233
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "extra_uid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 234
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.sec.MDM_ENTERPRISE_VPN_SOLUTION"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method public onPreContainerRemoval(II)V
    .locals 0
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 251
    return-void
.end method

.method public removeAllContainerPackagesFromVpn(Ljava/lang/String;ILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 7
    .param p1, "vendorName"    # Ljava/lang/String;
    .param p2, "containerId"    # I
    .param p3, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 683
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->findUid()I

    move-result v0

    .line 684
    .local v0, "adminId":I
    sget-object v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->sErrorResponse:Landroid/app/enterprise/EnterpriseResponseData;

    .line 685
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<*>;"
    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->KNOX_VPN:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->getVpnSolutionService(Ljava/lang/String;)Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;

    move-result-object v3

    .line 686
    .local v3, "solution":Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;
    if-eqz v3, :cond_0

    .line 688
    :try_start_0
    invoke-interface {v3, p1, v0, p2, p3}, Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;->removeAllContainerPackagesFromVpn(Ljava/lang/String;IILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 696
    :cond_0
    :goto_0
    return-object v2

    .line 689
    :catch_0
    move-exception v1

    .line 690
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error during communication with solution service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0
.end method

.method public removePackagesFromVpn(Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 8
    .param p1, "vendorName"    # Ljava/lang/String;
    .param p2, "containerId"    # I
    .param p3, "packageList"    # [Ljava/lang/String;
    .param p4, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 626
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->findUid()I

    move-result v2

    .line 627
    .local v2, "adminId":I
    sget-object v7, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->sErrorResponse:Landroid/app/enterprise/EnterpriseResponseData;

    .line 628
    .local v7, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<*>;"
    sget-object v1, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->KNOX_VPN:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->getVpnSolutionService(Ljava/lang/String;)Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;

    move-result-object v0

    .line 629
    .local v0, "solution":Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;
    if-eqz v0, :cond_0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 631
    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;->removePackagesFromVpn(Ljava/lang/String;II[Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 639
    :cond_0
    :goto_0
    return-object v7

    .line 632
    :catch_0
    move-exception v6

    .line 633
    .local v6, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error during communication with solution service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    const/4 v1, 0x1

    const/4 v3, 0x3

    invoke-virtual {v7, v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0
.end method

.method public removeVpnProfile(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 7
    .param p1, "vendorName"    # Ljava/lang/String;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 362
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->findUid()I

    move-result v0

    .line 363
    .local v0, "adminId":I
    sget-object v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->sErrorResponse:Landroid/app/enterprise/EnterpriseResponseData;

    .line 364
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<*>;"
    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->KNOX_VPN:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->getVpnSolutionService(Ljava/lang/String;)Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;

    move-result-object v3

    .line 365
    .local v3, "solution":Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;
    if-eqz v3, :cond_0

    .line 367
    :try_start_0
    invoke-interface {v3, p1, v0, p2}, Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;->removeVpnProfile(Ljava/lang/String;ILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 375
    :cond_0
    :goto_0
    return-object v2

    .line 368
    :catch_0
    move-exception v1

    .line 369
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error during communication with solution service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0
.end method

.method public setAutoRetryOnConnectionError(Ljava/lang/String;Ljava/lang/String;Z)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 7
    .param p1, "vendorName"    # Ljava/lang/String;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 723
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->findUid()I

    move-result v0

    .line 724
    .local v0, "adminId":I
    sget-object v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->sErrorResponse:Landroid/app/enterprise/EnterpriseResponseData;

    .line 725
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<*>;"
    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->KNOX_VPN:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->getVpnSolutionService(Ljava/lang/String;)Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;

    move-result-object v3

    .line 726
    .local v3, "solution":Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;
    if-eqz v3, :cond_0

    .line 728
    :try_start_0
    invoke-interface {v3, p1, v0, p2, p3}, Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;->setAutoRetryOnConnectionError(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 736
    :cond_0
    :goto_0
    return-object v2

    .line 729
    :catch_0
    move-exception v1

    .line 730
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error during communication with solution service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0
.end method

.method public setCACertificate(Ljava/lang/String;Ljava/lang/String;[B)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 7
    .param p1, "vendorName"    # Ljava/lang/String;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "pkcs12Blob"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B)",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 457
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->findUid()I

    move-result v0

    .line 458
    .local v0, "adminId":I
    sget-object v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->sErrorResponse:Landroid/app/enterprise/EnterpriseResponseData;

    .line 459
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<*>;"
    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->KNOX_VPN:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->getVpnSolutionService(Ljava/lang/String;)Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;

    move-result-object v3

    .line 460
    .local v3, "solution":Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;
    if-eqz v3, :cond_0

    .line 462
    :try_start_0
    invoke-interface {v3, p1, v0, p2, p3}, Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;->setCACertificate(Ljava/lang/String;ILjava/lang/String;[B)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 470
    :cond_0
    :goto_0
    return-object v2

    .line 463
    :catch_0
    move-exception v1

    .line 464
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error during communication with solution service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0
.end method

.method public setServerCertValidationUserAcceptanceCriteria(Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;I)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 9
    .param p1, "vendorName"    # Ljava/lang/String;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "enableValidation"    # Z
    .param p4, "condition"    # Ljava/util/List;
    .param p5, "frequency"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 703
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->findUid()I

    move-result v2

    .line 704
    .local v2, "adminId":I
    sget-object v8, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->sErrorResponse:Landroid/app/enterprise/EnterpriseResponseData;

    .line 705
    .local v8, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<*>;"
    sget-object v1, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->KNOX_VPN:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->getVpnSolutionService(Ljava/lang/String;)Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;

    move-result-object v0

    .line 706
    .local v0, "solution":Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    .line 708
    :try_start_0
    invoke-interface/range {v0 .. v6}, Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;->setServerCertValidationUserAcceptanceCriteria(Ljava/lang/String;ILjava/lang/String;ZLjava/util/List;I)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 717
    :cond_0
    :goto_0
    return-object v8

    .line 710
    :catch_0
    move-exception v7

    .line 711
    .local v7, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error during communication with solution service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    const/4 v1, 0x1

    const/4 v3, 0x3

    invoke-virtual {v8, v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0
.end method

.method public setUserCertificate(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 8
    .param p1, "vendorName"    # Ljava/lang/String;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "pkcs12Blob"    # [B
    .param p4, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 419
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->findUid()I

    move-result v2

    .line 420
    .local v2, "adminId":I
    sget-object v7, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->sErrorResponse:Landroid/app/enterprise/EnterpriseResponseData;

    .line 421
    .local v7, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<*>;"
    sget-object v1, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->KNOX_VPN:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->getVpnSolutionService(Ljava/lang/String;)Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;

    move-result-object v0

    .line 422
    .local v0, "solution":Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 424
    :try_start_0
    invoke-interface/range {v0 .. v5}, Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;->setUserCertificate(Ljava/lang/String;ILjava/lang/String;[BLjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 432
    :cond_0
    :goto_0
    return-object v7

    .line 425
    :catch_0
    move-exception v6

    .line 426
    .local v6, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error during communication with solution service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    const/4 v1, 0x1

    const/4 v3, 0x3

    invoke-virtual {v7, v1, v3}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0
.end method

.method public setVpnFrameworkSystemProperty(Ljava/lang/String;)V
    .locals 1
    .param p1, "currentFramework"    # Ljava/lang/String;

    .prologue
    .line 202
    const-string v0, "net.vpn.framework"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method public setVpnModeOfOperation(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 7
    .param p1, "vendorName"    # Ljava/lang/String;
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "vpnMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 570
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->findUid()I

    move-result v0

    .line 571
    .local v0, "adminId":I
    sget-object v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->sErrorResponse:Landroid/app/enterprise/EnterpriseResponseData;

    .line 572
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<*>;"
    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->KNOX_VPN:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->getVpnSolutionService(Ljava/lang/String;)Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;

    move-result-object v3

    .line 573
    .local v3, "solution":Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;
    if-eqz v3, :cond_0

    .line 575
    :try_start_0
    invoke-interface {v3, p1, v0, p2, p3}, Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;->setVpnModeOfOperation(Ljava/lang/String;ILjava/lang/String;I)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 583
    :cond_0
    :goto_0
    return-object v2

    .line 576
    :catch_0
    move-exception v1

    .line 577
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error during communication with solution service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0
.end method

.method public startConnection(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 7
    .param p1, "vendorName"    # Ljava/lang/String;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 495
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->findUid()I

    move-result v0

    .line 496
    .local v0, "adminId":I
    sget-object v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->sErrorResponse:Landroid/app/enterprise/EnterpriseResponseData;

    .line 497
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<*>;"
    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->KNOX_VPN:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->getVpnSolutionService(Ljava/lang/String;)Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;

    move-result-object v3

    .line 498
    .local v3, "solution":Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;
    if-eqz v3, :cond_0

    .line 500
    :try_start_0
    invoke-interface {v3, p1, v0, p2}, Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;->startConnection(Ljava/lang/String;ILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 508
    :cond_0
    :goto_0
    return-object v2

    .line 501
    :catch_0
    move-exception v1

    .line 502
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error during communication with solution service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0
.end method

.method public stopConnection(Ljava/lang/String;Ljava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    .locals 7
    .param p1, "vendorName"    # Ljava/lang/String;
    .param p2, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/app/enterprise/EnterpriseResponseData",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 514
    invoke-direct {p0}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->findUid()I

    move-result v0

    .line 515
    .local v0, "adminId":I
    sget-object v2, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->sErrorResponse:Landroid/app/enterprise/EnterpriseResponseData;

    .line 516
    .local v2, "responseData":Landroid/app/enterprise/EnterpriseResponseData;, "Landroid/app/enterprise/EnterpriseResponseData<*>;"
    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->KNOX_VPN:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->getVpnSolutionService(Ljava/lang/String;)Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;

    move-result-object v3

    .line 517
    .local v3, "solution":Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;
    if-eqz v3, :cond_0

    .line 519
    :try_start_0
    invoke-interface {v3, p1, v0, p2}, Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnSolution;->stopConnection(Ljava/lang/String;ILjava/lang/String;)Landroid/app/enterprise/EnterpriseResponseData;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 527
    :cond_0
    :goto_0
    return-object v2

    .line 520
    :catch_0
    move-exception v1

    .line 521
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/android/server/enterprise/vpn/EnterpriseVpnPolicyService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error during communication with solution service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    const/4 v4, 0x1

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Landroid/app/enterprise/EnterpriseResponseData;->setStatus(II)V

    goto :goto_0
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 227
    return-void
.end method
