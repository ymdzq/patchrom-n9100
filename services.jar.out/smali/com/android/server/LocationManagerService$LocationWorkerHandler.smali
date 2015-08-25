.class Lcom/android/server/LocationManagerService$LocationWorkerHandler;
.super Landroid/os/Handler;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationWorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/LocationManagerService;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2416
    iput-object p1, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    .line 2417
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 2418
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2422
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 2451
    :goto_0
    :pswitch_0
    return-void

    .line 2425
    :pswitch_1
    # getter for: Lcom/android/server/LocationManagerService;->DBG:Z
    invoke-static {}, Lcom/android/server/LocationManagerService;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2429
    :cond_0
    iget-object v3, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/location/Location;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v1, :cond_1

    :goto_1
    # invokes: Lcom/android/server/LocationManagerService;->handleLocationChanged(Landroid/location/Location;Z)V
    invoke-static {v3, v0, v1}, Lcom/android/server/LocationManagerService;->access$1700(Lcom/android/server/LocationManagerService;Landroid/location/Location;Z)V

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    .line 2433
    :pswitch_2
    # getter for: Lcom/android/server/LocationManagerService;->DBG:Z
    invoke-static {}, Lcom/android/server/LocationManagerService;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2436
    :cond_2
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    iput-boolean v2, v0, Lcom/android/server/LocationManagerService;->mSendLocationBroadcast:Z

    goto :goto_0

    .line 2440
    :pswitch_3
    # getter for: Lcom/android/server/LocationManagerService;->DBG:Z
    invoke-static {}, Lcom/android/server/LocationManagerService;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2441
    const-string v0, "LocationManagerService"

    const-string v1, "MESSAGE_SEND_BROADCAST_REQ_CELL_INFO_UPDATE"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2443
    :cond_3
    iget-object v0, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    const-string v1, "network"

    # invokes: Lcom/android/server/LocationManagerService;->applyRequirementsLocked(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/LocationManagerService;->access$1800(Lcom/android/server/LocationManagerService;Ljava/lang/String;)V

    goto :goto_0

    .line 2422
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
