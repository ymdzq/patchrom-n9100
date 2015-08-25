.class public Lcom/android/server/SecSCService;
.super Landroid/app/Service;
.source "SecSCService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SecSCService$ServiceHandler;
    }
.end annotation


# static fields
.field private static final DATE_FORMAT:Ljava/text/DateFormat;

.field public static final SEC_SC_BOOT_COMPLETE:I = 0x1

.field public static final SEC_SC_GOT_DATA_CONNECTION:I = 0x2

.field public static final SEC_SC_GOT_NITZ:I = 0x3

.field private static final SEC_SC_LIMIT_TIME:I = 0x1388

.field private static final SEC_SC_NTP_SERVER:Ljava/lang/String; = "pool.ntp.org"

.field private static final TAG:Ljava/lang/String; = "SecSCService"


# instance fields
.field private mServiceHandler:Lcom/android/server/SecSCService$ServiceHandler;

.field private mServiceLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 136
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "z yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/SecSCService;->DATE_FORMAT:Ljava/text/DateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 160
    return-void
.end method

.method private static native SecSC_bootComplete()V
.end method

.method private static native SecSC_createTempFile()V
.end method

.method private static native SecSC_deleteFile()V
.end method

.method private static native SecSC_deleteTempFile()V
.end method

.method private SecSC_handleConnectivityStateChanged()V
    .locals 3

    .prologue
    .line 417
    new-instance v2, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 419
    .local v1, "policy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 421
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 423
    .local v0, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/android/server/SecSCService$1;

    invoke-direct {v2, p0}, Lcom/android/server/SecSCService$1;-><init>(Lcom/android/server/SecSCService;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 459
    return-void
.end method

.method private static native SecSC_nitzReceived(JJ)V
.end method

.method private static native SecSC_ntpReceived(JJ)V
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 130
    invoke-static {}, Lcom/android/server/SecSCService;->SecSC_bootComplete()V

    return-void
.end method

.method static synthetic access$100()V
    .locals 0

    .prologue
    .line 130
    invoke-static {}, Lcom/android/server/SecSCService;->SecSC_createTempFile()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/SecSCService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SecSCService;

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/android/server/SecSCService;->SecSC_handleConnectivityStateChanged()V

    return-void
.end method

.method static synthetic access$300(JJ)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # J

    .prologue
    .line 130
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/SecSCService;->SecSC_nitzReceived(JJ)V

    return-void
.end method


# virtual methods
.method public SecSC_handleNitzTimeUpdation()V
    .locals 4

    .prologue
    .line 479
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 481
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/android/server/SecSCService$2;

    invoke-direct {v1, p0}, Lcom/android/server/SecSCService$2;-><init>(Lcom/android/server/SecSCService;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 505
    return-void
.end method

.method public SecSC_onNetworkStateChanged(JJ)V
    .locals 3
    .param p1, "networktime"    # J
    .param p3, "recvelapsedtime"    # J

    .prologue
    const-wide/16 v1, 0x0

    .line 465
    cmp-long v0, p1, v1

    if-lez v0, :cond_0

    cmp-long v0, p3, v1

    if-lez v0, :cond_0

    .line 467
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/SecSCService;->SecSC_ntpReceived(JJ)V

    .line 471
    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 385
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 291
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ServiceStartArguments"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 295
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 301
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SecSCService;->mServiceLooper:Landroid/os/Looper;

    .line 303
    new-instance v1, Lcom/android/server/SecSCService$ServiceHandler;

    iget-object v2, p0, Lcom/android/server/SecSCService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/android/server/SecSCService$ServiceHandler;-><init>(Lcom/android/server/SecSCService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/SecSCService;->mServiceHandler:Lcom/android/server/SecSCService$ServiceHandler;

    .line 305
    const-string v1, "SecSC"

    const-string v2, "SecSCService oncreate call"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-static {}, Lcom/android/server/SecSCService;->SecSC_deleteFile()V

    .line 310
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 397
    return-void
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 407
    const-string v0, "SecSCService"

    const-string v1, "DrmEventService : OnLowMemory....Save the Phone"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    .line 411
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v3, 0x1

    .line 325
    const-string v1, "SecSC"

    const-string v2, "SecSCService onStartCommand call"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-static {}, Lcom/android/server/SecSCService;->SecSC_deleteFile()V

    .line 329
    iget-object v1, p0, Lcom/android/server/SecSCService;->mServiceHandler:Lcom/android/server/SecSCService$ServiceHandler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 331
    .local v0, "msg":Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 333
    if-eqz p1, :cond_0

    .line 337
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 341
    iput v3, v0, Landroid/os/Message;->what:I

    .line 369
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/SecSCService;->mServiceHandler:Lcom/android/server/SecSCService$ServiceHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 373
    return v3

    .line 345
    :cond_1
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 349
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_0

    .line 353
    :cond_2
    const-string v1, "android.intent.action.NITZ_SET_TIME"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 355
    const-string v1, "SecSC"

    const-string v2, "Current action is nitz set time"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_0

    .line 363
    :cond_3
    const-string v1, "SecSC"

    const-string v2, "Code should not reach here"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
