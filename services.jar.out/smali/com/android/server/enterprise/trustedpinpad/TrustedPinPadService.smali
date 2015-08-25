.class public Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;
.super Lcom/sec/enterprise/knox/trustedpinpad/ITrustedPinPad$Stub;
.source "TrustedPinPadService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final DBG:Z

.field private static final KNOX_TRUSTED_PINPAD_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_TRUSTED_PINPAD"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final TIMA_SERVICE:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mIsTimaVersion30:Z

.field private final mTimaService:Landroid/service/tima/ITimaService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 68
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    .line 71
    const-string v0, "TrustedPinPadService Service"

    sput-object v0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Lcom/sec/enterprise/knox/trustedpinpad/ITrustedPinPad$Stub;-><init>()V

    .line 73
    iput-object v1, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mContext:Landroid/content/Context;

    .line 74
    iput-object v1, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 76
    const-string/jumbo v1, "tima"

    iput-object v1, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TIMA_SERVICE:Ljava/lang/String;

    .line 79
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mIsTimaVersion30:Z

    .line 84
    sget-boolean v1, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    if-eqz v1, :cond_0

    .line 85
    sget-object v1, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string v2, "TrustedPinPadService Constructor"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    iput-object p1, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mContext:Landroid/content/Context;

    .line 87
    const-string/jumbo v1, "tima"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mTimaService:Landroid/service/tima/ITimaService;

    .line 91
    iget-object v1, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mTimaService:Landroid/service/tima/ITimaService;

    if-eqz v1, :cond_2

    .line 93
    :try_start_0
    sget-boolean v1, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    if-eqz v1, :cond_1

    .line 94
    sget-object v1, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string v2, "Called TIMA service getTimaVersion"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mTimaService:Landroid/service/tima/ITimaService;

    invoke-interface {v1}, Landroid/service/tima/ITimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3.0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 96
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mIsTimaVersion30:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :cond_2
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private enforcePermission(Landroid/app/enterprise/ContextInfo;)V
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 114
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    const-string v1, "com.sec.enterprise.knox.permission.KNOX_CCM"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    goto :goto_0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method


