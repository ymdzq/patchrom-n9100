.class final Lcom/absolute/android/sslutil/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# instance fields
.field final synthetic a:Lcom/absolute/android/sslutil/SslUtil;


# direct methods
.method private constructor <init>(Lcom/absolute/android/sslutil/SslUtil;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/absolute/android/sslutil/b;->a:Lcom/absolute/android/sslutil/SslUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/absolute/android/sslutil/SslUtil;B)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/absolute/android/sslutil/b;-><init>(Lcom/absolute/android/sslutil/SslUtil;)V

    return-void
.end method

.method private static a([Ljava/security/cert/X509Certificate;)[Ljava/security/cert/X509Certificate;
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 195
    const/4 v0, 0x0

    .line 198
    if-eqz p0, :cond_a

    .line 199
    :try_start_0
    array-length v3, p0

    new-array v0, v3, [Ljava/security/cert/X509Certificate;

    move v3, v2

    .line 200
    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_0

    .line 201
    aget-object v4, p0, v3

    aput-object v4, v0, v3

    .line 200
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 204
    :cond_0
    array-length v3, p0

    if-le v3, v1, :cond_6

    move v4, v2

    .line 206
    :goto_1
    array-length v3, p0

    if-ge v4, v3, :cond_9

    move v3, v2

    .line 207
    :goto_2
    array-length v5, p0

    if-ge v3, v5, :cond_2

    .line 209
    if-eq v4, v3, :cond_1

    .line 210
    aget-object v5, p0, v4

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v5

    aget-object v6, p0, v3

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 213
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 216
    :cond_2
    array-length v5, p0

    if-ne v3, v5, :cond_4

    .line 217
    const/4 v3, 0x0

    aget-object v4, p0, v4

    aput-object v4, v0, v3

    .line 222
    :goto_3
    if-eqz v1, :cond_7

    move v3, v2

    .line 223
    :goto_4
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_8

    move v1, v2

    .line 224
    :goto_5
    array-length v4, p0

    if-ge v1, v4, :cond_3

    .line 225
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v4

    aget-object v5, p0, v1

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 226
    add-int/lit8 v4, v3, 0x1

    aget-object v1, p0, v1

    aput-object v1, v0, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :cond_3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_4

    .line 206
    :cond_4
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_1

    .line 224
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_6
    move-object p0, v0

    :cond_7
    :goto_6
    move-object v0, p0

    .line 240
    :cond_8
    :goto_7
    return-object v0

    .line 236
    :catch_0
    move-exception v1

    .line 237
    invoke-static {}, Lcom/absolute/android/logutil/LogUtil;->get()Lcom/absolute/android/logutil/LogUtil;

    move-result-object v2

    const/4 v3, 0x6

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Exception on reorderCerts: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/absolute/android/utils/ExceptionUtil;->getExceptionMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/absolute/android/logutil/LogUtil;->logMessage(ILjava/lang/String;)V

    goto :goto_7

    :cond_9
    move v1, v2

    goto :goto_3

    :cond_a
    move-object p0, v0

    goto :goto_6
.end method


# virtual methods
.method public final checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 112
    invoke-static {}, Lcom/absolute/android/sslutil/SslUtil;->a()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public final checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 116
    array-length v0, p1

    new-array v3, v0, [Ljava/security/cert/X509Certificate;

    move v0, v1

    .line 118
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_0

    .line 119
    aget-object v4, p1, v0

    aput-object v4, v3, v0

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/absolute/android/sslutil/SslUtil;->a()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :cond_1
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    invoke-static {}, Lcom/absolute/android/logutil/LogUtil;->get()Lcom/absolute/android/logutil/LogUtil;

    move-result-object v4

    const/4 v5, 0x3

    const-string/jumbo v6, "m_defaultTrustManager.checkServerTrusted exception - do our own checking"

    invoke-virtual {v4, v5, v6}, Lcom/absolute/android/logutil/LogUtil;->logMessage(ILjava/lang/String;)V

    .line 129
    :try_start_1
    invoke-static {v3}, Lcom/absolute/android/sslutil/b;->a([Ljava/security/cert/X509Certificate;)[Ljava/security/cert/X509Certificate;

    move-result-object v6

    .line 138
    invoke-virtual {p0}, Lcom/absolute/android/sslutil/b;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v7

    move v5, v1

    .line 140
    :goto_1
    array-length v3, v6

    if-ge v5, v3, :cond_3

    .line 142
    aget-object v4, v6, v5

    move v3, v1

    .line 144
    :goto_2
    array-length v8, v7

    if-ge v3, v8, :cond_7

    .line 145
    aget-object v8, v7, v3

    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v8

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    if-eqz v8, :cond_4

    .line 147
    :try_start_2
    aget-object v8, v7, v3

    invoke-virtual {v8}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move v3, v2

    .line 155
    :goto_3
    if-eqz v3, :cond_6

    .line 160
    :try_start_3
    array-length v3, v6

    add-int/lit8 v3, v3, -0x1

    if-ne v5, v3, :cond_5

    move v3, v2

    .line 173
    :cond_2
    :goto_4
    if-eqz v3, :cond_6

    move v1, v2

    .line 180
    :cond_3
    if-nez v1, :cond_1

    .line 181
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "checkServerTrusted: Root cert is not trusted"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 184
    :catch_1
    move-exception v1

    check-cast v0, Ljava/security/cert/CertificateException;

    throw v0

    :catch_2
    move-exception v8

    .line 144
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    move v3, v1

    move v4, v5

    .line 163
    :goto_5
    :try_start_4
    array-length v8, v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    add-int/lit8 v8, v8, -0x1

    if-ge v4, v8, :cond_2

    .line 165
    add-int/lit8 v3, v4, 0x1

    :try_start_5
    aget-object v3, v6, v3

    aget-object v8, v6, v4

    invoke-virtual {v8}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 163
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v2

    goto :goto_5

    .line 168
    :catch_3
    move-exception v3

    move v3, v1

    .line 169
    goto :goto_4

    .line 140
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_7
    move v3, v1

    goto :goto_3
.end method

.method public final getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 190
    invoke-static {}, Lcom/absolute/android/sslutil/SslUtil;->a()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method
