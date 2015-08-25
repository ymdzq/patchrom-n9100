.class public Lcom/android/server/LockSettingsService$KeyStoreMdpp;
.super Ljava/lang/Object;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyStoreMdpp"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;
    }
.end annotation


# static fields
.field public static final KEY_NOT_FOUND:I = 0x7

.field public static final LOCKED:I = 0x2

.field private static final NO_ERROR:I = 0x1

.field public static final UNINITIALIZED:I = 0x3


# instance fields
.field private final mBinder:Landroid/security/IKeystoreService;

.field private mCertificatePolicy:Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;

.field private mEnterpriseCertEnrollPolicy:Lcom/sec/enterprise/knox/certenroll/IEnterpriseCertEnrollPolicy;


# direct methods
.method private constructor <init>(Landroid/security/IKeystoreService;)V
    .locals 0
    .param p1, "binder"    # Landroid/security/IKeystoreService;

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p1, p0, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->mBinder:Landroid/security/IKeystoreService;

    .line 134
    return-void
.end method

.method private getCertificateEnrollmentService()Lcom/sec/enterprise/knox/certenroll/IEnterpriseCertEnrollPolicy;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->mEnterpriseCertEnrollPolicy:Lcom/sec/enterprise/knox/certenroll/IEnterpriseCertEnrollPolicy;

    if-nez v0, :cond_0

    .line 146
    const-string v0, "knox_scep_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/enterprise/knox/certenroll/IEnterpriseCertEnrollPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/certenroll/IEnterpriseCertEnrollPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->mEnterpriseCertEnrollPolicy:Lcom/sec/enterprise/knox/certenroll/IEnterpriseCertEnrollPolicy;

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->mEnterpriseCertEnrollPolicy:Lcom/sec/enterprise/knox/certenroll/IEnterpriseCertEnrollPolicy;

    return-object v0
.end method

.method private getCertificateService()Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->mCertificatePolicy:Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;

    if-nez v0, :cond_0

    .line 139
    const-string v0, "certificate_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->mCertificatePolicy:Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->mCertificatePolicy:Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;

    return-object v0
.end method

.method public static getInstance()Lcom/android/server/LockSettingsService$KeyStoreMdpp;
    .locals 2

    .prologue
    .line 155
    const-string v1, "android.security.keystore"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/security/IKeystoreService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/IKeystoreService;

    move-result-object v0

    .line 158
    .local v0, "keystore":Landroid/security/IKeystoreService;
    new-instance v1, Lcom/android/server/LockSettingsService$KeyStoreMdpp;

    invoke-direct {v1, v0}, Lcom/android/server/LockSettingsService$KeyStoreMdpp;-><init>(Landroid/security/IKeystoreService;)V

    return-object v1
.end method