# virtual methods
.method public getCertificates(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/CertificateInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 131
    sget-boolean v9, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    if-eqz v9, :cond_0

    .line 132
    sget-object v9, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string v10, "in getCertificates"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_0
    iget-boolean v9, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mIsTimaVersion30:Z

    if-nez v9, :cond_2

    .line 135
    sget-boolean v8, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    if-eqz v8, :cond_1

    .line 136
    sget-object v8, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string v9, "getCertificates - TIMA version does not support Trusted Pin Pad"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_1
    new-instance v8, Ljava/lang/UnsupportedOperationException;

    const-string v9, "TIMA version does not support Trusted Pin Pad"

    invoke-direct {v8, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 142
    :cond_2
    if-nez p1, :cond_4

    .line 143
    sget-boolean v8, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    if-eqz v8, :cond_3

    .line 144
    sget-object v8, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string v9, "getCertificates - Invalid Arguments"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_3
    new-instance v8, Ljava/security/InvalidParameterException;

    const-string v9, "Invalid Arguments"

    invoke-direct {v8, v9}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 148
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v1, "certificates":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    iget-object v9, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mTimaService:Landroid/service/tima/ITimaService;

    if-eqz v9, :cond_7

    .line 152
    :try_start_0
    sget-boolean v9, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    if-eqz v9, :cond_5

    .line 153
    sget-object v9, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string v10, "Called TIMA service get certs"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_5
    iget-object v9, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mTimaService:Landroid/service/tima/ITimaService;

    invoke-interface {v9}, Landroid/service/tima/ITimaService;->tuiGetCerts()[B

    move-result-object v2

    .line 155
    .local v2, "certs":[B
    if-nez v2, :cond_8

    .line 156
    sget-boolean v9, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    if-eqz v9, :cond_6

    .line 157
    sget-object v9, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string v10, "TIMA service get certs returnd null certs"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move-object v1, v8

    .line 204
    .end local v1    # "certificates":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    .end local v2    # "certs":[B
    :cond_7
    :goto_0
    return-object v1

    .line 161
    .restart local v1    # "certificates":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/CertificateInfo;>;"
    .restart local v2    # "certs":[B
    :cond_8
    const/4 v9, 0x0

    aget-byte v9, v2, v9

    const/4 v10, 0x1

    aget-byte v10, v2, v10

    mul-int/lit16 v10, v10, 0x100

    add-int v4, v9, v10

    .line 162
    .local v4, "drk_len":I
    const/4 v9, 0x2

    aget-byte v9, v2, v9

    const/4 v10, 0x3

    aget-byte v10, v2, v10

    mul-int/lit16 v10, v10, 0x100

    add-int v7, v9, v10

    .line 163
    .local v7, "tui_len":I
    const-string v9, "X509"

    invoke-static {v9}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 167
    .local v0, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v9, Ljava/io/ByteArrayInputStream;

    add-int/lit8 v10, v4, 0x4

    invoke-direct {v9, v2, v10, v7}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-virtual {v0, v9}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v6

    .line 170
    .local v6, "tuiCert":Ljava/security/cert/Certificate;
    if-eqz v6, :cond_9

    .line 171
    new-instance v9, Landroid/app/enterprise/CertificateInfo;

    invoke-direct {v9, v6}, Landroid/app/enterprise/CertificateInfo;-><init>(Ljava/security/cert/Certificate;)V

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_9
    new-instance v9, Ljava/io/ByteArrayInputStream;

    const/4 v10, 0x4

    invoke-direct {v9, v2, v10, v4}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-virtual {v0, v9}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3

    .line 178
    .local v3, "drkCert":Ljava/security/cert/Certificate;
    if-eqz v3, :cond_7

    .line 179
    new-instance v9, Landroid/app/enterprise/CertificateInfo;

    invoke-direct {v9, v3}, Landroid/app/enterprise/CertificateInfo;-><init>(Ljava/security/cert/Certificate;)V

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 182
    .end local v0    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local v2    # "certs":[B
    .end local v3    # "drkCert":Ljava/security/cert/Certificate;
    .end local v4    # "drk_len":I
    .end local v6    # "tuiCert":Ljava/security/cert/Certificate;
    .end local v7    # "tui_len":I
    :catch_0
    move-exception v5

    .line 183
    .local v5, "e":Landroid/os/RemoteException;
    sget-boolean v9, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    if-eqz v9, :cond_a

    .line 184
    sget-object v9, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getCertificates - RemoteException: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_a
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    move-object v1, v8

    .line 188
    goto :goto_0

    .line 189
    .end local v5    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v5

    .line 190
    .local v5, "e":Ljava/security/cert/CertificateException;
    sget-boolean v9, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    if-eqz v9, :cond_b

    .line 191
    sget-object v9, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getCertificates - CertificateException: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_b
    invoke-virtual {v5}, Ljava/security/cert/CertificateException;->printStackTrace()V

    move-object v1, v8

    .line 195
    goto/16 :goto_0

    .line 196
    .end local v5    # "e":Ljava/security/cert/CertificateException;
    :catch_2
    move-exception v5

    .line 197
    .local v5, "e":Ljava/lang/Exception;
    sget-boolean v9, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    if-eqz v9, :cond_c

    .line 198
    sget-object v9, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getCertificates - Exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_c
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v8

    .line 200
    goto/16 :goto_0
.end method

.method public getSecretDimensions(Landroid/app/enterprise/ContextInfo;)[I
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v2, 0x0

    .line 213
    sget-boolean v3, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    if-eqz v3, :cond_0

    .line 214
    sget-object v3, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string v4, "in getSecretDimensions"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mIsTimaVersion30:Z

    if-nez v3, :cond_2

    .line 217
    sget-boolean v2, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    if-eqz v2, :cond_1

    .line 218
    sget-object v2, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string v3, "getSecretDimensions - TIMA version does not support Trusted Pin Pad"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_1
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "TIMA version does not support Trusted Pin Pad"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 224
    :cond_2
    if-nez p1, :cond_5

    .line 225
    sget-boolean v3, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    if-eqz v3, :cond_3

    .line 226
    sget-object v3, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string v4, "getSecretDimensions - Invalid Arguments"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v0, v2

    .line 252
    :cond_4
    :goto_0
    return-object v0

    .line 230
    :cond_5
    const/4 v0, 0x0

    .line 232
    .local v0, "dimensions":[I
    iget-object v3, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mTimaService:Landroid/service/tima/ITimaService;

    if-eqz v3, :cond_4

    .line 234
    :try_start_0
    sget-boolean v3, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    if-eqz v3, :cond_6

    .line 235
    sget-object v3, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string v4, "Called TIMA service getSecretDimensions"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_6
    iget-object v3, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mTimaService:Landroid/service/tima/ITimaService;

    invoke-interface {v3}, Landroid/service/tima/ITimaService;->tuiGetSecretDimension()[I

    move-result-object v0

    .line 237
    if-eqz v0, :cond_7

    const/4 v3, 0x2

    array-length v4, v0

    if-eq v3, v4, :cond_4

    .line 238
    :cond_7
    sget-boolean v3, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    if-eqz v3, :cond_8

    .line 239
    sget-object v3, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string v4, "getSecretDimensions failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    move-object v0, v2

    .line 240
    goto :goto_0

    .line 242
    :catch_0
    move-exception v1

    .line 243
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v3, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    if-eqz v3, :cond_9

    .line 244
    sget-object v3, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSecretDimensions - Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_9
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v2

    .line 248
    goto :goto_0
.end method

.method public launchTrustedPinPad(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;[BZI)[B
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "appName"    # Ljava/lang/String;
    .param p3, "secretId"    # Ljava/lang/String;
    .param p4, "nonce"    # [B
    .param p5, "verify"    # Z
    .param p6, "minPinLength"    # I

    .prologue
    .line 310
    sget-boolean v0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    if-eqz v0, :cond_0

    .line 311
    sget-object v0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string v1, "in launchTrustedPinPad"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->enforcePermission(Landroid/app/enterprise/ContextInfo;)V

    .line 315
    iget-boolean v0, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mIsTimaVersion30:Z

    if-nez v0, :cond_2

    .line 316
    sget-boolean v0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    if-eqz v0, :cond_1

    .line 317
    sget-object v0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string v1, "launchTrustedPinPad - TIMA version does not include Trusted Pin Pad"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "TIMA version does not support Trusted Pin Pad"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 323
    :cond_2
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    if-nez p4, :cond_5

    .line 324
    :cond_3
    sget-boolean v0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    if-eqz v0, :cond_4

    .line 325
    sget-object v0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string v1, "launchTrustedPinPad - Invalid Arguments"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_4
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Invalid Arguments"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    :cond_5
    iget-object v0, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mTimaService:Landroid/service/tima/ITimaService;

    if-eqz v0, :cond_7

    .line 331
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mTimaService:Landroid/service/tima/ITimaService;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-interface/range {v0 .. v5}, Landroid/service/tima/ITimaService;->launchTuiWithSecretId(Ljava/lang/String;Ljava/lang/String;[BZI)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 342
    :goto_0
    return-object v0

    .line 333
    :catch_0
    move-exception v6

    .line 334
    .local v6, "e":Landroid/os/RemoteException;
    sget-boolean v0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    if-eqz v0, :cond_6

    .line 335
    sget-object v0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launchTrustedPinPad - RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_6
    invoke-virtual {v6}, Landroid/os/RemoteException;->printStackTrace()V

    .line 342
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadTrustedPinPad(Landroid/app/enterprise/ContextInfo;)I
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v2, 0x1

    .line 389
    sget-boolean v3, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    if-eqz v3, :cond_0

    .line 390
    sget-object v3, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string v4, "in loadTrustedPinPad"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->enforcePermission(Landroid/app/enterprise/ContextInfo;)V

    .line 394
    iget-boolean v3, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mIsTimaVersion30:Z

    if-nez v3, :cond_2

    .line 395
    sget-boolean v2, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    if-eqz v2, :cond_1

    .line 396
    sget-object v2, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string v3, "loadTrustedPinPad - TIMA version does not include Trusted Pin Pad"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_1
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "TIMA version does not support Trusted Pin Pad"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 402
    :cond_2
    if-nez p1, :cond_4

    .line 403
    sget-boolean v3, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    if-eqz v3, :cond_3

    .line 404
    sget-object v3, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string v4, "loadTrustedPinPad - Invalid Arguments"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_3
    :goto_0
    return v2

    .line 408
    :cond_4
    iget-object v3, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mTimaService:Landroid/service/tima/ITimaService;

    if-eqz v3, :cond_6

    .line 410
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mTimaService:Landroid/service/tima/ITimaService;

    invoke-interface {v3}, Landroid/service/tima/ITimaService;->loadTui()I

    move-result v1

    .line 411
    .local v1, "ret":I
    if-eqz v1, :cond_6

    .line 412
    sget-object v3, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadTrustedPinPad - loadTui returned: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 415
    .end local v1    # "ret":I
    :catch_0
    move-exception v0

    .line 416
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v3, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    if-eqz v3, :cond_5

    .line 417
    sget-object v3, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadTrustedPinPad - RemoteException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 425
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_6
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 484
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 495
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 490
    return-void
.end method

.method public setPin(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;[B)[B
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "tzAppName"    # Ljava/lang/String;
    .param p3, "pinBuffer"    # [B

    .prologue
    .line 351
    sget-boolean v1, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    if-eqz v1, :cond_0

    .line 352
    sget-object v1, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string v2, "in setPin"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->enforcePermission(Landroid/app/enterprise/ContextInfo;)V

    .line 356
    iget-boolean v1, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mIsTimaVersion30:Z

    if-nez v1, :cond_2

    .line 357
    sget-boolean v1, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    if-eqz v1, :cond_1

    .line 358
    sget-object v1, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setPin - TIMA version does not include Trusted Pin Pad"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "TIMA version does not support Trusted Pin Pad"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 364
    :cond_2
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    if-nez p3, :cond_5

    .line 365
    :cond_3
    sget-boolean v1, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    if-eqz v1, :cond_4

    .line 366
    sget-object v1, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setPin - Invalid Arguments"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_4
    new-instance v1, Ljava/security/InvalidParameterException;

    const-string v2, "Invalid Arguments"

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 370
    :cond_5
    iget-object v1, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mTimaService:Landroid/service/tima/ITimaService;

    if-eqz v1, :cond_7

    .line 372
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mTimaService:Landroid/service/tima/ITimaService;

    invoke-interface {v1, p2, p3}, Landroid/service/tima/ITimaService;->tuiDecryptPinHash(Ljava/lang/String;[B)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 380
    :goto_0
    return-object v1

    .line 373
    :catch_0
    move-exception v0

    .line 374
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v1, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    if-eqz v1, :cond_6

    .line 375
    sget-object v1, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPin - RemoteException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_6
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 380
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_7
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSecretImage(Landroid/app/enterprise/ContextInfo;[BIILjava/lang/String;)I
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "secretImageBuffer"    # [B
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "secretId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 262
    sget-boolean v3, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    if-eqz v3, :cond_0

    .line 263
    sget-object v3, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string v4, "in setSecretImage"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->enforcePermission(Landroid/app/enterprise/ContextInfo;)V

    .line 267
    iget-boolean v3, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mIsTimaVersion30:Z

    if-nez v3, :cond_2

    .line 268
    sget-boolean v2, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    if-eqz v2, :cond_1

    .line 269
    sget-object v2, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setSecretImage - TIMA version does not support Trusted Pin Pad"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_1
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "TIMA version does not support Trusted Pin Pad"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 275
    :cond_2
    if-eqz p1, :cond_3

    if-nez p2, :cond_5

    .line 276
    :cond_3
    sget-boolean v2, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    if-eqz v2, :cond_4

    .line 277
    sget-object v2, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setSecretImage - Invalid Arguments"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_4
    new-instance v2, Ljava/security/InvalidParameterException;

    const-string v3, "Invalid Arguments"

    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 281
    :cond_5
    iget-object v3, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mTimaService:Landroid/service/tima/ITimaService;

    if-eqz v3, :cond_7

    .line 283
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mTimaService:Landroid/service/tima/ITimaService;

    invoke-interface {v3, p2, p3, p4, p5}, Landroid/service/tima/ITimaService;->tuiInitSecret([BIILjava/lang/String;)I

    move-result v1

    .line 285
    .local v1, "ret":I
    if-eqz v1, :cond_7

    .line 286
    sget-object v3, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setSecretImage - tuiInitSecret returned: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    .end local v1    # "ret":I
    :goto_0
    return v2

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v3, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    if-eqz v3, :cond_6

    .line 292
    sget-object v3, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setSecretImage - RemoteException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_6
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 300
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_7
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 478
    return-void
.end method

.method public unloadTrustedPinPad(Landroid/app/enterprise/ContextInfo;)I
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v2, 0x1

    .line 434
    sget-boolean v3, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    if-eqz v3, :cond_0

    .line 435
    sget-object v3, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string v4, "in unloadTrustedPinPad"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->enforcePermission(Landroid/app/enterprise/ContextInfo;)V

    .line 439
    iget-boolean v3, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mIsTimaVersion30:Z

    if-nez v3, :cond_2

    .line 440
    sget-boolean v2, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    if-eqz v2, :cond_1

    .line 441
    sget-object v2, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "unloadTrustedPinPad - TIMA version does not include Trusted Pin Pad"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_1
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "TIMA version does not support Trusted Pin Pad"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 447
    :cond_2
    if-nez p1, :cond_4

    .line 448
    sget-boolean v3, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    if-eqz v3, :cond_3

    .line 449
    sget-object v3, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "unloadTrustedPinPad - Invalid Arguments"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_3
    :goto_0
    return v2

    .line 453
    :cond_4
    iget-object v3, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mTimaService:Landroid/service/tima/ITimaService;

    if-eqz v3, :cond_6

    .line 455
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->mTimaService:Landroid/service/tima/ITimaService;

    invoke-interface {v3}, Landroid/service/tima/ITimaService;->unloadTui()I

    move-result v1

    .line 456
    .local v1, "ret":I
    if-eqz v1, :cond_6

    .line 457
    sget-object v3, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unloadTrustedPinPad - unloadTui returned: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 461
    .end local v1    # "ret":I
    :catch_0
    move-exception v0

    .line 462
    .local v0, "e":Landroid/os/RemoteException;
    sget-boolean v3, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->DBG:Z

    if-eqz v3, :cond_5

    .line 463
    sget-object v3, Lcom/android/server/enterprise/trustedpinpad/TrustedPinPadService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unloadTrustedPinPad - RemoteException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_5
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 471
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_6
    const/4 v2, 0x0

    goto :goto_0
.end method
