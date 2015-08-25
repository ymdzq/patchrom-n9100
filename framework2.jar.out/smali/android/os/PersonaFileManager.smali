.class public Landroid/os/PersonaFileManager;
.super Ljava/lang/Object;
.source "PersonaFileManager.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/content/pm/IPersonaFileHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "PersonaFileManager"

    sput-object v0, Landroid/os/PersonaFileManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/IPersonaFileHandler;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/content/pm/IPersonaFileHandler;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p2, p0, Landroid/os/PersonaFileManager;->mService:Landroid/content/pm/IPersonaFileHandler;

    .line 34
    iput-object p1, p0, Landroid/os/PersonaFileManager;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method


# virtual methods
.method public changeEncryptionKey(ILjava/lang/String;Ljava/lang/String;Z)Z
    .locals 7
    .param p1, "personaId"    # I
    .param p2, "oldKey"    # Ljava/lang/String;
    .param p3, "newKey"    # Ljava/lang/String;
    .param p4, "isSecureStorageEnabled"    # Z

    .prologue
    .line 86
    :try_start_0
    iget-object v0, p0, Landroid/os/PersonaFileManager;->mService:Landroid/content/pm/IPersonaFileHandler;

    const/4 v5, -0x1

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPersonaFileHandler;->changeEncryptionKey(ILjava/lang/String;Ljava/lang/String;ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 89
    :goto_0
    return v0

    .line 87
    :catch_0
    move-exception v6

    .line 88
    .local v6, "re":Landroid/os/RemoteException;
    sget-object v0, Landroid/os/PersonaFileManager;->TAG:Ljava/lang/String;

    const-string v1, "Failed to call service with exception: "

    invoke-static {v0, v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public createPartition(ILjava/lang/String;Z)Z
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "isSecureStorageEnabled"    # Z

    .prologue
    .line 40
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaFileManager;->mService:Landroid/content/pm/IPersonaFileHandler;

    const/4 v2, -0x1

    invoke-interface {v1, p1, p2, p3, v2}, Landroid/content/pm/IPersonaFileHandler;->createPartition(ILjava/lang/String;ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 43
    :goto_0
    return v1

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaFileManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call service with exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEncrypted(I)Z
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 97
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaFileManager;->mService:Landroid/content/pm/IPersonaFileHandler;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaFileHandler;->isEncrypted(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 100
    :goto_0
    return v1

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaFileManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call service with exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mount(ILjava/lang/String;Z)Z
    .locals 1
    .param p1, "personaId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "isSecureStorageEnabled"    # Z

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/os/PersonaFileManager;->mountFS(ILjava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method public mountFS(ILjava/lang/String;ZZ)Z
    .locals 7
    .param p1, "personaId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "isSecureStorageEnabled"    # Z
    .param p4, "sdpEnabled"    # Z

    .prologue
    .line 65
    :try_start_0
    iget-object v0, p0, Landroid/os/PersonaFileManager;->mService:Landroid/content/pm/IPersonaFileHandler;

    const/4 v4, -0x1

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPersonaFileHandler;->mountFS(ILjava/lang/String;ZIZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 68
    :goto_0
    return v0

    .line 66
    :catch_0
    move-exception v6

    .line 67
    .local v6, "re":Landroid/os/RemoteException;
    sget-object v0, Landroid/os/PersonaFileManager;->TAG:Ljava/lang/String;

    const-string v1, "Failed to call service with exception: "

    invoke-static {v0, v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removePartition(IZ)Z
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "isSecureStorageEnabled"    # Z

    .prologue
    .line 50
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaFileManager;->mService:Landroid/content/pm/IPersonaFileHandler;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPersonaFileHandler;->removePartition(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 53
    :goto_0
    return v1

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaFileManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call service with exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public unmount(I)Z
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 75
    :try_start_0
    iget-object v1, p0, Landroid/os/PersonaFileManager;->mService:Landroid/content/pm/IPersonaFileHandler;

    invoke-interface {v1, p1}, Landroid/content/pm/IPersonaFileHandler;->unmount(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 78
    :goto_0
    return v1

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "re":Landroid/os/RemoteException;
    sget-object v1, Landroid/os/PersonaFileManager;->TAG:Ljava/lang/String;

    const-string v2, "Failed to call service with exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    const/4 v1, 0x0

    goto :goto_0
.end method
