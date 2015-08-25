.class public Lcom/sec/android/smartface/SmartFaceManager;
.super Ljava/lang/Object;
.source "SmartFaceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/smartface/SmartFaceManager$SmartFaceInfoListener2;,
        Lcom/sec/android/smartface/SmartFaceManager$SmartFaceInfoListener;,
        Lcom/sec/android/smartface/SmartFaceManager$EventHandler;,
        Lcom/sec/android/smartface/SmartFaceManager$SmartFaceClient;
    }
.end annotation


# static fields
.field public static final FALSE:Ljava/lang/String; = "false"

.field public static final FEATURE_SMART_PAUSE:Ljava/lang/String; = "com.sec.android.smartface.smart_pause"

.field public static final FEATURE_SMART_ROTATION:Ljava/lang/String; = "com.sec.android.smartface.smart_rotation"

.field public static final FEATURE_SMART_SCROLL:Ljava/lang/String; = "com.sec.android.smartface.smart_scroll"

.field public static final FEATURE_SMART_STAY:Ljava/lang/String; = "com.sec.android.smartface.smart_stay"

.field public static final MSG_FACEINFO:I = 0x0

.field public static final MSG_REGISTERED:I = 0x1

.field public static final MSG_UNREGISTERED:I = 0x2

.field private static final NULL_VALUE:Ljava/lang/String; = ""

.field public static final PAGE_BOTTOM:Ljava/lang/String; = "1"

.field public static final PAGE_MIDDLE:Ljava/lang/String; = "0"

.field public static final PAGE_TOP:Ljava/lang/String; = "-1"

.field public static final PAUSE_THIS_CLIENT:Ljava/lang/String; = "paused-state"

.field public static final SERVICETYPE_HYBRID:I = 0x20

.field public static final SERVICETYPE_MOTION:I = 0x10

.field public static final SERVICETYPE_PAUSE:I = 0x2

.field public static final SERVICETYPE_ROTATION:I = 0x8

.field public static final SERVICETYPE_SCROLL:I = 0x1

.field public static final SERVICETYPE_STAY:I = 0x4

.field public static final SMARTFACE_SERVICE:Ljava/lang/String; = "samsung.smartfaceservice"

.field public static final SMART_ROTATION_UI_ORIENTATION:Ljava/lang/String; = "smart-rotation-ui-orientation"

.field public static final SMART_SCREEN_DUMP_PREVIEW:Ljava/lang/String; = "smart-screen-dump"

.field public static final SMART_SCROLL_PAGE_STATUS:Ljava/lang/String; = "smart-scroll-page-status"

.field public static final SMART_STAY_FRAMECOUNT_RESET:Ljava/lang/String; = "smart-stay-framecount-reset"

.field private static final TAG:Ljava/lang/String; = "SmartFaceManager"

.field public static final TRUE:Ljava/lang/String; = "true"


# instance fields
.field private final complete:Ljava/util/concurrent/locks/Condition;

.field private final lock:Ljava/util/concurrent/locks/Lock;

.field private mCallbackData:I

.field private mClient:Lcom/sec/android/smartface/SmartFaceManager$SmartFaceClient;

.field private mEventHandler:Lcom/sec/android/smartface/SmartFaceManager$EventHandler;

.field private mListener:Lcom/sec/android/smartface/SmartFaceManager$SmartFaceInfoListener;

.field private mService:Lcom/sec/android/smartface/ISmartFaceService;

.field private mSmartStayDelay:I


