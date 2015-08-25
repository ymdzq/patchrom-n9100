.class public Lcom/android/server/wm/VrAppListHelper;
.super Ljava/lang/Object;
.source "VrAppListHelper.java"


# static fields
.field private static mInstance:Lcom/android/server/wm/VrAppListHelper;


# instance fields
.field mVRAppList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wm/VrAppListHelper;->mInstance:Lcom/android/server/wm/VrAppListHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/VrAppListHelper;->mVRAppList:Ljava/util/Vector;

    .line 33
    invoke-direct {p0}, Lcom/android/server/wm/VrAppListHelper;->fillVRList()V

    .line 34
    return-void
.end method

.method private fillVRList()V
    .locals 8

    .prologue
    .line 53
    iget-object v6, p0, Lcom/android/server/wm/VrAppListHelper;->mVRAppList:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 54
    const/4 v3, 0x0

    .line 55
    .local v3, "fs":Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 57
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 59
    .local v5, "str":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    const-string v6, "/system/media/vr_list/vr_app_list"

    invoke-direct {v4, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    .end local v3    # "fs":Ljava/io/FileInputStream;
    .local v4, "fs":Ljava/io/FileInputStream;
    if-eqz v4, :cond_7

    .line 61
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 62
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    if-eqz v1, :cond_6

    .line 63
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 64
    iget-object v6, p0, Lcom/android/server/wm/VrAppListHelper;->mVRAppList:Ljava/util/Vector;

    invoke-virtual {v6, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 68
    :catch_0
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v3, v4

    .line 69
    .end local v4    # "fs":Ljava/io/FileInputStream;
    .local v2, "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "fs":Ljava/io/FileInputStream;
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 73
    if-eqz v0, :cond_0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 74
    :cond_0
    :goto_2
    const/4 v0, 0x0

    .line 75
    if-eqz v3, :cond_1

    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 76
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "fs":Ljava/io/FileInputStream;
    :cond_1
    :goto_3
    const/4 v3, 0x0

    .line 79
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "str":Ljava/lang/String;
    :cond_2
    return-void

    .line 70
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "fs":Ljava/io/FileInputStream;
    .restart local v5    # "str":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 71
    .local v2, "e":Ljava/io/IOException;
    :goto_4
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 73
    if-eqz v0, :cond_3

    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 74
    :cond_3
    :goto_5
    const/4 v0, 0x0

    .line 75
    if-eqz v3, :cond_1

    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_3

    :catch_2
    move-exception v6

    goto :goto_3

    .line 73
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_6
    if-eqz v0, :cond_4

    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 74
    :cond_4
    :goto_7
    const/4 v0, 0x0

    .line 75
    if-eqz v3, :cond_5

    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 76
    :cond_5
    :goto_8
    const/4 v3, 0x0

    .line 73
    throw v6

    :catch_3
    move-exception v7

    goto :goto_7

    .line 75
    :catch_4
    move-exception v7

    goto :goto_8

    .line 73
    .local v2, "e":Ljava/io/FileNotFoundException;
    :catch_5
    move-exception v6

    goto :goto_2

    .line 75
    :catch_6
    move-exception v6

    goto :goto_3

    .line 73
    .local v2, "e":Ljava/io/IOException;
    :catch_7
    move-exception v6

    goto :goto_5

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "fs":Ljava/io/FileInputStream;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "fs":Ljava/io/FileInputStream;
    :cond_6
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_7
    if-eqz v0, :cond_8

    :try_start_b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    .line 74
    :cond_8
    :goto_9
    const/4 v0, 0x0

    .line 75
    if-eqz v4, :cond_1

    :try_start_c
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    goto :goto_3

    :catch_8
    move-exception v6

    goto :goto_3

    .line 73
    :catch_9
    move-exception v6

    goto :goto_9

    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "fs":Ljava/io/FileInputStream;
    .restart local v3    # "fs":Ljava/io/FileInputStream;
    goto :goto_6

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "fs":Ljava/io/FileInputStream;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "fs":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "fs":Ljava/io/FileInputStream;
    .restart local v3    # "fs":Ljava/io/FileInputStream;
    goto :goto_6

    .line 70
    .end local v3    # "fs":Ljava/io/FileInputStream;
    .restart local v4    # "fs":Ljava/io/FileInputStream;
    :catch_a
    move-exception v2

    move-object v3, v4

    .end local v4    # "fs":Ljava/io/FileInputStream;
    .restart local v3    # "fs":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "fs":Ljava/io/FileInputStream;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "fs":Ljava/io/FileInputStream;
    :catch_b
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "fs":Ljava/io/FileInputStream;
    .restart local v3    # "fs":Ljava/io/FileInputStream;
    goto :goto_4

    .line 68
    :catch_c
    move-exception v2

    goto :goto_1

    .end local v3    # "fs":Ljava/io/FileInputStream;
    .restart local v4    # "fs":Ljava/io/FileInputStream;
    :catch_d
    move-exception v2

    move-object v3, v4

    .end local v4    # "fs":Ljava/io/FileInputStream;
    .restart local v3    # "fs":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static getInstance()Lcom/android/server/wm/VrAppListHelper;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/server/wm/VrAppListHelper;->mInstance:Lcom/android/server/wm/VrAppListHelper;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/android/server/wm/VrAppListHelper;

    invoke-direct {v0}, Lcom/android/server/wm/VrAppListHelper;-><init>()V

    sput-object v0, Lcom/android/server/wm/VrAppListHelper;->mInstance:Lcom/android/server/wm/VrAppListHelper;

    .line 42
    :cond_0
    sget-object v0, Lcom/android/server/wm/VrAppListHelper;->mInstance:Lcom/android/server/wm/VrAppListHelper;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized isVrPackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packagename"    # Ljava/lang/String;

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/VrAppListHelper;->mVRAppList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/android/server/wm/VrAppListHelper;->mVRAppList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 49
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
