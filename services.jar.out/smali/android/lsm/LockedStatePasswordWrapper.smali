.class public Landroid/lsm/LockedStatePasswordWrapper;
.super Ljava/lang/Object;
.source "LockedStatePasswordWrapper.java"


# static fields
.field public static final SERVICE_NAME:Ljava/lang/String; = "LSManager"

.field private static final TAG:Ljava/lang/String; = "LSManager.LockedStatePasswordWrapper"


# instance fields
.field private mContext:Landroid/content/Context;

.field private m_API:Landroid/os/storage/sensitive/SDServiceAPI;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v0, p0, Landroid/lsm/LockedStatePasswordWrapper;->mContext:Landroid/content/Context;

    .line 14
    iput-object v0, p0, Landroid/lsm/LockedStatePasswordWrapper;->m_API:Landroid/os/storage/sensitive/SDServiceAPI;

    .line 17
    iput-object p1, p0, Landroid/lsm/LockedStatePasswordWrapper;->mContext:Landroid/content/Context;

    .line 18
    const-string v0, "LSManager"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/sensitive/SDServiceAPI$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/sensitive/SDServiceAPI;

    move-result-object v0

    iput-object v0, p0, Landroid/lsm/LockedStatePasswordWrapper;->m_API:Landroid/os/storage/sensitive/SDServiceAPI;

    .line 19
    iget-object v0, p0, Landroid/lsm/LockedStatePasswordWrapper;->m_API:Landroid/os/storage/sensitive/SDServiceAPI;

    if-nez v0, :cond_0

    .line 20
    const-string v0, "LSManager.LockedStatePasswordWrapper"

    const-string v1, "Unable to get SDServiceAPI instance."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentUserID()I
    .locals 2

    .prologue
    .line 25
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Landroid/lsm/LockedStatePasswordWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 26
    .local v0, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v1

    return v1
.end method

.method public setLocked()I
    .locals 3

    .prologue
    .line 47
    iget-object v1, p0, Landroid/lsm/LockedStatePasswordWrapper;->m_API:Landroid/os/storage/sensitive/SDServiceAPI;

    if-nez v1, :cond_0

    .line 48
    const/4 v1, -0x1

    .line 56
    :goto_0
    return v1

    .line 51
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/lsm/LockedStatePasswordWrapper;->m_API:Landroid/os/storage/sensitive/SDServiceAPI;

    invoke-interface {v1}, Landroid/os/storage/sensitive/SDServiceAPI;->setLocked()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LSManager.LockedStatePasswordWrapper"

    const-string v2, "Unable to communicate with LSManager"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setPassword(Ljava/lang/String;)I
    .locals 4
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 30
    iget-object v2, p0, Landroid/lsm/LockedStatePasswordWrapper;->m_API:Landroid/os/storage/sensitive/SDServiceAPI;

    if-nez v2, :cond_0

    .line 31
    const/4 v1, -0x1

    .line 43
    :goto_0
    return v1

    .line 34
    :cond_0
    if-eqz p1, :cond_1

    .line 35
    :try_start_0
    iget-object v2, p0, Landroid/lsm/LockedStatePasswordWrapper;->m_API:Landroid/os/storage/sensitive/SDServiceAPI;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/os/storage/sensitive/SDServiceAPI;->setPassword([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "LSManager.LockedStatePasswordWrapper"

    const-string v3, "Unable to communicate with LSManager"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 37
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1
    :try_start_1
    iget-object v2, p0, Landroid/lsm/LockedStatePasswordWrapper;->m_API:Landroid/os/storage/sensitive/SDServiceAPI;

    const/4 v3, 0x0

    new-array v3, v3, [B

    invoke-interface {v2, v3}, Landroid/os/storage/sensitive/SDServiceAPI;->setPassword([B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
