.class public Lcom/android/server/cepproxyks/ScepKeystoreProxyService;
.super Lcom/samsung/android/cepproxyks/ISCEPKeystoreService$Stub;
.source "ScepKeystoreProxyService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cepproxyks/ScepKeystoreProxyService$KeyChainConnection;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "SCEPKeystoreProxyService"


# instance fields
.field private UidoftheCert:I

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 61
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/server/cepproxyks/ScepKeystoreProxyService;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/samsung/android/cepproxyks/ISCEPKeystoreService$Stub;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/android/server/cepproxyks/ScepKeystoreProxyService;->mContext:Landroid/content/Context;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/cepproxyks/ScepKeystoreProxyService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cepproxyks/ScepKeystoreProxyService;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/server/cepproxyks/ScepKeystoreProxyService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static bind(Landroid/content/Context;I)Lcom/android/server/cepproxyks/ScepKeystoreProxyService$KeyChainConnection;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "scepuid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/lang/AssertionError;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 487
    if-nez p0, :cond_0

    .line 488
    new-instance v7, Ljava/lang/NullPointerException;

    const-string v8, "context == null"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 490
    :cond_0
    invoke-static {p0}, Lcom/android/server/cepproxyks/ScepKeystoreProxyService;->ensureNotOnMainThread(Landroid/content/Context;)V

    .line 491
    new-instance v5, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v5, v10}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 492
    .local v5, "q":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Landroid/security/IKeyChainService;>;"
    new-instance v4, Lcom/android/server/cepproxyks/ScepKeystoreProxyService$2;

    invoke-direct {v4, v5}, Lcom/android/server/cepproxyks/ScepKeystoreProxyService$2;-><init>(Ljava/util/concurrent/BlockingQueue;)V

    .line 516
    .local v4, "keyChainServiceConnection":Landroid/content/ServiceConnection;
    new-instance v2, Landroid/content/Intent;

    const-class v7, Landroid/security/IKeyChainService;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 521
    .local v2, "intent":Landroid/content/Intent;
    sget-boolean v7, Lcom/android/server/cepproxyks/ScepKeystoreProxyService;->DBG:Z

    if-eqz v7, :cond_1

    .line 522
    const-string v7, "SCEPKeystoreProxyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "KeyChainConnection: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :cond_1
    new-instance v6, Landroid/os/UserHandle;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    .line 525
    .local v6, "userHandle":Landroid/os/UserHandle;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 526
    .local v0, "backupUID":J
    invoke-virtual {p0, v2, v4, v10, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    .line 527
    .local v3, "isBound":Z
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 528
    if-nez v3, :cond_2

    .line 529
    new-instance v7, Ljava/lang/AssertionError;

    const-string v8, "Could not bind to KeyChainService"

    invoke-direct {v7, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    .line 531
    :cond_2
    new-instance v8, Lcom/android/server/cepproxyks/ScepKeystoreProxyService$KeyChainConnection;

    invoke-interface {v5}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/security/IKeyChainService;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v4, v7, v9}, Lcom/android/server/cepproxyks/ScepKeystoreProxyService$KeyChainConnection;-><init>(Landroid/content/Context;Landroid/content/ServiceConnection;Landroid/security/IKeyChainService;Lcom/android/server/cepproxyks/ScepKeystoreProxyService$1;)V

    return-object v8
.end method

.method private broadcastStorageChange()V
    .locals 2

    .prologue
    .line 345
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.security.STORAGE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 346
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/cepproxyks/ScepKeystoreProxyService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 347
    return-void
.end method

.method private checkCEPCaller()Z
    .locals 3

    .prologue
    .line 430
    invoke-direct {p0}, Lcom/android/server/cepproxyks/ScepKeystoreProxyService;->checkCaller()Ljava/lang/String;

    move-result-object v0

    .line 431
    .local v0, "actualForSCEP":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/cepproxyks/ScepKeystoreProxyService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 432
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_0

    const-string v2, "android"

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 433
    const/4 v2, 0x1

    .line 435
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private checkCaller()Ljava/lang/String;
    .locals 3

    .prologue
    .line 439
    iget-object v1, p0, Lcom/android/server/cepproxyks/ScepKeystoreProxyService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 440
    .local v0, "actualPackage":Ljava/lang/String;
    return-object v0
.end method

.method private static ensureNotOnMainThread(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 535
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 536
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 537
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "calling this from your main thread can lead to deadlock"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 539
    :cond_0
    return-void
.end method

.method private isHardwareBackedKey([B)Z
    .locals 8
    .param p1, "keyData"    # [B

    .prologue
    const/4 v5, 0x0

    .line 542
    :try_start_0
    new-instance v2, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v6}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 543
    .local v2, "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-static {v6}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v4

    .line 544
    .local v4, "pki":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    if-nez v4, :cond_1

    .line 553
    .end local v2    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v4    # "pki":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    :cond_0
    :goto_0
    return v5

    .line 545
    .restart local v2    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .restart local v4    # "pki":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    :cond_1
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getAlgorithmId()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    .line 546
    .local v0, "algId":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 547
    invoke-static {v0}, Lorg/apache/harmony/security/utils/AlgNameMapper;->map2AlgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 548
    .local v1, "algName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 549
    invoke-static {v1}, Landroid/security/KeyChain;->isBoundKeyAlgorithm(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    goto :goto_0

    .line 550
    .end local v0    # "algId":Ljava/lang/String;
    .end local v1    # "algName":Ljava/lang/String;
    .end local v2    # "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    .end local v4    # "pki":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    :catch_0
    move-exception v3

    .line 551
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 552
    const-string v6, "System Service"

    const-string v7, "Failed to parse key data"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private parseCertificate([B)Ljava/security/cert/X509Certificate;
    .locals 2
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 444
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 445
    .local v0, "cf":Ljava/security/cert/CertificateFactory;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    return-object v1
.end method


# virtual methods
.method public deletecertificateEntry(Ljava/lang/String;Z)I
    .locals 8
    .param p1, "aliasName"    # Ljava/lang/String;
    .param p2, "isWifi"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 251
    const/4 v0, 0x0

    .line 252
    .local v0, "UidoftheCert":I
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 253
    .local v3, "processId":I
    invoke-direct {p0}, Lcom/android/server/cepproxyks/ScepKeystoreProxyService;->checkCEPCaller()Z

    move-result v5

    if-nez v5, :cond_1

    .line 289
    :cond_0
    :goto_0
    return v4

    .line 258
    :cond_1
    :try_start_0
    sget-boolean v5, Lcom/android/server/cepproxyks/ScepKeystoreProxyService;->DBG:Z

    if-eqz v5, :cond_2

    .line 259
    const-string v5, "SCEPKeystoreProxyService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleteCertificateEntry: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_2
    if-nez p2, :cond_6

    .line 263
    const/4 v0, -0x1

    .line 264
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 271
    :goto_1
    sget-boolean v5, Lcom/android/server/cepproxyks/ScepKeystoreProxyService;->DBG:Z

    if-eqz v5, :cond_3

    const-string v5, "SCEPKeystoreProxyService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleteCertificateEntry: UidoftheCert "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_3
    sget-boolean v5, Lcom/android/server/cepproxyks/ScepKeystoreProxyService;->DBG:Z

    if-eqz v5, :cond_4

    const-string v5, "SCEPKeystoreProxyService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleteCertificateEntry: processId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_4
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    .line 275
    .local v2, "mAndroid":Landroid/security/KeyStore;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "USRCERT_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v0, v3}, Landroid/security/KeyStore;->deleteAsUser(Ljava/lang/String;II)Z

    .line 276
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CACERT_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v0, v3}, Landroid/security/KeyStore;->deleteAsUser(Ljava/lang/String;II)Z

    .line 277
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "USRPKEY_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v0, v3}, Landroid/security/KeyStore;->delKeyAsUser(Ljava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 278
    sget-boolean v4, Lcom/android/server/cepproxyks/ScepKeystoreProxyService;->DBG:Z

    if-eqz v4, :cond_5

    const-string v4, "SCEPKeystoreProxyService"

    const-string v5, "deleteCertificateEntry delKeyAsUser: return 0"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 267
    .end local v2    # "mAndroid":Landroid/security/KeyStore;
    :cond_6
    const/16 v0, 0x3f2

    .line 268
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    goto/16 :goto_1

    .line 281
    .restart local v2    # "mAndroid":Landroid/security/KeyStore;
    :cond_7
    sget-boolean v5, Lcom/android/server/cepproxyks/ScepKeystoreProxyService;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "SCEPKeystoreProxyService"

    const-string v6, "deleteCertificateEntry delKeyAsUser: return 1"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 285
    .end local v2    # "mAndroid":Landroid/security/KeyStore;
    :catch_0
    move-exception v1

    .line 287
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 288
    sget-boolean v4, Lcom/android/server/cepproxyks/ScepKeystoreProxyService;->DBG:Z

    if-eqz v4, :cond_8

    const-string v4, "SCEPKeystoreProxyService"

    const-string v5, "deleteCertificateEntry return exception"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_8
    const/4 v4, 0x4

    goto/16 :goto_0
.end method

.method public getCertificate(Ljava/lang/String;)Lcom/samsung/android/cepproxyks/CertificateAKS;
    .locals 12
    .param p1, "aliasName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 77
    invoke-direct {p0}, Lcom/android/server/cepproxyks/ScepKeystoreProxyService;->checkCEPCaller()Z

    move-result v8

    if-nez v8, :cond_1

    move-object v6, v9

    .line 116
    :cond_0
    :goto_0
    return-object v6

    .line 81
    :cond_1
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v4

    .line 82
    .local v4, "mAndroid":Landroid/security/KeyStore;
    invoke-virtual {v4, p1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;)Z

    .line 84
    new-instance v6, Lcom/samsung/android/cepproxyks/CertificateAKS;

    invoke-direct {v6}, Lcom/samsung/android/cepproxyks/CertificateAKS;-><init>()V

    .line 85
    .local v6, "mCertObj":Lcom/samsung/android/cepproxyks/CertificateAKS;
    sget-boolean v8, Lcom/android/server/cepproxyks/ScepKeystoreProxyService;->DBG:Z

    if-eqz v8, :cond_2

    .line 86
    const-string v8, "SCEPKeystoreProxyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getCertificate:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    const/16 v10, 0x3e8

    invoke-static {v8, v10}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    .line 92
    .local v0, "UidoftheCertSystem":I
    const/16 v1, 0x3f2

    .line 93
    .local v1, "UidoftheCertWifi":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "USRCERT_"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8, v0}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 94
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    const/16 v10, 0x3e8

    invoke-static {v8, v10}, Landroid/os/UserHandle;->getUid(II)I

    move-result v8

    iput v8, p0, Lcom/android/server/cepproxyks/ScepKeystoreProxyService;->UidoftheCert:I

    .line 99
    :cond_3
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "USRCERT_"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget v10, p0, Lcom/android/server/cepproxyks/ScepKeystoreProxyService;->UidoftheCert:I

    invoke-virtual {v4, v8, v10}, Landroid/security/KeyStore;->getByUid(Ljava/lang/String;I)[B

    move-result-object v7

    .line 100
    .local v7, "mWificert":[B
    if-nez v7, :cond_5

    move-object v6, v9

    goto/16 :goto_0

    .line 95
    .end local v7    # "mWificert":[B
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "USRCERT_"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 96
    const/16 v8, 0x3f2

    iput v8, p0, Lcom/android/server/cepproxyks/ScepKeystoreProxyService;->UidoftheCert:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 110
    .end local v0    # "UidoftheCertSystem":I
    .end local v1    # "UidoftheCertWifi":I
    :catch_0
    move-exception v3

    .line 112
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move-object v6, v9

    .line 116
    goto/16 :goto_0

    .line 101
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "UidoftheCertSystem":I
    .restart local v1    # "UidoftheCertWifi":I
    .restart local v7    # "mWificert":[B
    :cond_5
    :try_start_1
    invoke-static {v7}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;

    move-result-object v5

    .line 102
    .local v5, "mCertList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 103
    const/4 v8, 0x1

    new-array v2, v8, [Ljava/security/cert/Certificate;

    .line 104
    .local v2, "cert":[Ljava/security/cert/Certificate;
    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/cert/Certificate;

    aput-object v8, v2, v10

    .line 105
    iput-object v2, v6, Lcom/samsung/android/cepproxyks/CertificateAKS;->mCertificate:[Ljava/security/cert/Certificate;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public grantAccessForAKS(ILjava/lang/String;)V
    .locals 2
    .param p1, "uidscep"    # I
    .param p2, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 373
    invoke-direct {p0}, Lcom/android/server/cepproxyks/ScepKeystoreProxyService;->checkCEPCaller()Z

    move-result v0

    if-nez v0, :cond_1

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 380
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/cepproxyks/ScepKeystoreProxyService$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/cepproxyks/ScepKeystoreProxyService$1;-><init>(Lcom/android/server/cepproxyks/ScepKeystoreProxyService;ILjava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public installCACert(Lcom/samsung/android/cepproxyks/CertificateAKS;)I
    .locals 4
    .param p1, "caCert"    # Lcom/samsung/android/cepproxyks/CertificateAKS;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 352
    invoke-direct {p0}, Lcom/android/server/cepproxyks/ScepKeystoreProxyService;->checkCEPCaller()Z

    move-result v3

    if-nez v3, :cond_0

    .line 353
    const/4 v3, 0x1

    .line 366
    :goto_0
    return v3

    .line 355
    :cond_0
    if-nez p1, :cond_1

    .line 356
    const/4 v3, -0x2

    goto :goto_0

    .line 358
    :cond_1
    :try_start_0
    iget-object v2, p1, Lcom/samsung/android/cepproxyks/CertificateAKS;->mCertificate:[Ljava/security/cert/Certificate;

    .line 359
    .local v2, "mCertArray":[Ljava/security/cert/Certificate;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 360
    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/cepproxyks/ScepKeystoreProxyService;->installCaCertificate([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 361
    .end local v1    # "i":I
    .end local v2    # "mCertArray":[Ljava/security/cert/Certificate;
    :catch_0
    move-exception v0

    .line 363
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 364
    const/4 v3, -0x1

    goto :goto_0

    .line 366
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "i":I
    .restart local v2    # "mCertArray":[Ljava/security/cert/Certificate;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public installCACertForWifiCCM(Lcom/samsung/android/cepproxyks/CertificateAKS;Ljava/lang/String;)I
    .locals 9
    .param p1, "caCert"    # Lcom/samsung/android/cepproxyks/CertificateAKS;
    .param p2, "aliasName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 405
    invoke-direct {p0}, Lcom/android/server/cepproxyks/ScepKeystoreProxyService;->checkCEPCaller()Z

    move-result v6

    if-nez v6, :cond_0

    .line 406
    const/4 v5, 0x1

    .line 425
    :goto_0
    return v5

    .line 409
    :cond_0
    const/4 v0, 0x0

    .line 410
    .local v0, "UidoftheCert":I
    const/16 v0, 0x3f2

    .line 411
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v4

    .line 413
    .local v4, "keystoreService":Landroid/security/KeyStore;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 415
    .local v2, "id":J
    if-eqz p1, :cond_1

    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CACERT_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p1, Lcom/samsung/android/cepproxyks/CertificateAKS;->mCertificate:[Ljava/security/cert/Certificate;

    invoke-static {v7}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v7, v0, v8}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 417
    :cond_1
    const/4 v5, -0x2

    goto :goto_1

    .line 418
    :catch_0
    move-exception v1

    .line 419
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 420
    const/4 v5, -0x1

    goto :goto_1

    .line 422
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public installCaCertificate([B)V
    .locals 9
    .param p1, "caCertificate"    # [B

    .prologue
    .line 296
    new-instance v6, Lcom/android/org/conscrypt/TrustedCertificateStore;

    invoke-direct {v6}, Lcom/android/org/conscrypt/TrustedCertificateStore;-><init>()V

    .line 298
    .local v6, "mTrustedCertificateStore":Lcom/android/org/conscrypt/TrustedCertificateStore;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 299
    .local v4, "id":J
    iget-object v7, p0, Lcom/android/server/cepproxyks/ScepKeystoreProxyService;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->getInstance(Landroid/content/Context;)Lcom/sec/enterprise/knox/certificate/CertificatePolicy;

    move-result-object v2

    .line 300
    .local v2, "cp":Lcom/sec/enterprise/knox/certificate/CertificatePolicy;
    if-eqz v2, :cond_1

    const/4 v7, 0x1

    invoke-virtual {v2, p1, v7}, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->isCaCertificateTrusted([BZ)Z

    move-result v7

    if-nez v7, :cond_1

    .line 301
    sget-boolean v7, Lcom/android/server/cepproxyks/ScepKeystoreProxyService;->DBG:Z

    if-eqz v7, :cond_0

    .line 302
    const-string v7, "SCEPKeystoreProxyService"

    const-string v8, "CA Certificate is not trusted"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 309
    :try_start_0
    monitor-enter v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 310
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/cepproxyks/ScepKeystoreProxyService;->parseCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 311
    .local v1, "certificate":Ljava/security/cert/X509Certificate;
    if-nez v1, :cond_4

    .line 312
    sget-boolean v7, Lcom/android/server/cepproxyks/ScepKeystoreProxyService;->DBG:Z

    if-eqz v7, :cond_2

    .line 313
    const-string v7, "SCEPKeystoreProxyService"

    const-string v8, "CA Certificate parse error"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_2
    monitor-exit v6

    goto :goto_0

    .line 327
    .end local v1    # "certificate":Ljava/security/cert/X509Certificate;
    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v7
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_1

    .line 328
    :catch_0
    move-exception v3

    .line 330
    .local v3, "e":Ljava/io/IOException;
    sget-boolean v7, Lcom/android/server/cepproxyks/ScepKeystoreProxyService;->DBG:Z

    if-eqz v7, :cond_3

    .line 331
    const-string v7, "SCEPKeystoreProxyService"

    const-string v8, "IOException while installing CA Certificate"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :cond_3
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 341
    .end local v3    # "e":Ljava/io/IOException;
    :goto_1
    invoke-direct {p0}, Lcom/android/server/cepproxyks/ScepKeystoreProxyService;->broadcastStorageChange()V

    goto :goto_0

    .line 317
    .restart local v1    # "certificate":Ljava/security/cert/X509Certificate;
    :cond_4
    :try_start_3
    invoke-virtual {v6, v1}, Lcom/android/org/conscrypt/TrustedCertificateStore;->installCertificate(Ljava/security/cert/X509Certificate;)V

    .line 320
    invoke-direct {p0, p1}, Lcom/android/server/cepproxyks/ScepKeystoreProxyService;->parseCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 321
    .local v0, "c":Ljava/security/cert/X509Certificate;
    invoke-virtual {v6, v0}, Lcom/android/org/conscrypt/TrustedCertificateStore;->getCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 322
    sget-boolean v7, Lcom/android/server/cepproxyks/ScepKeystoreProxyService;->DBG:Z

    if-eqz v7, :cond_5

    .line 323
    const-string v7, "SCEPKeystoreProxyService"

    const-string v8, "CA Certificate successfully installed"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    :cond_5
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 334
    .end local v0    # "c":Ljava/security/cert/X509Certificate;
    .end local v1    # "certificate":Ljava/security/cert/X509Certificate;
    :catch_1
    move-exception v3

    .line 336
    .local v3, "e":Ljava/security/cert/CertificateException;
    sget-boolean v7, Lcom/android/server/cepproxyks/ScepKeystoreProxyService;->DBG:Z

    if-eqz v7, :cond_6

    .line 337
    const-string v7, "SCEPKeystoreProxyService"

    const-string v8, "CertificateException while installing CA Certificate"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_6
    invoke-virtual {v3}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto :goto_1
.end method

.method public installCertificateInAndroidKeyStore(Lcom/samsung/android/cepproxyks/CertByte;Ljava/lang/String;[CZI)I
    .locals 16
    .param p1, "certificate"    # Lcom/samsung/android/cepproxyks/CertByte;
    .param p2, "aliasName"    # Ljava/lang/String;
    .param p3, "password"    # [C
    .param p4, "installWithWIFI"    # Z
    .param p5, "scepUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 160
    invoke-direct/range {p0 .. p0}, Lcom/android/server/cepproxyks/ScepKeystoreProxyService;->checkCEPCaller()Z

    move-result v3

    if-nez v3, :cond_0

    .line 161
    const/4 v3, 0x1

    .line 241
    :goto_0
    return v3

    .line 163
    :cond_0
    if-nez p1, :cond_1

    .line 164
    const/4 v3, -0x2

    goto :goto_0

    .line 166
    :cond_1
    const-wide/16 v10, 0x0

    .line 170
    .local v10, "id":J
    :try_start_0
    const-string v3, "PKCS12"

    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v13

    .line 171
    .local v13, "mJavaKey":Ljava/security/KeyStore;
    move-object/from16 v0, p1

    iget v3, v0, Lcom/samsung/android/cepproxyks/CertByte;->certsize:I

    new-array v12, v3, [B

    .line 172
    .local v12, "mCertficate":[B
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/samsung/android/cepproxyks/CertByte;->certBytes:[B

    .line 173
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v12}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v0, p3

    invoke-virtual {v13, v3, v0}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 174
    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v15

    check-cast v15, Ljava/security/cert/X509Certificate;

    .line 175
    .local v15, "mcert":Ljava/security/cert/X509Certificate;
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v13, v0, v1}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v14

    .line 176
    .local v14, "mPriv":Ljava/security/Key;
    const/4 v3, 0x1

    new-array v8, v3, [Ljava/security/cert/Certificate;

    .line 177
    .local v8, "certchain":[Ljava/security/cert/Certificate;
    const/4 v3, 0x0

    aput-object v15, v8, v3

    .line 179
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 181
    sget-boolean v3, Lcom/android/server/cepproxyks/ScepKeystoreProxyService;->DBG:Z

    if-eqz v3, :cond_2

    .line 182
    const-string v3, "SCEPKeystoreProxyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "installCertificateInAndroidKeyStore: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_2
    if-eqz p4, :cond_5

    .line 187
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    .line 189
    .local v2, "keystoreService":Landroid/security/KeyStore;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USRCERT_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/security/cert/Certificate;

    const/4 v5, 0x0

    aput-object v15, v4, v5

    invoke-static {v4}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v4

    const/16 v5, 0x3f2

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    .line 191
    invoke-interface {v14}, Ljava/security/Key;->getEncoded()[B

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/cepproxyks/ScepKeystoreProxyService;->isHardwareBackedKey([B)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 192
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USRPKEY_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v14}, Ljava/security/Key;->getEncoded()[B

    move-result-object v4

    const/16 v5, 0x3f2

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z

    .line 198
    :goto_1
    move-object/from16 v0, p1

    iget v3, v0, Lcom/samsung/android/cepproxyks/CertByte;->caSize:I

    if-lez v3, :cond_3

    .line 199
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CACERT_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/samsung/android/cepproxyks/CertByte;->caCertBytes:[B

    const/16 v5, 0x3f2

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    :cond_3
    :goto_2
    const/4 v3, 0x0

    .line 243
    .end local v2    # "keystoreService":Landroid/security/KeyStore;
    .end local v8    # "certchain":[Ljava/security/cert/Certificate;
    .end local v12    # "mCertficate":[B
    .end local v13    # "mJavaKey":Ljava/security/KeyStore;
    .end local v14    # "mPriv":Ljava/security/Key;
    .end local v15    # "mcert":Ljava/security/cert/X509Certificate;
    :goto_3
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 195
    .restart local v2    # "keystoreService":Landroid/security/KeyStore;
    .restart local v8    # "certchain":[Ljava/security/cert/Certificate;
    .restart local v12    # "mCertficate":[B
    .restart local v13    # "mJavaKey":Ljava/security/KeyStore;
    .restart local v14    # "mPriv":Ljava/security/Key;
    .restart local v15    # "mcert":Ljava/security/cert/X509Certificate;
    :cond_4
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USRPKEY_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v14}, Ljava/security/Key;->getEncoded()[B

    move-result-object v4

    const/16 v5, 0x3f2

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 219
    .end local v2    # "keystoreService":Landroid/security/KeyStore;
    .end local v8    # "certchain":[Ljava/security/cert/Certificate;
    .end local v12    # "mCertficate":[B
    .end local v13    # "mJavaKey":Ljava/security/KeyStore;
    .end local v14    # "mPriv":Ljava/security/Key;
    .end local v15    # "mcert":Ljava/security/cert/X509Certificate;
    :catch_0
    move-exception v9

    .line 221
    .local v9, "e":Ljava/security/KeyStoreException;
    :try_start_2
    invoke-virtual {v9}, Ljava/security/KeyStoreException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 222
    const/4 v3, 0x2

    goto :goto_3

    .line 205
    .end local v9    # "e":Ljava/security/KeyStoreException;
    .restart local v8    # "certchain":[Ljava/security/cert/Certificate;
    .restart local v12    # "mCertficate":[B
    .restart local v13    # "mJavaKey":Ljava/security/KeyStore;
    .restart local v14    # "mPriv":Ljava/security/Key;
    .restart local v15    # "mcert":Ljava/security/cert/X509Certificate;
    :cond_5
    :try_start_3
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    .line 207
    .restart local v2    # "keystoreService":Landroid/security/KeyStore;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USRCERT_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/security/cert/Certificate;

    const/4 v5, 0x0

    aput-object v15, v4, v5

    invoke-static {v4}, Landroid/security/Credentials;->convertToPem([Ljava/security/cert/Certificate;)[B

    move-result-object v4

    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-virtual/range {v2 .. v7}, Landroid/security/KeyStore;->putAsUser(Ljava/lang/String;[BIII)Z

    .line 209
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USRPKEY_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v14}, Ljava/security/Key;->getEncoded()[B

    move-result-object v4

    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-virtual/range {v2 .. v7}, Landroid/security/KeyStore;->importKeyAsUser(Ljava/lang/String;[BIII)Z

    .line 211
    move-object/from16 v0, p1

    iget v3, v0, Lcom/samsung/android/cepproxyks/CertByte;->caSize:I

    if-lez v3, :cond_3

    .line 212
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CACERT_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/samsung/android/cepproxyks/CertByte;->caCertBytes:[B

    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-virtual/range {v2 .. v7}, Landroid/security/KeyStore;->putAsUser(Ljava/lang/String;[BIII)Z
    :try_end_3
    .catch Ljava/security/KeyStoreException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    .line 223
    .end local v2    # "keystoreService":Landroid/security/KeyStore;
    .end local v8    # "certchain":[Ljava/security/cert/Certificate;
    .end local v12    # "mCertficate":[B
    .end local v13    # "mJavaKey":Ljava/security/KeyStore;
    .end local v14    # "mPriv":Ljava/security/Key;
    .end local v15    # "mcert":Ljava/security/cert/X509Certificate;
    :catch_1
    move-exception v9

    .line 225
    .local v9, "e":Ljava/security/NoSuchAlgorithmException;
    :try_start_4
    invoke-virtual {v9}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 226
    const/4 v3, 0x3

    goto/16 :goto_3

    .line 227
    .end local v9    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_2
    move-exception v9

    .line 229
    .local v9, "e":Ljava/security/cert/CertificateException;
    invoke-virtual {v9}, Ljava/security/cert/CertificateException;->printStackTrace()V

    .line 230
    const/4 v3, 0x4

    goto/16 :goto_3

    .line 231
    .end local v9    # "e":Ljava/security/cert/CertificateException;
    :catch_3
    move-exception v9

    .line 233
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    .line 234
    const/4 v3, 0x5

    goto/16 :goto_3

    .line 235
    .end local v9    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v9

    .line 237
    .local v9, "e":Ljava/security/UnrecoverableKeyException;
    invoke-virtual {v9}, Ljava/security/UnrecoverableKeyException;->printStackTrace()V

    .line 238
    const/4 v3, 0x6

    goto/16 :goto_3

    .line 239
    .end local v9    # "e":Ljava/security/UnrecoverableKeyException;
    :catch_5
    move-exception v9

    .line 240
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 241
    const/4 v3, 0x7

    goto/16 :goto_3

    .line 243
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public isAliasExists(Ljava/lang/String;Z)I
    .locals 9
    .param p1, "aliasName"    # Ljava/lang/String;
    .param p2, "isWifi"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 124
    invoke-direct {p0}, Lcom/android/server/cepproxyks/ScepKeystoreProxyService;->checkCEPCaller()Z

    move-result v6

    if-nez v6, :cond_1

    .line 153
    :cond_0
    :goto_0
    return v4

    .line 128
    :cond_1
    sget-boolean v6, Lcom/android/server/cepproxyks/ScepKeystoreProxyService;->DBG:Z

    if-eqz v6, :cond_2

    .line 129
    const-string v6, "SCEPKeystoreProxyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isAliasExists: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    const/16 v7, 0x3e8

    invoke-static {v6, v7}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    .line 133
    .local v0, "UidoftheCertSystem":I
    const/16 v1, 0x3f2

    .line 134
    .local v1, "UidoftheCertWifi":I
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v3

    .line 136
    .local v3, "mAndroid":Landroid/security/KeyStore;
    if-eqz p2, :cond_3

    .line 138
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "USRCERT_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v1}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    move v4, v5

    .line 139
    goto :goto_0

    .line 142
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "USRCERT_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v0}, Landroid/security/KeyStore;->contains(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    move v4, v5

    .line 144
    goto :goto_0

    .line 148
    .end local v0    # "UidoftheCertSystem":I
    .end local v1    # "UidoftheCertWifi":I
    .end local v3    # "mAndroid":Landroid/security/KeyStore;
    :catch_0
    move-exception v2

    .line 150
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method setPrivateKey([B)Ljava/security/PrivateKey;
    .locals 4
    .param p1, "bytes"    # [B

    .prologue
    .line 470
    :try_start_0
    const-string v3, "RSA"

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 471
    .local v1, "keyFactory":Ljava/security/KeyFactory;
    new-instance v3, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v3, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v3}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 472
    .local v2, "mUserKey":Ljava/security/PrivateKey;
    return-object v2

    .line 473
    .end local v1    # "keyFactory":Ljava/security/KeyFactory;
    .end local v2    # "mUserKey":Ljava/security/PrivateKey;
    :catch_0
    move-exception v0

    .line 474
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 475
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 476
    .local v0, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method
