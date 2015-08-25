.class public abstract Landroid/hardware/motion/MotionRecognitionReactiveAlert;
.super Ljava/lang/Object;
.source "MotionRecognitionReactiveAlert.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/motion/MotionRecognitionReactiveAlert$PollIntThread;
    }
.end annotation


# static fields
.field private static final INT_ALERT:I = 0x31

.field private static final INT_READY:I = 0x30

.field public static final MSG_ENABLE_INT:I = 0x1e

.field public static final MSG_SEND_FLAT:I = 0x2d

.field public static final MSG_SEND_REACTIVE_ALERT:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "MotionRecognitionService"


# instance fields
.field private mEnableAccINT:Z

.field private mLockACCInt:Ljava/lang/Object;

.field mMsgHandler:Landroid/os/Handler;

.field private mPM:Landroid/os/PowerManager;

.field private mPollThread:Landroid/hardware/motion/MotionRecognitionReactiveAlert$PollIntThread;

.field private mReactiveAlert_Wakelock:Landroid/os/PowerManager$WakeLock;

.field public mSspenabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sspenabled"    # Z

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionReactiveAlert;->mLockACCInt:Ljava/lang/Object;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionReactiveAlert;->mEnableAccINT:Z

    .line 162
    new-instance v0, Landroid/hardware/motion/MotionRecognitionReactiveAlert$1;

    invoke-direct {v0, p0}, Landroid/hardware/motion/MotionRecognitionReactiveAlert$1;-><init>(Landroid/hardware/motion/MotionRecognitionReactiveAlert;)V

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionReactiveAlert;->mMsgHandler:Landroid/os/Handler;

    .line 63
    invoke-virtual {p0, p1, p2}, Landroid/hardware/motion/MotionRecognitionReactiveAlert;->initReactiveAlert(Landroid/content/Context;Z)V

    .line 64
    return-void
.end method

.method static synthetic access$000(Landroid/hardware/motion/MotionRecognitionReactiveAlert;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/motion/MotionRecognitionReactiveAlert;

    .prologue
    .line 44
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionReactiveAlert;->mReactiveAlert_Wakelock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$100(Landroid/hardware/motion/MotionRecognitionReactiveAlert;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/motion/MotionRecognitionReactiveAlert;

    .prologue
    .line 44
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionReactiveAlert;->mLockACCInt:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Landroid/hardware/motion/MotionRecognitionReactiveAlert;)I
    .locals 1
    .param p0, "x0"    # Landroid/hardware/motion/MotionRecognitionReactiveAlert;

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/hardware/motion/MotionRecognitionReactiveAlert;->readACCInt()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/hardware/motion/MotionRecognitionReactiveAlert;)Z
    .locals 1
    .param p0, "x0"    # Landroid/hardware/motion/MotionRecognitionReactiveAlert;

    .prologue
    .line 44
    iget-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionReactiveAlert;->mEnableAccINT:Z

    return v0
.end method

.method private readACCInt()I
    .locals 8

    .prologue
    .line 178
    const/4 v3, 0x0

    .line 179
    .local v3, "fis":Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 180
    .local v0, "data":I
    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionReactiveAlert;->mLockACCInt:Ljava/lang/Object;

    monitor-enter v6

    .line 183
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    const-string v5, "/sys/class/sensors/accelerometer_sensor/reactive_alert"

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .local v4, "fis":Ljava/io/FileInputStream;
    move-object v3, v4

    .line 188
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :goto_0
    if-nez v3, :cond_1

    .line 189
    :try_start_1
    const-string v5, "MotionRecognitionService"

    const-string v7, "Output file is null!"

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 206
    :goto_1
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 207
    return v0

    .line 184
    :catch_0
    move-exception v1

    .line 185
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_3
    const-string v5, "MotionRecognitionService"

    const-string v7, "File not found!"

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 195
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 196
    .local v1, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 197
    if-eqz v3, :cond_0

    .line 199
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 204
    :cond_0
    :goto_2
    :try_start_6
    const-string v5, "MotionRecognitionService"

    const-string v7, "File read fail!!"

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 206
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v5

    .line 191
    :cond_1
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v0

    .line 193
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 200
    .restart local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 201
    .local v2, "err":Ljava/lang/Exception;
    :try_start_8
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2
.end method