# direct methods
.method private constructor <init>(Lcom/sec/android/smartface/ISmartFaceService;)V
    .locals 3
    .param p1, "service"    # Lcom/sec/android/smartface/ISmartFaceService;

    .prologue
    const/4 v2, 0x0

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object v2, p0, Lcom/sec/android/smartface/SmartFaceManager;->mService:Lcom/sec/android/smartface/ISmartFaceService;

    .line 152
    iput-object v2, p0, Lcom/sec/android/smartface/SmartFaceManager;->mClient:Lcom/sec/android/smartface/SmartFaceManager$SmartFaceClient;

    .line 153
    iput-object v2, p0, Lcom/sec/android/smartface/SmartFaceManager;->mListener:Lcom/sec/android/smartface/SmartFaceManager$SmartFaceInfoListener;

    .line 154
    iput-object v2, p0, Lcom/sec/android/smartface/SmartFaceManager;->mEventHandler:Lcom/sec/android/smartface/SmartFaceManager$EventHandler;

    .line 156
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/sec/android/smartface/SmartFaceManager;->lock:Ljava/util/concurrent/locks/Lock;

    .line 157
    iget-object v1, p0, Lcom/sec/android/smartface/SmartFaceManager;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/smartface/SmartFaceManager;->complete:Ljava/util/concurrent/locks/Condition;

    .line 160
    const-string v1, "2950"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/smartface/SmartFaceManager;->mSmartStayDelay:I

    .line 189
    iput-object p1, p0, Lcom/sec/android/smartface/SmartFaceManager;->mService:Lcom/sec/android/smartface/ISmartFaceService;

    .line 190
    new-instance v1, Lcom/sec/android/smartface/SmartFaceManager$SmartFaceClient;

    invoke-direct {v1, p0}, Lcom/sec/android/smartface/SmartFaceManager$SmartFaceClient;-><init>(Lcom/sec/android/smartface/SmartFaceManager;)V

    iput-object v1, p0, Lcom/sec/android/smartface/SmartFaceManager;->mClient:Lcom/sec/android/smartface/SmartFaceManager$SmartFaceClient;

    .line 193
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 194
    new-instance v1, Lcom/sec/android/smartface/SmartFaceManager$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Lcom/sec/android/smartface/SmartFaceManager$EventHandler;-><init>(Lcom/sec/android/smartface/SmartFaceManager;Lcom/sec/android/smartface/SmartFaceManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/android/smartface/SmartFaceManager;->mEventHandler:Lcom/sec/android/smartface/SmartFaceManager$EventHandler;

    .line 200
    :goto_0
    return-void

    .line 195
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 196
    new-instance v1, Lcom/sec/android/smartface/SmartFaceManager$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Lcom/sec/android/smartface/SmartFaceManager$EventHandler;-><init>(Lcom/sec/android/smartface/SmartFaceManager;Lcom/sec/android/smartface/SmartFaceManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/android/smartface/SmartFaceManager;->mEventHandler:Lcom/sec/android/smartface/SmartFaceManager$EventHandler;

    goto :goto_0

    .line 198
    :cond_1
    iput-object v2, p0, Lcom/sec/android/smartface/SmartFaceManager;->mEventHandler:Lcom/sec/android/smartface/SmartFaceManager$EventHandler;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/smartface/SmartFaceManager;)Ljava/util/concurrent/locks/Lock;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/smartface/SmartFaceManager;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sec/android/smartface/SmartFaceManager;->lock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/smartface/SmartFaceManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/smartface/SmartFaceManager;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/sec/android/smartface/SmartFaceManager;->mCallbackData:I

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/smartface/SmartFaceManager;)Ljava/util/concurrent/locks/Condition;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/smartface/SmartFaceManager;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sec/android/smartface/SmartFaceManager;->complete:Ljava/util/concurrent/locks/Condition;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/smartface/SmartFaceManager;)Lcom/sec/android/smartface/SmartFaceManager$EventHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/smartface/SmartFaceManager;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sec/android/smartface/SmartFaceManager;->mEventHandler:Lcom/sec/android/smartface/SmartFaceManager$EventHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/smartface/SmartFaceManager;)Lcom/sec/android/smartface/SmartFaceManager$SmartFaceInfoListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/smartface/SmartFaceManager;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sec/android/smartface/SmartFaceManager;->mListener:Lcom/sec/android/smartface/SmartFaceManager$SmartFaceInfoListener;

    return-object v0
.end method

