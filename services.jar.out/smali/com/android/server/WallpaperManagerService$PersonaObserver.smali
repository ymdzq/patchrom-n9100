.class Lcom/android/server/WallpaperManagerService$PersonaObserver;
.super Landroid/content/pm/IPersonaObserver$Stub;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PersonaObserver"
.end annotation


# instance fields
.field private kioskmode:Z

.field private mContainerId:I

.field final synthetic this$0:Lcom/android/server/WallpaperManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/WallpaperManagerService;I)V
    .locals 1
    .param p2, "userId"    # I

    .prologue
    .line 2379
    iput-object p1, p0, Lcom/android/server/WallpaperManagerService$PersonaObserver;->this$0:Lcom/android/server/WallpaperManagerService;

    invoke-direct {p0}, Landroid/content/pm/IPersonaObserver$Stub;-><init>()V

    .line 2375
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/WallpaperManagerService$PersonaObserver;->mContainerId:I

    .line 2377
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/WallpaperManagerService$PersonaObserver;->kioskmode:Z

    .line 2380
    iput p2, p0, Lcom/android/server/WallpaperManagerService$PersonaObserver;->mContainerId:I

    .line 2381
    return-void
.end method

.method static synthetic access$702(Lcom/android/server/WallpaperManagerService$PersonaObserver;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/WallpaperManagerService$PersonaObserver;
    .param p1, "x1"    # Z

    .prologue
    .line 2374
    iput-boolean p1, p0, Lcom/android/server/WallpaperManagerService$PersonaObserver;->kioskmode:Z

    return p1
.end method


# virtual methods
.method public onFirstBoot()V
    .locals 2

    .prologue
    .line 2411
    const-string v0, "WallpaperService"

    const-string v1, "PersonaObserver.onFirstBoot()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2412
    return-void
.end method

.method public onInit()V
    .locals 2

    .prologue
    .line 2406
    const-string v0, "WallpaperService"

    const-string v1, "PersonaObserver.onInit()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2407
    return-void
.end method

.method public onKeyGuardStateChanged(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 2426
    return-void
.end method

.method public onPersonaSwitch()V
    .locals 4

    .prologue
    .line 2385
    const-string v1, "WallpaperService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PersonaObserver.onPersonaSwitch() handler container "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/WallpaperManagerService$PersonaObserver;->mContainerId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2386
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService$PersonaObserver;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v1, v1, Lcom/android/server/WallpaperManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2387
    .local v0, "msg":Landroid/os/Message;
    iget v1, p0, Lcom/android/server/WallpaperManagerService$PersonaObserver;->mContainerId:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2394
    iget-boolean v1, p0, Lcom/android/server/WallpaperManagerService$PersonaObserver;->kioskmode:Z

    if-eqz v1, :cond_0

    .line 2395
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService$PersonaObserver;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v1, v1, Lcom/android/server/WallpaperManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 2396
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/WallpaperManagerService$PersonaObserver;->kioskmode:Z

    .line 2402
    :goto_0
    return-void

    .line 2398
    :cond_0
    iget-object v1, p0, Lcom/android/server/WallpaperManagerService$PersonaObserver;->this$0:Lcom/android/server/WallpaperManagerService;

    iget-object v1, v1, Lcom/android/server/WallpaperManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onSessionExpired()V
    .locals 2

    .prologue
    .line 2416
    const-string v0, "WallpaperService"

    const-string v1, "PersonaObserver.onSessionExpired()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2417
    return-void
.end method

.method public onStateChange(II)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "oldState"    # I

    .prologue
    .line 2421
    return-void
.end method
