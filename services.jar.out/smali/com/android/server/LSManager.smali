.class public Lcom/android/server/LSManager;
.super Landroid/os/storage/sensitive/SDServiceAPI$Stub;
.source "LSManager.java"


# static fields
.field private static final FAKE_PASSWORD_STRING:Ljava/lang/String; = "*_SSFPS*_"

.field private static final FLAG_SIZE:I = 0x4

.field private static final ID_LENGTH:I = 0x24

.field private static final KEYPAIR_PATH_NAME:Ljava/lang/String; = "lsm.data"

.field private static final KEY_STORE_DIR:Ljava/lang/String; = "/efs/"

.field private static final PSPACER_LEN:I = 0x40

.field private static final SET_STATE_LOCKED:I = 0x1

.field private static final SET_STATE_NOT_LOCKED:I

.field protected static final hexArray:[C

.field private static volatile isReady:Z

.field private static secureStorageLSM:Landroid/os/storage/sensitive/SecureStorageLSM;

.field private static final tmpPassword:[B


# instance fields
.field private TAG:Ljava/lang/String;

.field private USER_PASSWORD:[B

.field private askeypair:[B

.field private dropPassword:Z

.field private isLocked:Z

.field private isStarted:Z

.field private kpfile:Ljava/io/File;

.field private mContext:Landroid/content/Context;

.field private mProvider:Landroid/os/storage/sensitive/SensitiveDataProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/LSManager;->isReady:Z

    .line 111
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/LSManager;->tmpPassword:[B

    .line 119
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/android/server/LSManager;->hexArray:[C

    return-void

    .line 111
    nop

    :array_0
    .array-data 1
        -0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x3dt
        -0x58t
        -0x77t
        -0x6dt
        0x5at
        -0x4ft
        -0x5at
        -0x54t
        -0x19t
        0x58t
        0x21t
        0x2ft
        -0xdt
        0x6bt
        0x27t
        0x76t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x79t
        -0x59t
        0x4ft
        -0x12t
        -0x6et
        -0x49t
        -0x6ft
        0x48t
        -0x47t
        -0x3et
        0x66t
        0x10t
        0xct
        -0x25t
        0x3t
        0x47t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 53
    invoke-direct {p0}, Landroid/os/storage/sensitive/SDServiceAPI$Stub;-><init>()V

    .line 45
    iput-boolean v4, p0, Lcom/android/server/LSManager;->isStarted:Z

    .line 46
    const-string v3, "LSManager"

    iput-object v3, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    .line 109
    new-array v3, v4, [B

    iput-object v3, p0, Lcom/android/server/LSManager;->USER_PASSWORD:[B

    .line 115
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/LSManager;->askeypair:[B

    .line 116
    iput-boolean v4, p0, Lcom/android/server/LSManager;->dropPassword:Z

    .line 54
    iget-object v3, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v4, "Start LSManager....."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v3, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v4, "LSManager constructor was started..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iput-object p1, p0, Lcom/android/server/LSManager;->mContext:Landroid/content/Context;

    .line 58
    invoke-static {}, Landroid/os/storage/sensitive/SecureStorageLSM;->getInstance()Landroid/os/storage/sensitive/SecureStorageLSM;

    move-result-object v3

    sput-object v3, Lcom/android/server/LSManager;->secureStorageLSM:Landroid/os/storage/sensitive/SecureStorageLSM;

    .line 59
    iget-object v3, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v4, "lets try to initialize SS"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    sget-object v3, Lcom/android/server/LSManager;->secureStorageLSM:Landroid/os/storage/sensitive/SecureStorageLSM;

    invoke-virtual {v3}, Landroid/os/storage/sensitive/SecureStorageLSM;->initialize()I

    move-result v3

    if-ne v3, v6, :cond_2

    .line 61
    sput-boolean v6, Lcom/android/server/LSManager;->isReady:Z

    .line 62
    iget-object v3, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v4, "SS is initialized"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v3, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v4, "SS is ready!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    new-instance v3, Landroid/os/storage/sensitive/SensitiveDataProvider;

    iget-object v4, p0, Lcom/android/server/LSManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/os/storage/sensitive/SensitiveDataProvider;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/LSManager;->mProvider:Landroid/os/storage/sensitive/SensitiveDataProvider;

    .line 72
    new-instance v3, Ljava/io/File;

    const-string v4, "/efs/"

    const-string v5, "lsm.data"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/LSManager;->kpfile:Ljava/io/File;

    .line 73
    iget-object v3, p0, Lcom/android/server/LSManager;->kpfile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 74
    const/4 v1, 0x0

    .line 76
    .local v1, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/android/server/LSManager;->kpfile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v3

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/android/server/LSManager;->askeypair:[B

    .line 78
    iget-object v3, p0, Lcom/android/server/LSManager;->askeypair:[B

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 89
    if-eqz v2, :cond_0

    .line 91
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 100
    .end local v2    # "fis":Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/LSManager;->setLocked()V

    .line 102
    iput-boolean v6, p0, Lcom/android/server/LSManager;->isStarted:Z

    .line 103
    iget-object v3, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v4, "LSManager is constructed."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_1
    :goto_1
    return-void

    .line 65
    :cond_2
    iget-object v3, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v4, "SS initialization failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v3, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v4, "SS is not ready at the beginning..."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 79
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    iget-object v3, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v4, "Askeypair file open error."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 89
    if-eqz v1, :cond_1

    .line 91
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 92
    :catch_1
    move-exception v0

    .line 94
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 84
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 86
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_5
    iget-object v3, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v4, "Askeypair file read error."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 89
    if-eqz v1, :cond_0

    .line 91
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    .line 92
    :catch_3
    move-exception v0

    .line 94
    .end local v1    # "fis":Ljava/io/FileInputStream;
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 89
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    :catchall_0
    move-exception v3

    :goto_5
    if-eqz v1, :cond_3

    .line 91
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 89
    :cond_3
    :goto_6
    throw v3

    .line 92
    :catch_4
    move-exception v0

    .line 94
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    .line 92
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_5
    move-exception v0

    goto :goto_4

    .line 89
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .line 84
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_6
    move-exception v0

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 79
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_7
    move-exception v0

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public static bs2l(Ljava/util/BitSet;)J
    .locals 5
    .param p0, "bits"    # Ljava/util/BitSet;

    .prologue
    .line 135
    const-wide/16 v1, 0x0

    .line 136
    .local v1, "value":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/BitSet;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 137
    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-wide/16 v3, 0x1

    shl-long/2addr v3, v0

    :goto_1
    add-long/2addr v1, v3

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    :cond_0
    const-wide/16 v3, 0x0

    goto :goto_1

    .line 139
    :cond_1
    return-wide v1
.end method

.method private decryptData(Landroid/os/storage/sensitive/SensitiveDataParcel;)[B
    .locals 11
    .param p1, "parcel"    # Landroid/os/storage/sensitive/SensitiveDataParcel;

    .prologue
    const/16 v10, 0x24

    const/4 v3, 0x0

    const/4 v9, 0x0

    .line 296
    invoke-virtual {p1}, Landroid/os/storage/sensitive/SensitiveDataParcel;->getData()[B

    move-result-object v0

    .line 297
    .local v0, "data":[B
    iget-object v5, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "data :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v0

    int-to-long v7, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    new-instance v2, Ljava/lang/String;

    invoke-static {v0, v9, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>([B)V

    .line 299
    .local v2, "kid":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "kid :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-direct {p0, v3, v2}, Lcom/android/server/LSManager;->re_encrypt([BLjava/lang/String;)V

    .line 303
    iget-object v5, p0, Lcom/android/server/LSManager;->mProvider:Landroid/os/storage/sensitive/SensitiveDataProvider;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/storage/sensitive/SensitiveDataProvider;->open(I)V

    .line 304
    iget-object v5, p0, Lcom/android/server/LSManager;->mProvider:Landroid/os/storage/sensitive/SensitiveDataProvider;

    invoke-virtual {p1}, Landroid/os/storage/sensitive/SensitiveDataParcel;->getClient()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v7, 0x0

    invoke-virtual {v5, v6, v2, v7, v8}, Landroid/os/storage/sensitive/SensitiveDataProvider;->read(Ljava/lang/String;Ljava/lang/String;J)[B

    move-result-object v1

    .line 305
    .local v1, "header":[B
    iget-object v5, p0, Lcom/android/server/LSManager;->mProvider:Landroid/os/storage/sensitive/SensitiveDataProvider;

    invoke-virtual {v5}, Landroid/os/storage/sensitive/SensitiveDataProvider;->close()V

    .line 306
    if-nez v1, :cond_1

    .line 320
    :cond_0
    :goto_0
    return-object v3

    .line 310
    :cond_1
    array-length v5, v0

    add-int/lit8 v5, v5, -0x24

    array-length v6, v1

    add-int/2addr v5, v6

    new-array v4, v5, [B

    .line 311
    .local v4, "todecrypt":[B
    array-length v5, v1

    add-int/lit8 v5, v5, -0x4

    invoke-static {v1, v9, v4, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 312
    array-length v5, v1

    add-int/lit8 v5, v5, -0x4

    array-length v6, v0

    add-int/lit8 v6, v6, -0x24

    invoke-static {v0, v10, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 313
    array-length v5, v1

    add-int/lit8 v5, v5, -0x4

    array-length v6, v1

    add-int/lit8 v6, v6, -0x4

    array-length v7, v0

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x24

    const/4 v7, 0x4

    invoke-static {v1, v5, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 315
    iget-boolean v5, p0, Lcom/android/server/LSManager;->isLocked:Z

    if-nez v5, :cond_0

    .line 318
    sget-object v5, Lcom/android/server/LSManager;->secureStorageLSM:Landroid/os/storage/sensitive/SecureStorageLSM;

    iget-object v6, p0, Lcom/android/server/LSManager;->USER_PASSWORD:[B

    invoke-virtual {v5, v4, v6}, Landroid/os/storage/sensitive/SecureStorageLSM;->decrypt([B[B)[B

    move-result-object v3

    .line 320
    .local v3, "result":[B
    goto :goto_0
.end method

.method private encryptData(Landroid/os/storage/sensitive/SensitiveDataParcel;)[B
    .locals 19
    .param p1, "parcel"    # Landroid/os/storage/sensitive/SensitiveDataParcel;

    .prologue
    .line 228
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v13

    .line 229
    .local v13, "kid":Ljava/util/UUID;
    invoke-virtual {v13}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    .line 230
    .local v8, "bkid":[B
    new-instance v11, Ljava/util/BitSet;

    const/16 v1, 0x20

    invoke-direct {v11, v1}, Ljava/util/BitSet;-><init>(I)V

    .line 232
    .local v11, "flags":Ljava/util/BitSet;
    const/4 v14, 0x0

    .line 234
    .local v14, "locked":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v2, "encryptData checking parcel..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    if-nez p1, :cond_0

    .line 237
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v2, "Parcel is null "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const/16 v17, 0x0

    .line 291
    :goto_0
    return-object v17

    .line 241
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/storage/sensitive/SensitiveDataParcel;->getData()[B

    move-result-object v1

    if-nez v1, :cond_1

    .line 242
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v2, "Parcel.getData() is null "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const/16 v17, 0x0

    goto :goto_0

    .line 246
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/LSManager;->isLocked:Z

    if-eqz v1, :cond_2

    .line 247
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Ljava/util/BitSet;->set(I)V

    .line 248
    const/4 v14, 0x1

    .line 249
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/LSManager;->askeypair:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 250
    .local v7, "bb":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 251
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v18

    .line 252
    .local v18, "wks":I
    move/from16 v0, v18

    new-array v1, v0, [B

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 253
    const/16 v1, 0xc

    new-array v1, v1, [B

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 254
    const/16 v1, 0x10

    new-array v1, v1, [B

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 255
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v18

    .line 256
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v15

    .line 257
    .local v15, "pks":I
    move/from16 v0, v18

    new-array v1, v0, [B

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 258
    new-array v0, v15, [B

    move-object/from16 v16, v0

    .line 259
    .local v16, "public_key":[B
    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 260
    invoke-virtual {v7}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 261
    move-object/from16 v0, v16

    array-length v1, v0

    add-int/lit8 v1, v1, 0xc

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 262
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 263
    invoke-virtual {v7, v15}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 264
    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 265
    sget-object v1, Lcom/android/server/LSManager;->secureStorageLSM:Landroid/os/storage/sensitive/SecureStorageLSM;

    invoke-virtual/range {p1 .. p1}, Landroid/os/storage/sensitive/SensitiveDataParcel;->getData()[B

    move-result-object v2

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3, v14}, Landroid/os/storage/sensitive/SecureStorageLSM;->encrypt([B[BI)[B

    move-result-object v10

    .line 271
    .end local v7    # "bb":Ljava/nio/ByteBuffer;
    .end local v15    # "pks":I
    .end local v16    # "public_key":[B
    .end local v18    # "wks":I
    .local v10, "encrypted":[B
    :goto_1
    invoke-static {v10}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 272
    .local v9, "eb":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v9, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 273
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    shr-int/lit8 v12, v1, 0x10

    .line 274
    .local v12, "hsize":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Header size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    add-int/lit8 v1, v12, 0x4

    new-array v6, v1, [B

    .line 277
    .local v6, "header":[B
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v10, v1, v6, v2, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 278
    array-length v1, v10

    add-int/lit8 v1, v1, -0x4

    const/4 v2, 0x4

    invoke-static {v10, v1, v6, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 280
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/LSManager;->mProvider:Landroid/os/storage/sensitive/SensitiveDataProvider;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/storage/sensitive/SensitiveDataProvider;->open(I)V

    .line 281
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/LSManager;->mProvider:Landroid/os/storage/sensitive/SensitiveDataProvider;

    invoke-virtual/range {p1 .. p1}, Landroid/os/storage/sensitive/SensitiveDataParcel;->getClient()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11}, Lcom/android/server/LSManager;->bs2l(Ljava/util/BitSet;)J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Landroid/os/storage/sensitive/SensitiveDataProvider;->write(Ljava/lang/String;Ljava/lang/String;J[B)Z

    .line 282
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/LSManager;->mProvider:Landroid/os/storage/sensitive/SensitiveDataProvider;

    invoke-virtual {v1}, Landroid/os/storage/sensitive/SensitiveDataProvider;->close()V

    .line 284
    array-length v1, v10

    add-int/lit8 v2, v12, 0x4

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x24

    new-array v0, v1, [B

    move-object/from16 v17, v0

    .line 286
    .local v17, "result":[B
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "writeData :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x24

    move-object/from16 v0, v17

    invoke-static {v8, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 289
    const/16 v1, 0x24

    array-length v2, v10

    add-int/lit8 v3, v12, 0x4

    sub-int/2addr v2, v3

    move-object/from16 v0, v17

    invoke-static {v10, v12, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    .line 267
    .end local v6    # "header":[B
    .end local v9    # "eb":Ljava/nio/ByteBuffer;
    .end local v10    # "encrypted":[B
    .end local v12    # "hsize":I
    .end local v17    # "result":[B
    :cond_2
    sget-object v1, Lcom/android/server/LSManager;->secureStorageLSM:Landroid/os/storage/sensitive/SecureStorageLSM;

    invoke-virtual/range {p1 .. p1}, Landroid/os/storage/sensitive/SensitiveDataParcel;->getData()[B

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LSManager;->USER_PASSWORD:[B

    invoke-virtual {v1, v2, v3, v14}, Landroid/os/storage/sensitive/SecureStorageLSM;->encrypt([B[BI)[B

    move-result-object v10

    .restart local v10    # "encrypted":[B
    goto/16 :goto_1
.end method

.method private genKeypair()V
    .locals 3

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v1, "gen_keypair"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    sget-object v0, Lcom/android/server/LSManager;->secureStorageLSM:Landroid/os/storage/sensitive/SecureStorageLSM;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/LSManager;->USER_PASSWORD:[B

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/sensitive/SecureStorageLSM;->gen_keypair([B[B)[B

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/android/server/LSManager;->askeypair:[B

    .line 378
    invoke-direct {p0}, Lcom/android/server/LSManager;->updateKeypair()V

    .line 379
    return-void
.end method

.method public static l2bs(J)Ljava/util/BitSet;
    .locals 6
    .param p0, "value"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 122
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 123
    .local v0, "bits":Ljava/util/BitSet;
    const/4 v1, 0x0

    .line 124
    .local v1, "index":I
    :goto_0
    cmp-long v2, p0, v4

    if-eqz v2, :cond_1

    .line 125
    const-wide/16 v2, 0x2

    rem-long v2, p0, v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 126
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 128
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 129
    const/4 v2, 0x1

    ushr-long/2addr p0, v2

    goto :goto_0

    .line 131
    :cond_1
    return-object v0
.end method

.method private re_encrypt([BLjava/lang/String;)V
    .locals 12
    .param p1, "newpass"    # [B
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/16 v11, 0x40

    const/4 v10, 0x0

    .line 148
    new-instance v1, Ljava/util/BitSet;

    const/16 v7, 0x20

    invoke-direct {v1, v7}, Ljava/util/BitSet;-><init>(I)V

    .line 149
    .local v1, "flags":Ljava/util/BitSet;
    iget-object v7, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v8, "Reencrypt start"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    if-nez p1, :cond_0

    .line 152
    invoke-virtual {v1, v10}, Ljava/util/BitSet;->set(I)V

    .line 155
    :cond_0
    const/4 v2, 0x0

    .line 158
    .local v2, "keyset":[B
    if-nez p2, :cond_2

    .line 159
    iget-object v7, p0, Lcom/android/server/LSManager;->mProvider:Landroid/os/storage/sensitive/SensitiveDataProvider;

    invoke-virtual {v7, v9}, Landroid/os/storage/sensitive/SensitiveDataProvider;->open(I)V

    .line 160
    iget-object v7, p0, Lcom/android/server/LSManager;->mProvider:Landroid/os/storage/sensitive/SensitiveDataProvider;

    invoke-static {v1}, Lcom/android/server/LSManager;->bs2l(Ljava/util/BitSet;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Landroid/os/storage/sensitive/SensitiveDataProvider;->get_keys_by_flag(J)[B

    move-result-object v2

    .line 161
    iget-object v7, p0, Lcom/android/server/LSManager;->mProvider:Landroid/os/storage/sensitive/SensitiveDataProvider;

    invoke-virtual {v7}, Landroid/os/storage/sensitive/SensitiveDataProvider;->close()V

    .line 169
    :goto_0
    array-length v7, v2

    if-nez v7, :cond_4

    .line 170
    if-nez p1, :cond_3

    .line 171
    iget-object v7, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v8, "Have nothing to re_encrypt."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_1
    :goto_1
    return-void

    .line 163
    :cond_2
    iget-object v7, p0, Lcom/android/server/LSManager;->mProvider:Landroid/os/storage/sensitive/SensitiveDataProvider;

    invoke-virtual {v7, v9}, Landroid/os/storage/sensitive/SensitiveDataProvider;->open(I)V

    .line 164
    iget-object v7, p0, Lcom/android/server/LSManager;->mProvider:Landroid/os/storage/sensitive/SensitiveDataProvider;

    invoke-static {v1}, Lcom/android/server/LSManager;->bs2l(Ljava/util/BitSet;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9, p2}, Landroid/os/storage/sensitive/SensitiveDataProvider;->get_keys_by_flag_and_uuid(JLjava/lang/String;)[B

    move-result-object v2

    .line 165
    iget-object v7, p0, Lcom/android/server/LSManager;->mProvider:Landroid/os/storage/sensitive/SensitiveDataProvider;

    invoke-virtual {v7}, Landroid/os/storage/sensitive/SensitiveDataProvider;->close()V

    goto :goto_0

    .line 174
    :cond_3
    iget-object v7, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v8, "Re_encrypt asympair."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_4
    iget-object v7, p0, Lcom/android/server/LSManager;->askeypair:[B

    array-length v7, v7

    add-int/lit8 v7, v7, 0x40

    array-length v8, v2

    add-int/2addr v7, v8

    add-int/lit16 v7, v7, 0x190

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 179
    .local v0, "bb":Ljava/nio/ByteBuffer;
    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 180
    if-nez p1, :cond_5

    .line 181
    new-array v7, v11, [B

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 189
    :goto_2
    iget-object v7, p0, Lcom/android/server/LSManager;->askeypair:[B

    array-length v7, v7

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 190
    iget-object v7, p0, Lcom/android/server/LSManager;->askeypair:[B

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 191
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 193
    iget-object v7, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v8, "Go to TZ"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    sget-object v7, Lcom/android/server/LSManager;->secureStorageLSM:Landroid/os/storage/sensitive/SecureStorageLSM;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/LSManager;->USER_PASSWORD:[B

    invoke-virtual {v7, v8, v9}, Landroid/os/storage/sensitive/SecureStorageLSM;->keys_re_encrypt([B[B)[B

    move-result-object v6

    .line 196
    .local v6, "rezult":[B
    if-eqz v6, :cond_1

    .line 200
    invoke-virtual {v0}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 201
    iget-object v7, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v8, "Update."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 204
    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 205
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 207
    .local v3, "len":I
    iget-object v7, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Keylen: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    if-nez p1, :cond_6

    .line 209
    new-array v7, v3, [B

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 213
    :goto_3
    array-length v7, v2

    if-eqz v7, :cond_1

    .line 214
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v7

    new-array v4, v7, [B

    .line 216
    .local v4, "nkeys":[B
    iget-object v7, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Keys size : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, v4

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 219
    iget-object v7, p0, Lcom/android/server/LSManager;->mProvider:Landroid/os/storage/sensitive/SensitiveDataProvider;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/os/storage/sensitive/SensitiveDataProvider;->open(I)V

    .line 220
    iget-object v7, p0, Lcom/android/server/LSManager;->mProvider:Landroid/os/storage/sensitive/SensitiveDataProvider;

    invoke-virtual {v7, v4}, Landroid/os/storage/sensitive/SensitiveDataProvider;->update_keys([B)V

    .line 221
    iget-object v7, p0, Lcom/android/server/LSManager;->mProvider:Landroid/os/storage/sensitive/SensitiveDataProvider;

    invoke-virtual {v7}, Landroid/os/storage/sensitive/SensitiveDataProvider;->close()V

    goto/16 :goto_1

    .line 183
    .end local v3    # "len":I
    .end local v4    # "nkeys":[B
    .end local v6    # "rezult":[B
    :cond_5
    new-array v5, v11, [B

    .line 184
    .local v5, "np":[B
    array-length v7, p1

    invoke-static {p1, v10, v5, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 186
    new-array v7, v11, [B

    invoke-static {v7, v10, v5, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_2

    .line 211
    .end local v5    # "np":[B
    .restart local v3    # "len":I
    .restart local v6    # "rezult":[B
    :cond_6
    iget-object v7, p0, Lcom/android/server/LSManager;->askeypair:[B

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_3
.end method

.method private updateKeypair()V
    .locals 5

    .prologue
    .line 351
    iget-object v3, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "update_keypair"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const/4 v1, 0x0

    .line 354
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/android/server/LSManager;->kpfile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v3, p0, Lcom/android/server/LSManager;->askeypair:[B

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 364
    if-eqz v2, :cond_0

    .line 366
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_0
    :goto_0
    move-object v1, v2

    .line 373
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    return-void

    .line 356
    :catch_0
    move-exception v0

    .line 358
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 364
    if-eqz v1, :cond_1

    .line 366
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 367
    :catch_1
    move-exception v0

    .line 369
    .local v0, "e":Ljava/io/IOException;
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 360
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 362
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 364
    if-eqz v1, :cond_1

    .line 366
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 367
    :catch_3
    move-exception v0

    goto :goto_3

    .line 364
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_5
    if-eqz v1, :cond_2

    .line 366
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 364
    :cond_2
    :goto_6
    throw v3

    .line 367
    :catch_4
    move-exception v0

    .line 369
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    .line 367
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v0

    .line 369
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 364
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 360
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v0

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 356
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v0

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2
.end method


# virtual methods
.method public processParcel(Landroid/os/storage/sensitive/SensitiveDataParcel;)[B
    .locals 4
    .param p1, "parcel"    # Landroid/os/storage/sensitive/SensitiveDataParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 325
    const/4 v0, 0x0

    .line 326
    .local v0, "result":[B
    sget-boolean v2, Lcom/android/server/LSManager;->isReady:Z

    if-eqz v2, :cond_1

    .line 328
    if-nez p1, :cond_0

    move-object v1, v0

    .line 347
    .end local v0    # "result":[B
    .local v1, "result":[B
    :goto_0
    return-object v1

    .line 331
    .end local v1    # "result":[B
    .restart local v0    # "result":[B
    :cond_0
    monitor-enter p0

    .line 332
    :try_start_0
    invoke-virtual {p1}, Landroid/os/storage/sensitive/SensitiveDataParcel;->getOperation()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 342
    :goto_1
    monitor-exit p0

    :goto_2
    move-object v1, v0

    .line 347
    .end local v0    # "result":[B
    .restart local v1    # "result":[B
    goto :goto_0

    .line 334
    .end local v1    # "result":[B
    .restart local v0    # "result":[B
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/server/LSManager;->encryptData(Landroid/os/storage/sensitive/SensitiveDataParcel;)[B

    move-result-object v0

    .line 335
    goto :goto_1

    .line 337
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/server/LSManager;->decryptData(Landroid/os/storage/sensitive/SensitiveDataParcel;)[B

    move-result-object v0

    .line 338
    goto :goto_1

    .line 342
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 344
    :cond_1
    iget-object v2, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v3, "Secure Storage not accesible. SensitiveData API disabled."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 332
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setLocked()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 446
    iget-object v0, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v1, "Set Locked."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iput-boolean v2, p0, Lcom/android/server/LSManager;->isLocked:Z

    .line 450
    iget-boolean v0, p0, Lcom/android/server/LSManager;->isLocked:Z

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/android/server/LSManager;->USER_PASSWORD:[B

    array-length v0, v0

    if-nez v0, :cond_1

    .line 452
    iget-object v0, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v1, "Wait for pass."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 456
    :cond_1
    iget-object v0, p0, Lcom/android/server/LSManager;->askeypair:[B

    if-nez v0, :cond_2

    .line 457
    invoke-direct {p0}, Lcom/android/server/LSManager;->genKeypair()V

    .line 460
    :cond_2
    sget-object v0, Lcom/android/server/LSManager;->secureStorageLSM:Landroid/os/storage/sensitive/SecureStorageLSM;

    new-array v1, v3, [B

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/sensitive/SecureStorageLSM;->set_state([BI)I

    .line 462
    iget-object v0, p0, Lcom/android/server/LSManager;->USER_PASSWORD:[B

    array-length v0, v0

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/android/server/LSManager;->USER_PASSWORD:[B

    iget-object v2, p0, Lcom/android/server/LSManager;->USER_PASSWORD:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 463
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/android/server/LSManager;->USER_PASSWORD:[B

    goto :goto_0
.end method

.method public setPassword([B)V
    .locals 6
    .param p1, "pass"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 382
    iget-object v0, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setPassword"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    sget-boolean v0, Lcom/android/server/LSManager;->isReady:Z

    if-eqz v0, :cond_6

    .line 384
    iget-boolean v0, p0, Lcom/android/server/LSManager;->isLocked:Z

    if-nez v0, :cond_5

    .line 385
    iget-object v0, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v1, "Not locked."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    array-length v0, p1

    if-nez v0, :cond_2

    .line 387
    iget-object v0, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v1, "Incomming null."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v0, p0, Lcom/android/server/LSManager;->USER_PASSWORD:[B

    array-length v0, v0

    if-lez v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/android/server/LSManager;->USER_PASSWORD:[B

    array-length v0, v0

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/android/server/LSManager;->USER_PASSWORD:[B

    iget-object v2, p0, Lcom/android/server/LSManager;->USER_PASSWORD:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 396
    new-array v0, v3, [B

    iput-object v0, p0, Lcom/android/server/LSManager;->USER_PASSWORD:[B

    .line 397
    iget-object v0, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v1, "re_encrypt with tmpPassword.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    sget-object v0, Lcom/android/server/LSManager;->tmpPassword:[B

    invoke-direct {p0, v0, v4}, Lcom/android/server/LSManager;->re_encrypt([BLjava/lang/String;)V

    .line 399
    invoke-direct {p0}, Lcom/android/server/LSManager;->updateKeypair()V

    .line 400
    iput-boolean v5, p0, Lcom/android/server/LSManager;->dropPassword:Z

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v1, "Maybe deleted."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_1
    :goto_0
    return-void

    .line 405
    :cond_2
    iget-object v0, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v1, "Incomming pass."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-boolean v0, p0, Lcom/android/server/LSManager;->dropPassword:Z

    if-nez v0, :cond_4

    .line 407
    iget-object v0, p0, Lcom/android/server/LSManager;->USER_PASSWORD:[B

    array-length v0, v0

    if-lez v0, :cond_3

    .line 408
    iget-object v0, p0, Lcom/android/server/LSManager;->USER_PASSWORD:[B

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 409
    iget-object v0, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v1, "Going to re_encrypt with pass"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    invoke-direct {p0, p1, v4}, Lcom/android/server/LSManager;->re_encrypt([BLjava/lang/String;)V

    .line 411
    invoke-direct {p0}, Lcom/android/server/LSManager;->updateKeypair()V

    .line 431
    :cond_3
    :goto_1
    iput-boolean v3, p0, Lcom/android/server/LSManager;->isLocked:Z

    .line 432
    sget-object v0, Lcom/android/server/LSManager;->secureStorageLSM:Landroid/os/storage/sensitive/SecureStorageLSM;

    invoke-virtual {v0, p1, v3}, Landroid/os/storage/sensitive/SecureStorageLSM;->set_state([BI)I

    .line 434
    const-string v0, "*_SSFPS*_"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LSManager;->USER_PASSWORD:[B

    .line 436
    iget-object v0, p0, Lcom/android/server/LSManager;->askeypair:[B

    if-nez v0, :cond_1

    .line 437
    invoke-direct {p0}, Lcom/android/server/LSManager;->genKeypair()V

    goto :goto_0

    .line 415
    :cond_4
    iget-object v0, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "set_state tmpPassword..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    sget-object v0, Lcom/android/server/LSManager;->secureStorageLSM:Landroid/os/storage/sensitive/SecureStorageLSM;

    sget-object v1, Lcom/android/server/LSManager;->tmpPassword:[B

    invoke-virtual {v0, v1, v3}, Landroid/os/storage/sensitive/SecureStorageLSM;->set_state([BI)I

    .line 417
    iget-object v0, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v1, "re_encrypt with pass"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-direct {p0, p1, v4}, Lcom/android/server/LSManager;->re_encrypt([BLjava/lang/String;)V

    .line 419
    invoke-direct {p0}, Lcom/android/server/LSManager;->updateKeypair()V

    .line 420
    iput-boolean v3, p0, Lcom/android/server/LSManager;->dropPassword:Z

    .line 421
    iget-object v0, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v1, "clear tmpPassword..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    sget-object v0, Lcom/android/server/LSManager;->secureStorageLSM:Landroid/os/storage/sensitive/SecureStorageLSM;

    new-array v1, v3, [B

    invoke-virtual {v0, v1, v5}, Landroid/os/storage/sensitive/SecureStorageLSM;->set_state([BI)I

    goto :goto_1

    .line 426
    :cond_5
    array-length v0, p1

    if-nez v0, :cond_3

    .line 427
    iget-object v0, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v1, "First launch?.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 441
    :cond_6
    iget-object v0, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v1, "SS is not ready..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public systemReady()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/server/LSManager;->TAG:Ljava/lang/String;

    const-string v1, "Do something JNI related here."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-void
.end method
