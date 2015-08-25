.class final Lcom/android/server/PVPlayReadyService$ServiceHandler;
.super Landroid/os/Handler;
.source "PVPlayReadyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PVPlayReadyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PVPlayReadyService;


# direct methods
.method public constructor <init>(Lcom/android/server/PVPlayReadyService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/server/PVPlayReadyService$ServiceHandler;->this$0:Lcom/android/server/PVPlayReadyService;

    .line 84
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 85
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 90
    const-string v0, "DCM"

    const-string/jumbo v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 113
    const-string v0, "PVPLayReadyService"

    const-string v1, "In default"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 94
    :pswitch_0
    # invokes: Lcom/android/server/PVPlayReadyService;->bootComplete()V
    invoke-static {}, Lcom/android/server/PVPlayReadyService;->access$000()V

    goto :goto_0

    .line 99
    :pswitch_1
    const-string v0, "PVPLayReadyService"

    const-string v1, "handle connectivity time updation start"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/android/server/PVPlayReadyService$ServiceHandler;->this$0:Lcom/android/server/PVPlayReadyService;

    # invokes: Lcom/android/server/PVPlayReadyService;->handleConnectivityStateChanged()V
    invoke-static {v0}, Lcom/android/server/PVPlayReadyService;->access$100(Lcom/android/server/PVPlayReadyService;)V

    .line 101
    const-string v0, "PVPLayReadyService"

    const-string v1, "handle connectivity time updation end"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 106
    :pswitch_2
    const-string v0, "PVPLayReadyService"

    const-string v1, "handle nitz time updation start"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/android/server/PVPlayReadyService$ServiceHandler;->this$0:Lcom/android/server/PVPlayReadyService;

    invoke-virtual {v0}, Lcom/android/server/PVPlayReadyService;->handleNitzTimeUpdation()V

    .line 108
    const-string v0, "PVPLayReadyService"

    const-string v1, "handle nitz time updation end"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 91
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
