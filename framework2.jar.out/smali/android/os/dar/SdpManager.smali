.class public Landroid/os/dar/SdpManager;
.super Ljava/lang/Object;
.source "SdpManager.java"


# static fields
.field public static final INTENT_SDP_STATE_CHANGED:Ljava/lang/String; = "com.sec.sdp.SDP_STATE_CHANGED"

.field public static final SDP_ID:Ljava/lang/String; = "id"

.field public static final SDP_STATE:Ljava/lang/String; = "state"

.field public static final STATE_ACTIVE:I = 0x1

.field public static final STATE_BOOTED:I = 0x0

.field public static final STATE_ERROR:I = -0x1

.field public static final STATE_INACTIVE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SDP.manager"

.field private static _instance:Landroid/os/dar/SdpManager;


# instance fields
.field mService:Landroid/os/dar/ISdpManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Landroid/os/dar/SdpManager;->_instance:Landroid/os/dar/SdpManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/dar/SdpManager;->mService:Landroid/os/dar/ISdpManager;

    return-void
.end method

.method public static getSdpManager()Landroid/os/dar/SdpManager;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Landroid/os/dar/SdpManager;->_instance:Landroid/os/dar/SdpManager;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Landroid/os/dar/SdpManager;

    invoke-direct {v0}, Landroid/os/dar/SdpManager;-><init>()V

    sput-object v0, Landroid/os/dar/SdpManager;->_instance:Landroid/os/dar/SdpManager;

    .line 47
    :cond_0
    sget-object v0, Landroid/os/dar/SdpManager;->_instance:Landroid/os/dar/SdpManager;

    return-object v0
.end method

.method private getSdpService()Landroid/os/dar/ISdpManager;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Landroid/os/dar/SdpManager;->mService:Landroid/os/dar/ISdpManager;

    if-nez v0, :cond_0

    .line 35
    const-string/jumbo v0, "sdp"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/dar/ISdpManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/dar/ISdpManager;

    move-result-object v0

    iput-object v0, p0, Landroid/os/dar/SdpManager;->mService:Landroid/os/dar/ISdpManager;

    .line 39
    :cond_0
    iget-object v0, p0, Landroid/os/dar/SdpManager;->mService:Landroid/os/dar/ISdpManager;

    return-object v0
.end method


