.class Lcom/android/server/VRManagerService$VRServiceConnection;
.super Ljava/lang/Object;
.source "VRManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VRManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VRServiceConnection"
.end annotation


# instance fields
.field public mBinder:Landroid/os/IBinder;

.field public mBound:Z

.field public mConnected:Z

.field public q:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/android/internal/app/IVRManagerService;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/VRManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/VRManagerService;)V
    .locals 2

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/server/VRManagerService$VRServiceConnection;->this$0:Lcom/android/server/VRManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/VRManagerService$VRServiceConnection;->q:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/VRManagerService;Lcom/android/server/VRManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/VRManagerService;
    .param p2, "x1"    # Lcom/android/server/VRManagerService$1;

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/android/server/VRManagerService$VRServiceConnection;-><init>(Lcom/android/server/VRManagerService;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 144
    const-string v1, "VRManagerService"

    const-string v2, "onServiceConnected()"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :try_start_0
    iput-object p2, p0, Lcom/android/server/VRManagerService$VRServiceConnection;->mBinder:Landroid/os/IBinder;

    .line 147
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/VRManagerService$VRServiceConnection;->mConnected:Z

    .line 148
    invoke-static {p2}, Lcom/android/internal/app/IVRManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVRManagerService;

    move-result-object v0

    .line 149
    .local v0, "vrService":Lcom/android/internal/app/IVRManagerService;
    iget-object v1, p0, Lcom/android/server/VRManagerService$VRServiceConnection;->q:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v0    # "vrService":Lcom/android/internal/app/IVRManagerService;
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x0

    .line 156
    const-string v0, "VRManagerService"

    const-string v1, "onServiceDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/VRManagerService$VRServiceConnection;->mBinder:Landroid/os/IBinder;

    .line 158
    iput-boolean v2, p0, Lcom/android/server/VRManagerService$VRServiceConnection;->mConnected:Z

    .line 159
    iput-boolean v2, p0, Lcom/android/server/VRManagerService$VRServiceConnection;->mBound:Z

    .line 160
    return-void
.end method