.method private writeACCInt(I)V
    .locals 8
    .param p1, "en"    # I

    .prologue
    const/4 v7, 0x1

    .line 211
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionReactiveAlert;->mLockACCInt:Ljava/lang/Object;

    monitor-enter v5

    .line 212
    const/4 v2, 0x0

    .line 215
    .local v2, "out":Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    const-string v6, "/sys/class/sensors/accelerometer_sensor/reactive_alert"

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "out":Ljava/io/OutputStream;
    .local v3, "out":Ljava/io/OutputStream;
    move-object v2, v3

    .line 220
    .end local v3    # "out":Ljava/io/OutputStream;
    .restart local v2    # "out":Ljava/io/OutputStream;
    :goto_0
    if-nez v2, :cond_1

    .line 221
    :try_start_1
    const-string v4, "MotionRecognitionService"

    const-string v6, "Output file is null!"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 240
    :goto_1
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 241
    return-void

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_3
    const-string v4, "MotionRecognitionService"

    const-string v6, "File not found!"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 229
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 230
    .local v0, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 231
    if-eqz v2, :cond_0

    .line 233
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 238
    :cond_0
    :goto_2
    :try_start_6
    const-string v4, "MotionRecognitionService"

    const-string v6, "File write fail!!"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 240
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v4

    .line 224
    :cond_1
    if-nez p1, :cond_3

    const/16 v4, 0x30

    :try_start_7
    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write(I)V

    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/hardware/motion/MotionRecognitionReactiveAlert;->mEnableAccINT:Z

    .line 227
    :cond_2
    :goto_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    goto :goto_1

    .line 225
    :cond_3
    if-ne p1, v7, :cond_2

    const/16 v4, 0x31

    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write(I)V

    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/hardware/motion/MotionRecognitionReactiveAlert;->mEnableAccINT:Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    .line 234
    .restart local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 235
    .local v1, "err":Ljava/lang/Exception;
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2
.end method


# virtual methods
.method public disableAccINT()V
    .locals 2

    .prologue
    .line 259
    const-string v0, "MotionRecognitionService"

    const-string v1, "disableAccINT "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionReactiveAlert;->mEnableAccINT:Z

    if-nez v0, :cond_0

    .line 262
    const-string v0, "MotionRecognitionService"

    const-string v1, "AccINT is already disabled. "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :goto_0
    return-void

    .line 265
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/motion/MotionRecognitionReactiveAlert;->writeACCInt(I)V

    .line 266
    const-string v0, "MotionRecognitionService"

    const-string v1, "disableAccINT Complete!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enableAccINT()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 245
    const-string v0, "MotionRecognitionService"

    const-string v1, "enableAccINT "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionReactiveAlert;->mEnableAccINT:Z

    if-ne v0, v2, :cond_0

    .line 250
    const-string v0, "MotionRecognitionService"

    const-string v1, "AccINT is already enabled. "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :goto_0
    return-void

    .line 253
    :cond_0
    invoke-direct {p0, v2}, Landroid/hardware/motion/MotionRecognitionReactiveAlert;->writeACCInt(I)V

    .line 254
    const-string v0, "MotionRecognitionService"

    const-string v1, "enableAccINT Complete!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public initReactiveAlert(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sspenabled"    # Z

    .prologue
    .line 67
    iput-boolean p2, p0, Landroid/hardware/motion/MotionRecognitionReactiveAlert;->mSspenabled:Z

    .line 68
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionReactiveAlert;->mPollThread:Landroid/hardware/motion/MotionRecognitionReactiveAlert$PollIntThread;

    if-nez v0, :cond_1

    .line 70
    if-eqz p1, :cond_0

    .line 72
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionReactiveAlert;->mPM:Landroid/os/PowerManager;

    .line 73
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionReactiveAlert;->mPM:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "reactive_alert"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionReactiveAlert;->mReactiveAlert_Wakelock:Landroid/os/PowerManager$WakeLock;

    .line 74
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionReactiveAlert;->mReactiveAlert_Wakelock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 76
    :cond_0
    new-instance v0, Landroid/hardware/motion/MotionRecognitionReactiveAlert$PollIntThread;

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionReactiveAlert;->mMsgHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Landroid/hardware/motion/MotionRecognitionReactiveAlert$PollIntThread;-><init>(Landroid/hardware/motion/MotionRecognitionReactiveAlert;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionReactiveAlert;->mPollThread:Landroid/hardware/motion/MotionRecognitionReactiveAlert$PollIntThread;

    .line 77
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionReactiveAlert;->mPollThread:Landroid/hardware/motion/MotionRecognitionReactiveAlert$PollIntThread;

    invoke-virtual {v0}, Landroid/hardware/motion/MotionRecognitionReactiveAlert$PollIntThread;->start()V

    .line 79
    :cond_1
    return-void
.end method

.method public abstract sendMotionReactiveAlert(I)V
.end method

.method public setAccIntStatus(I)V
    .locals 5
    .param p1, "status"    # I

    .prologue
    const-wide/16 v3, 0x0

    const/16 v2, 0x1e

    .line 271
    if-ne p1, v2, :cond_1

    .line 273
    iget-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionReactiveAlert;->mEnableAccINT:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 274
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionReactiveAlert;->mPollThread:Landroid/hardware/motion/MotionRecognitionReactiveAlert$PollIntThread;

    iget-object v0, v0, Landroid/hardware/motion/MotionRecognitionReactiveAlert$PollIntThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionReactiveAlert;->mPollThread:Landroid/hardware/motion/MotionRecognitionReactiveAlert$PollIntThread;

    iget-object v0, v0, Landroid/hardware/motion/MotionRecognitionReactiveAlert$PollIntThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