# virtual methods
.method public addColumn(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/os/dar/SdpManager;->getSdpService()Landroid/os/dar/ISdpManager;

    move-result-object v0

    .line 64
    .local v0, "service":Landroid/os/dar/ISdpManager;
    if-eqz v0, :cond_0

    .line 65
    invoke-direct {p0}, Landroid/os/dar/SdpManager;->getSdpService()Landroid/os/dar/ISdpManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/os/dar/ISdpManager;->addColumn(Landroid/net/Uri;Ljava/lang/String;)V

    .line 67
    :cond_0
    return-void
.end method

.method public getSensitiveDBInfo(II)Ljava/util/List;
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 187
    invoke-direct {p0}, Landroid/os/dar/SdpManager;->getSdpService()Landroid/os/dar/ISdpManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 189
    :try_start_0
    invoke-direct {p0}, Landroid/os/dar/SdpManager;->getSdpService()Landroid/os/dar/ISdpManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/os/dar/ISdpManager;->getSensitiveDBInfo(II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 194
    :goto_0
    return-object v1

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "SDP.manager"

    const-string v2, "Failed to call getState"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSensitiveFileInfo(II)Ljava/util/List;
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 176
    invoke-direct {p0}, Landroid/os/dar/SdpManager;->getSdpService()Landroid/os/dar/ISdpManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 178
    :try_start_0
    invoke-direct {p0}, Landroid/os/dar/SdpManager;->getSdpService()Landroid/os/dar/ISdpManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/os/dar/ISdpManager;->getSensitiveFileInfo(II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 183
    :goto_0
    return-object v1

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "SDP.manager"

    const-string v2, "Failed to call getState"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 183
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getState(I)I
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 143
    invoke-direct {p0}, Landroid/os/dar/SdpManager;->getSdpService()Landroid/os/dar/ISdpManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 145
    :try_start_0
    invoke-direct {p0}, Landroid/os/dar/SdpManager;->getSdpService()Landroid/os/dar/ISdpManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/dar/ISdpManager;->getState(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 150
    :goto_0
    return v1

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "SDP.manager"

    const-string v2, "Failed to call getState"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public isSDPEnabled(I)Z
    .locals 3
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 198
    invoke-direct {p0}, Landroid/os/dar/SdpManager;->getSdpService()Landroid/os/dar/ISdpManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 200
    :try_start_0
    invoke-direct {p0}, Landroid/os/dar/SdpManager;->getSdpService()Landroid/os/dar/ISdpManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/dar/ISdpManager;->isSDPEnabled(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 205
    :goto_0
    return v1

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "SDP.manager"

    const-string v2, "Failed to call isSDPEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 205
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSensitiveColumn(Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/os/dar/SdpManager;->getSdpService()Landroid/os/dar/ISdpManager;

    move-result-object v0

    .line 54
    .local v0, "service":Landroid/os/dar/ISdpManager;
    if-eqz v0, :cond_0

    .line 55
    invoke-direct {p0}, Landroid/os/dar/SdpManager;->getSdpService()Landroid/os/dar/ISdpManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/os/dar/ISdpManager;->isSensitiveColumn(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v1

    .line 57
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onBoot(I)Z
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/os/dar/SdpManager;->getSdpService()Landroid/os/dar/ISdpManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 73
    :try_start_0
    invoke-direct {p0}, Landroid/os/dar/SdpManager;->getSdpService()Landroid/os/dar/ISdpManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/dar/ISdpManager;->onBoot(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 78
    :goto_0
    return v1

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "SDP.manager"

    const-string v2, "Failed to call onBoot"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 78
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onChangePassword(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "oldPw"    # Ljava/lang/String;
    .param p3, "newPw"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-direct {p0}, Landroid/os/dar/SdpManager;->getSdpService()Landroid/os/dar/ISdpManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 109
    :try_start_0
    invoke-direct {p0}, Landroid/os/dar/SdpManager;->getSdpService()Landroid/os/dar/ISdpManager;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/os/dar/ISdpManager;->onChangePassword(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 114
    :goto_0
    return v1

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "SDP.manager"

    const-string v2, "Failed to call onChangePassword"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onDeviceLocked(I)Z
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 83
    invoke-direct {p0}, Landroid/os/dar/SdpManager;->getSdpService()Landroid/os/dar/ISdpManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 85
    :try_start_0
    invoke-direct {p0}, Landroid/os/dar/SdpManager;->getSdpService()Landroid/os/dar/ISdpManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/dar/ISdpManager;->onDeviceLocked(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 90
    :goto_0
    return v1

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "SDP.manager"

    const-string v2, "Failed to call onDeviceLocked"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onDeviceUnlocked(ILjava/lang/String;)Z
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "pw"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-direct {p0}, Landroid/os/dar/SdpManager;->getSdpService()Landroid/os/dar/ISdpManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 97
    :try_start_0
    invoke-direct {p0}, Landroid/os/dar/SdpManager;->getSdpService()Landroid/os/dar/ISdpManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/os/dar/ISdpManager;->onDeviceUnlocked(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 102
    :goto_0
    return v1

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "SDP.manager"

    const-string v2, "Failed to call onDeviceUnlocked"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onUserAdded(ILjava/lang/String;)Z
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "pw"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-direct {p0}, Landroid/os/dar/SdpManager;->getSdpService()Landroid/os/dar/ISdpManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 121
    :try_start_0
    invoke-direct {p0}, Landroid/os/dar/SdpManager;->getSdpService()Landroid/os/dar/ISdpManager;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/os/dar/ISdpManager;->onUserAdded(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 126
    :goto_0
    return v1

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "SDP.manager"

    const-string v2, "Failed to call onUserAdded"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onUserRemoved(I)Z
    .locals 3
    .param p1, "personaId"    # I

    .prologue
    .line 131
    invoke-direct {p0}, Landroid/os/dar/SdpManager;->getSdpService()Landroid/os/dar/ISdpManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 133
    :try_start_0
    invoke-direct {p0}, Landroid/os/dar/SdpManager;->getSdpService()Landroid/os/dar/ISdpManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/os/dar/ISdpManager;->onUserRemoved(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 138
    :goto_0
    return v1

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "SDP.manager"

    const-string v2, "Failed to call onUserRemoved"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSensitiveDBInfo(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "personaId"    # I
    .param p2, "uid"    # I
    .param p3, "dBPath"    # Ljava/lang/String;
    .param p4, "tableName"    # Ljava/lang/String;
    .param p5, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 165
    invoke-direct {p0}, Landroid/os/dar/SdpManager;->getSdpService()Landroid/os/dar/ISdpManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    :try_start_0
    invoke-direct {p0}, Landroid/os/dar/SdpManager;->getSdpService()Landroid/os/dar/ISdpManager;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/os/dar/ISdpManager;->setSensitiveDBInfo(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 172
    :goto_0
    return v0

    .line 168
    :catch_0
    move-exception v6

    .line 169
    .local v6, "re":Landroid/os/RemoteException;
    const-string v0, "SDP.manager"

    const-string v1, "Failed to call getState"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 172
    .end local v6    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public setSensitiveFileInfo(IILjava/lang/String;)I
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "uid"    # I
    .param p3, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-direct {p0}, Landroid/os/dar/SdpManager;->getSdpService()Landroid/os/dar/ISdpManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 156
    :try_start_0
    invoke-direct {p0}, Landroid/os/dar/SdpManager;->getSdpService()Landroid/os/dar/ISdpManager;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Landroid/os/dar/ISdpManager;->setSensitiveFileInfo(IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 161
    :goto_0
    return v1

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "SDP.manager"

    const-string v2, "Failed to call getState"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method