.method public static getSmartFaceManager()Lcom/sec/android/smartface/SmartFaceManager;
    .locals 5

    .prologue
    .line 170
    const-string/jumbo v3, "samsung.smartfaceservice"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 172
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 173
    const-string v3, "SmartFaceManager"

    const-string v4, "Fail binding the service. SmartFaceService may not be running properly."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/4 v1, 0x0

    .line 180
    :goto_0
    return-object v1

    .line 177
    :cond_0
    invoke-static {v0}, Lcom/sec/android/smartface/ISmartFaceService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/smartface/ISmartFaceService;

    move-result-object v2

    .line 178
    .local v2, "service":Lcom/sec/android/smartface/ISmartFaceService;
    new-instance v1, Lcom/sec/android/smartface/SmartFaceManager;

    invoke-direct {v1, v2}, Lcom/sec/android/smartface/SmartFaceManager;-><init>(Lcom/sec/android/smartface/ISmartFaceService;)V

    .line 179
    .local v1, "pm":Lcom/sec/android/smartface/SmartFaceManager;
    const-string v3, "SmartFaceManager"

    const-string v4, "A new instance of SmartFaceManager is created"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private waitForCallback(I)J
    .locals 7
    .param p1, "wait_milli"    # I

    .prologue
    .line 493
    const-wide/16 v0, -0x1

    .line 496
    .local v0, "ret":J
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/smartface/SmartFaceManager;->complete:Ljava/util/concurrent/locks/Condition;

    mul-int/lit16 v3, p1, 0x3e8

    int-to-long v3, v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    invoke-interface {v2, v3, v4}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    const-string v2, "SmartFaceManager"

    const-string v3, "No Callback!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    :cond_0
    :goto_0
    return-wide v0

    .line 498
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public checkForSmartRotation(I)Z
    .locals 5
    .param p1, "orientation"    # I

    .prologue
    .line 381
    const-string v2, "SmartFaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkForSmartRotation S: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const/4 v0, 0x0

    .line 384
    .local v0, "ret":Z
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "Smart Rotation Wait Thread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 385
    .local v1, "thread1":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 387
    new-instance v2, Lcom/sec/android/smartface/SmartFaceManager$EventHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, p0, v3}, Lcom/sec/android/smartface/SmartFaceManager$EventHandler;-><init>(Lcom/sec/android/smartface/SmartFaceManager;Lcom/sec/android/smartface/SmartFaceManager;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/sec/android/smartface/SmartFaceManager;->mEventHandler:Lcom/sec/android/smartface/SmartFaceManager$EventHandler;

    .line 389
    new-instance v2, Lcom/sec/android/smartface/SmartFaceManager$2;

    invoke-direct {v2, p0}, Lcom/sec/android/smartface/SmartFaceManager$2;-><init>(Lcom/sec/android/smartface/SmartFaceManager;)V

    invoke-virtual {p0, v2}, Lcom/sec/android/smartface/SmartFaceManager;->setListener(Lcom/sec/android/smartface/SmartFaceManager$SmartFaceInfoListener;)V

    .line 405
    iget-object v2, p0, Lcom/sec/android/smartface/SmartFaceManager;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 409
    :try_start_0
    const-string/jumbo v2, "smart-rotation-ui-orientation"

    invoke-virtual {p0, v2, p1}, Lcom/sec/android/smartface/SmartFaceManager;->setValue(Ljava/lang/String;I)V

    .line 410
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/sec/android/smartface/SmartFaceManager;->start(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 412
    const/4 v2, -0x1

    iput v2, p0, Lcom/sec/android/smartface/SmartFaceManager;->mCallbackData:I

    .line 413
    const/16 v2, 0x1f4

    invoke-direct {p0, v2}, Lcom/sec/android/smartface/SmartFaceManager;->waitForCallback(I)J

    .line 414
    iget v2, p0, Lcom/sec/android/smartface/SmartFaceManager;->mCallbackData:I

    if-lez v2, :cond_0

    const/4 v0, 0x1

    .line 417
    :cond_0
    const/4 v2, -0x1

    iput v2, p0, Lcom/sec/android/smartface/SmartFaceManager;->mCallbackData:I

    .line 418
    const/16 v2, 0x1f4

    invoke-direct {p0, v2}, Lcom/sec/android/smartface/SmartFaceManager;->waitForCallback(I)J

    .line 419
    iget v2, p0, Lcom/sec/android/smartface/SmartFaceManager;->mCallbackData:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v2, :cond_1

    const/4 v0, 0x1

    .line 424
    :cond_1
    iget-object v2, p0, Lcom/sec/android/smartface/SmartFaceManager;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 427
    invoke-virtual {p0}, Lcom/sec/android/smartface/SmartFaceManager;->stop()V

    .line 429
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 431
    const-string v2, "SmartFaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkForSmartRotation E: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    return v0

    .line 424
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/sec/android/smartface/SmartFaceManager;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2
.end method

.method public checkForSmartStay()Z
    .locals 5

    .prologue
    .line 318
    const-string v2, "SmartFaceManager"

    const-string v3, "checkForSmartStay S"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const/4 v0, 0x0

    .line 321
    .local v0, "ret":Z
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "Smart Stay Wait Thread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 322
    .local v1, "thread1":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 324
    new-instance v2, Lcom/sec/android/smartface/SmartFaceManager$EventHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, p0, v3}, Lcom/sec/android/smartface/SmartFaceManager$EventHandler;-><init>(Lcom/sec/android/smartface/SmartFaceManager;Lcom/sec/android/smartface/SmartFaceManager;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/sec/android/smartface/SmartFaceManager;->mEventHandler:Lcom/sec/android/smartface/SmartFaceManager$EventHandler;

    .line 326
    new-instance v2, Lcom/sec/android/smartface/SmartFaceManager$1;

    invoke-direct {v2, p0}, Lcom/sec/android/smartface/SmartFaceManager$1;-><init>(Lcom/sec/android/smartface/SmartFaceManager;)V

    invoke-virtual {p0, v2}, Lcom/sec/android/smartface/SmartFaceManager;->setListener(Lcom/sec/android/smartface/SmartFaceManager$SmartFaceInfoListener;)V

    .line 342
    iget-object v2, p0, Lcom/sec/android/smartface/SmartFaceManager;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 346
    :try_start_0
    const-string/jumbo v2, "smart-stay-framecount-reset"

    const-string v3, ""

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/smartface/SmartFaceManager;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/sec/android/smartface/SmartFaceManager;->start(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 349
    const/4 v2, -0x1

    iput v2, p0, Lcom/sec/android/smartface/SmartFaceManager;->mCallbackData:I

    .line 350
    const v2, 0x3edc28f6    # 0.43f

    iget v3, p0, Lcom/sec/android/smartface/SmartFaceManager;->mSmartStayDelay:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {p0, v2}, Lcom/sec/android/smartface/SmartFaceManager;->waitForCallback(I)J

    .line 351
    iget v2, p0, Lcom/sec/android/smartface/SmartFaceManager;->mCallbackData:I

    if-lez v2, :cond_0

    const/4 v0, 0x1

    .line 354
    :cond_0
    const/4 v2, -0x1

    iput v2, p0, Lcom/sec/android/smartface/SmartFaceManager;->mCallbackData:I

    .line 355
    const v2, 0x3ebd70a4    # 0.37f

    iget v3, p0, Lcom/sec/android/smartface/SmartFaceManager;->mSmartStayDelay:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {p0, v2}, Lcom/sec/android/smartface/SmartFaceManager;->waitForCallback(I)J

    .line 356
    iget v2, p0, Lcom/sec/android/smartface/SmartFaceManager;->mCallbackData:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v2, :cond_1

    const/4 v0, 0x1

    .line 361
    :cond_1
    iget-object v2, p0, Lcom/sec/android/smartface/SmartFaceManager;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 364
    invoke-virtual {p0}, Lcom/sec/android/smartface/SmartFaceManager;->stop()V

    .line 366
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 368
    const-string v2, "SmartFaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkForSmartStay X: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    return v0

    .line 361
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/sec/android/smartface/SmartFaceManager;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2
.end method

.method public getSupportedServices()I
    .locals 3

    .prologue
    .line 442
    const/4 v1, 0x0

    .line 444
    .local v1, "ret":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/smartface/SmartFaceManager;->mService:Lcom/sec/android/smartface/ISmartFaceService;

    invoke-interface {v2}, Lcom/sec/android/smartface/ISmartFaceService;->getSupportedServices()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 450
    :goto_0
    return v1

    .line 445
    :catch_0
    move-exception v0

    .line 446
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 447
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 275
    const-string/jumbo v0, "paused-state"

    const-string/jumbo v1, "true"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/smartface/SmartFaceManager;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/sec/android/smartface/SmartFaceManager;->mEventHandler:Lcom/sec/android/smartface/SmartFaceManager$EventHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/smartface/SmartFaceManager;->mEventHandler:Lcom/sec/android/smartface/SmartFaceManager$EventHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 277
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 284
    const-string/jumbo v0, "paused-state"

    const-string v1, "false"

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/smartface/SmartFaceManager;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    return-void
.end method

.method public setListener(Lcom/sec/android/smartface/SmartFaceManager$SmartFaceInfoListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sec/android/smartface/SmartFaceManager$SmartFaceInfoListener;

    .prologue
    .line 462
    iput-object p1, p0, Lcom/sec/android/smartface/SmartFaceManager;->mListener:Lcom/sec/android/smartface/SmartFaceManager$SmartFaceInfoListener;

    .line 463
    return-void
.end method

.method public setValue(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 292
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/smartface/SmartFaceManager;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 300
    const-string v1, "SmartFaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/smartface/SmartFaceManager;->mService:Lcom/sec/android/smartface/ISmartFaceService;

    iget-object v2, p0, Lcom/sec/android/smartface/SmartFaceManager;->mClient:Lcom/sec/android/smartface/SmartFaceManager$SmartFaceClient;

    invoke-interface {v1, v2, p1, p2}, Lcom/sec/android/smartface/ISmartFaceService;->setValue(Lcom/sec/android/smartface/ISmartFaceClient;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    :goto_0
    return-void

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public start(I)Z
    .locals 4
    .param p1, "service_type"    # I

    .prologue
    .line 214
    const/4 v1, 0x0

    .line 216
    .local v1, "ret":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/smartface/SmartFaceManager;->mService:Lcom/sec/android/smartface/ISmartFaceService;

    iget-object v3, p0, Lcom/sec/android/smartface/SmartFaceManager;->mClient:Lcom/sec/android/smartface/SmartFaceManager$SmartFaceClient;

    invoke-interface {v2, v3, p1}, Lcom/sec/android/smartface/ISmartFaceService;->register(Lcom/sec/android/smartface/ISmartFaceClient;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 221
    :goto_0
    return v1

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public startAsync(I)V
    .locals 3
    .param p1, "service_type"    # I

    .prologue
    .line 234
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/smartface/SmartFaceManager;->mService:Lcom/sec/android/smartface/ISmartFaceService;

    iget-object v2, p0, Lcom/sec/android/smartface/SmartFaceManager;->mClient:Lcom/sec/android/smartface/SmartFaceManager$SmartFaceClient;

    invoke-interface {v1, v2, p1}, Lcom/sec/android/smartface/ISmartFaceService;->registerAsync(Lcom/sec/android/smartface/ISmartFaceClient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :goto_0
    return-void

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 247
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/smartface/SmartFaceManager;->mService:Lcom/sec/android/smartface/ISmartFaceService;

    iget-object v2, p0, Lcom/sec/android/smartface/SmartFaceManager;->mClient:Lcom/sec/android/smartface/SmartFaceManager$SmartFaceClient;

    invoke-interface {v1, v2}, Lcom/sec/android/smartface/ISmartFaceService;->unregister(Lcom/sec/android/smartface/ISmartFaceClient;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :goto_0
    iget-object v1, p0, Lcom/sec/android/smartface/SmartFaceManager;->mEventHandler:Lcom/sec/android/smartface/SmartFaceManager$EventHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/smartface/SmartFaceManager;->mEventHandler:Lcom/sec/android/smartface/SmartFaceManager$EventHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 253
    :cond_0
    return-void

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public stopAsync()V
    .locals 3

    .prologue
    .line 262
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/smartface/SmartFaceManager;->mService:Lcom/sec/android/smartface/ISmartFaceService;

    iget-object v2, p0, Lcom/sec/android/smartface/SmartFaceManager;->mClient:Lcom/sec/android/smartface/SmartFaceManager$SmartFaceClient;

    invoke-interface {v1, v2}, Lcom/sec/android/smartface/ISmartFaceService;->unregisterAsync(Lcom/sec/android/smartface/ISmartFaceClient;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :goto_0
    iget-object v1, p0, Lcom/sec/android/smartface/SmartFaceManager;->mEventHandler:Lcom/sec/android/smartface/SmartFaceManager$EventHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/smartface/SmartFaceManager;->mEventHandler:Lcom/sec/android/smartface/SmartFaceManager$EventHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 268
    :cond_0
    return-void

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
