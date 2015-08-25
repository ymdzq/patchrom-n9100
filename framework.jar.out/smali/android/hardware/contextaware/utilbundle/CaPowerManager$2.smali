.class Landroid/hardware/contextaware/utilbundle/CaPowerManager$2;
.super Landroid/os/Handler;
.source "CaPowerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/utilbundle/CaPowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/contextaware/utilbundle/CaPowerManager;


# direct methods
.method constructor <init>(Landroid/hardware/contextaware/utilbundle/CaPowerManager;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager$2;->this$0:Landroid/hardware/contextaware/utilbundle/CaPowerManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v5, -0x2e

    const/16 v4, -0x2f

    .line 170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 172
    .local v0, "timeStamp":J
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x1001

    if-ne v2, v3, :cond_1

    .line 174
    const-string v2, "context is null"

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x1002

    if-ne v2, v3, :cond_2

    .line 177
    const-string v2, "intent is null"

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :cond_2
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x1003

    if-ne v2, v3, :cond_3

    .line 180
    const-string v2, "AP_SLEEP"

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 181
    iget-object v2, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager$2;->this$0:Landroid/hardware/contextaware/utilbundle/CaPowerManager;

    invoke-virtual {v2, v5, v0, v1}, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->notifyApPowerObserver(IJ)V

    .line 182
    iget-object v2, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager$2;->this$0:Landroid/hardware/contextaware/utilbundle/CaPowerManager;

    # invokes: Landroid/hardware/contextaware/utilbundle/CaPowerManager;->sendApStatusToSensorHub(I)V
    invoke-static {v2, v5}, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->access$100(Landroid/hardware/contextaware/utilbundle/CaPowerManager;I)V

    .line 183
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/CaTimeManager;->getInstance()Landroid/hardware/contextaware/utilbundle/CaTimeManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/contextaware/utilbundle/CaTimeManager;->sendCurTimeToSensorHub()V

    goto :goto_0

    .line 184
    :cond_3
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x1004

    if-ne v2, v3, :cond_4

    .line 186
    const-string v2, "AP_WAKEUP"

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 187
    iget-object v2, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager$2;->this$0:Landroid/hardware/contextaware/utilbundle/CaPowerManager;

    invoke-virtual {v2, v4, v0, v1}, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->notifyApPowerObserver(IJ)V

    .line 188
    iget-object v2, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager$2;->this$0:Landroid/hardware/contextaware/utilbundle/CaPowerManager;

    # invokes: Landroid/hardware/contextaware/utilbundle/CaPowerManager;->sendApStatusToSensorHub(I)V
    invoke-static {v2, v4}, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->access$100(Landroid/hardware/contextaware/utilbundle/CaPowerManager;I)V

    goto :goto_0

    .line 189
    :cond_4
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x1005

    if-ne v2, v3, :cond_5

    .line 191
    const-string v2, "POWER_CONNECTED"

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 192
    iget-object v2, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager$2;->this$0:Landroid/hardware/contextaware/utilbundle/CaPowerManager;

    const/16 v3, -0x2a

    # invokes: Landroid/hardware/contextaware/utilbundle/CaPowerManager;->sendApStatusToSensorHub(I)V
    invoke-static {v2, v3}, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->access$100(Landroid/hardware/contextaware/utilbundle/CaPowerManager;I)V

    goto :goto_0

    .line 193
    :cond_5
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x1006

    if-ne v2, v3, :cond_0

    .line 195
    const-string v2, "POWER_DISCONNECTED"

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 196
    iget-object v2, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager$2;->this$0:Landroid/hardware/contextaware/utilbundle/CaPowerManager;

    const/16 v3, -0x29

    # invokes: Landroid/hardware/contextaware/utilbundle/CaPowerManager;->sendApStatusToSensorHub(I)V
    invoke-static {v2, v3}, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->access$100(Landroid/hardware/contextaware/utilbundle/CaPowerManager;I)V

    goto :goto_0
.end method