.method private refreshRollbackUserKeystore(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 290
    invoke-direct {p0}, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->getCertificateService()Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 292
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->mCertificatePolicy:Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;

    invoke-interface {v1, p1}, Lcom/sec/enterprise/knox/certificate/ICertificatePolicy;->notifyUserKeystoreUnlocked(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isInMdppMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 299
    invoke-direct {p0}, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->getCertificateEnrollmentService()Lcom/sec/enterprise/knox/certenroll/IEnterpriseCertEnrollPolicy;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 301
    :try_start_1
    iget-object v1, p0, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->mEnterpriseCertEnrollPolicy:Lcom/sec/enterprise/knox/certenroll/IEnterpriseCertEnrollPolicy;

    invoke-interface {v1, p1}, Lcom/sec/enterprise/knox/certenroll/IEnterpriseCertEnrollPolicy;->notifyUserKeystoreUnlocked(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 308
    :cond_1
    :goto_1
    return-void

    .line 293
    :catch_0
    move-exception v0

    .line 294
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockSettingsService"

    const-string v2, "Failed talking with Certificate Policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 302
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 303
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v1, "LockSettingsService"

    const-string v2, "KeyUnlock Event Failed talking with Enterprise Certificate Enrollment Policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public checkPassword(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v3, 0x1

    .line 174
    const/4 v2, 0x0

    .line 176
    .local v2, "result":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v4, p1, p2}, Landroid/security/IKeystoreService;->check_password(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-ne v4, v3, :cond_0

    move v2, v3

    .line 182
    :goto_0
    return v2

    .line 176
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 177
    :catch_0
    move-exception v1

    .line 178
    .local v1, "re":Landroid/os/RemoteException;
    const-string v3, "MDPP"

    const-string v4, "Wrong KeyStore detected!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 179
    .end local v1    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 180
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v3, "MDPP"

    const-string v4, "KeyStore service is absent!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isEmpty(I)Z
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 277
    const/4 v2, 0x0

    .line 279
    .local v2, "result":Z
    :try_start_0
    iget-object v3, p0, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v3, p1}, Landroid/security/IKeystoreService;->zero(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    .line 285
    :goto_0
    return v2

    .line 279
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 280
    :catch_0
    move-exception v1

    .line 281
    .local v1, "re":Landroid/os/RemoteException;
    const-string v3, "MDPP"

    const-string v4, "Wrong KeyStore detected!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 282
    .end local v1    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 283
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v3, "MDPP"

    const-string v4, "KeyStore service is absent!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isUnlocked(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 249
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->state(I)Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;

    move-result-object v0

    sget-object v1, Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;->UNLOCKED:Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lock(I)Z
    .locals 5
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x1

    .line 203
    const/4 v2, 0x0

    .line 205
    .local v2, "result":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v4, p1}, Landroid/security/IKeystoreService;->lock(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-ne v4, v3, :cond_0

    move v2, v3

    .line 211
    :goto_0
    return v2

    .line 205
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 206
    :catch_0
    move-exception v1

    .line 207
    .local v1, "re":Landroid/os/RemoteException;
    const-string v3, "MDPP"

    const-string v4, "Wrong KeyStore detected!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 208
    .end local v1    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 209
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v3, "MDPP"

    const-string v4, "KeyStore service is absent!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public password(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v3, 0x1

    .line 186
    const/4 v2, 0x0

    .line 188
    .local v2, "result":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v4, p1, p2}, Landroid/security/IKeystoreService;->password(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_1

    move v2, v3

    .line 190
    :goto_0
    if-eqz v2, :cond_0

    .line 191
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->refreshRollbackUserKeystore(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 199
    :cond_0
    :goto_1
    return v2

    .line 188
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 194
    :catch_0
    move-exception v1

    .line 195
    .local v1, "re":Landroid/os/RemoteException;
    const-string v3, "MDPP"

    const-string v4, "Wrong KeyStore detected!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 196
    .end local v1    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 197
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v3, "MDPP"

    const-string v4, "KeyStore service is absent!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public reset(I)Z
    .locals 5
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x1

    .line 253
    const/4 v2, 0x0

    .line 255
    .local v2, "result":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v4, p1}, Landroid/security/IKeystoreService;->reset(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-ne v4, v3, :cond_0

    move v2, v3

    .line 261
    :goto_0
    return v2

    .line 255
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 256
    :catch_0
    move-exception v1

    .line 257
    .local v1, "re":Landroid/os/RemoteException;
    const-string v3, "MDPP"

    const-string v4, "Wrong KeyStore detected!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 258
    .end local v1    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 259
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v3, "MDPP"

    const-string v4, "KeyStore service is absent!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public resetHard(I)Z
    .locals 5
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x1

    .line 265
    const/4 v2, 0x0

    .line 267
    .local v2, "result":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v4, p1}, Landroid/security/IKeystoreService;->reset_hard(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-ne v4, v3, :cond_0

    move v2, v3

    .line 273
    :goto_0
    return v2

    .line 267
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 268
    :catch_0
    move-exception v1

    .line 269
    .local v1, "re":Landroid/os/RemoteException;
    const-string v3, "MDPP"

    const-string v4, "Wrong KeyStore detected!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 270
    .end local v1    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 271
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v3, "MDPP"

    const-string v4, "KeyStore service is absent!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setMaxRetryCount(I)Z
    .locals 5
    .param p1, "count"    # I

    .prologue
    const/4 v3, 0x1

    .line 162
    const/4 v2, 0x0

    .line 164
    .local v2, "result":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v4, p1}, Landroid/security/IKeystoreService;->set_max_retry_count(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-ne v4, v3, :cond_0

    move v2, v3

    .line 170
    :goto_0
    return v2

    .line 164
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 165
    :catch_0
    move-exception v1

    .line 166
    .local v1, "re":Landroid/os/RemoteException;
    const-string v3, "MDPP"

    const-string v4, "Wrong KeyStore detected!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 167
    .end local v1    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 168
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v3, "MDPP"

    const-string v4, "KeyStore service is absent!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public state(I)Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 234
    :try_start_0
    iget-object v2, p0, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v2, p1}, Landroid/security/IKeystoreService;->test(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 240
    .local v1, "ret":I
    packed-switch v1, :pswitch_data_0

    .line 244
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 235
    .end local v1    # "ret":I
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "MDPP"

    const-string v3, "Cannot connect to keystore"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 237
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 241
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "ret":I
    :pswitch_0
    sget-object v2, Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;->UNLOCKED:Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;

    .line 243
    :goto_0
    return-object v2

    .line 242
    :pswitch_1
    sget-object v2, Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;->LOCKED:Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;

    goto :goto_0

    .line 243
    :pswitch_2
    sget-object v2, Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;->UNINITIALIZED:Lcom/android/server/LockSettingsService$KeyStoreMdpp$State;

    goto :goto_0

    .line 240
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public unlock(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v3, 0x1

    .line 215
    const/4 v2, 0x0

    .line 217
    .local v2, "result":Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->mBinder:Landroid/security/IKeystoreService;

    invoke-interface {v4, p1, p2}, Landroid/security/IKeystoreService;->unlock(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_1

    move v2, v3

    .line 219
    :goto_0
    if-eqz v2, :cond_0

    .line 220
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService$KeyStoreMdpp;->refreshRollbackUserKeystore(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 228
    :cond_0
    :goto_1
    return v2

    .line 217
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 223
    :catch_0
    move-exception v1

    .line 224
    .local v1, "re":Landroid/os/RemoteException;
    const-string v3, "MDPP"

    const-string v4, "Wrong KeyStore detected!"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 225
    .end local v1    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 226
    .local v0, "npe":Ljava/lang/NullPointerException;
    const-string v3, "MDPP"

    const-string v4, "KeyStore service is absent!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
