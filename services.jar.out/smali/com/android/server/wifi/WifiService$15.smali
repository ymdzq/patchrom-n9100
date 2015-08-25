.class Lcom/android/server/wifi/WifiService$15;
.super Ljava/lang/Object;
.source "WifiService.java"

# interfaces
.implements Landroid/hardware/scontext/SContextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiService;->checkSensorStatus(Landroid/content/Context;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiService;)V
    .locals 0

    .prologue
    .line 3459
    iput-object p1, p0, Lcom/android/server/wifi/WifiService$15;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSContextChanged(Landroid/hardware/scontext/SContextEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/hardware/scontext/SContextEvent;

    .prologue
    const/4 v7, 0x2

    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 3462
    iget-object v1, p1, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    .line 3463
    .local v1, "scontext":Landroid/hardware/scontext/SContext;
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mActivityTrackerListener: onSContextChanged(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3464
    invoke-virtual {v1}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v2

    const/16 v3, 0x19

    if-ne v2, v3, :cond_0

    .line 3465
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getActivityTrackerContext()Landroid/hardware/scontext/SContextActivityTracker;

    move-result-object v0

    .line 3466
    .local v0, "atContext":Landroid/hardware/scontext/SContextActivityTracker;
    iget-object v2, p0, Lcom/android/server/wifi/WifiService$15;->this$0:Lcom/android/server/wifi/WifiService;

    iput-boolean v5, v2, Lcom/android/server/wifi/WifiService;->isWifiScanWithSensor:Z

    .line 3467
    invoke-virtual {v0}, Landroid/hardware/scontext/SContextActivityTracker;->getAccuracy()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 3478
    const-string v2, "WifiService"

    const-string v3, "default, atAccuracy = -1"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3479
    iget-object v2, p0, Lcom/android/server/wifi/WifiService$15;->this$0:Lcom/android/server/wifi/WifiService;

    iput v6, v2, Lcom/android/server/wifi/WifiService;->atAccuracy:I

    .line 3482
    :goto_0
    invoke-virtual {v0}, Landroid/hardware/scontext/SContextActivityTracker;->getStatus()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    .line 3516
    .end local v0    # "atContext":Landroid/hardware/scontext/SContextActivityTracker;
    :cond_0
    :goto_1
    return-void

    .line 3469
    .restart local v0    # "atContext":Landroid/hardware/scontext/SContextActivityTracker;
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiService$15;->this$0:Lcom/android/server/wifi/WifiService;

    const/4 v3, 0x0

    iput v3, v2, Lcom/android/server/wifi/WifiService;->atAccuracy:I

    goto :goto_0

    .line 3472
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiService$15;->this$0:Lcom/android/server/wifi/WifiService;

    iput v5, v2, Lcom/android/server/wifi/WifiService;->atAccuracy:I

    goto :goto_0

    .line 3475
    :pswitch_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiService$15;->this$0:Lcom/android/server/wifi/WifiService;

    iput v7, v2, Lcom/android/server/wifi/WifiService;->atAccuracy:I

    goto :goto_0

    .line 3484
    :pswitch_3
    const-string v2, "WifiService"

    const-string v3, "ACTIVITY_STATUS_UNKNOWN "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3485
    iget-object v2, p0, Lcom/android/server/wifi/WifiService$15;->this$0:Lcom/android/server/wifi/WifiService;

    iput v6, v2, Lcom/android/server/wifi/WifiService;->curScanMove:I

    .line 3486
    iget-object v2, p0, Lcom/android/server/wifi/WifiService$15;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v3, p0, Lcom/android/server/wifi/WifiService$15;->this$0:Lcom/android/server/wifi/WifiService;

    iget v3, v3, Lcom/android/server/wifi/WifiService;->preScanMove:I

    iget-object v4, p0, Lcom/android/server/wifi/WifiService$15;->this$0:Lcom/android/server/wifi/WifiService;

    iget v4, v4, Lcom/android/server/wifi/WifiService;->curScanMove:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wifi/WifiService;->setWifiScanWithSensor(II)I

    goto :goto_1

    .line 3489
    :pswitch_4
    const-string v2, "WifiService"

    const-string v3, "ACTIVITY_STATUS_STATIONARY "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3490
    iget-object v2, p0, Lcom/android/server/wifi/WifiService$15;->this$0:Lcom/android/server/wifi/WifiService;

    iput v5, v2, Lcom/android/server/wifi/WifiService;->curScanMove:I

    .line 3492
    iget-object v2, p0, Lcom/android/server/wifi/WifiService$15;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v3, p0, Lcom/android/server/wifi/WifiService$15;->this$0:Lcom/android/server/wifi/WifiService;

    iget v3, v3, Lcom/android/server/wifi/WifiService;->preScanMove:I

    iget-object v4, p0, Lcom/android/server/wifi/WifiService$15;->this$0:Lcom/android/server/wifi/WifiService;

    iget v4, v4, Lcom/android/server/wifi/WifiService;->curScanMove:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wifi/WifiService;->setWifiScanWithSensor(II)I

    goto :goto_1

    .line 3495
    :pswitch_5
    const-string v2, "WifiService"

    const-string v3, "ACTIVITY_STATUS_WALK "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3496
    iget-object v2, p0, Lcom/android/server/wifi/WifiService$15;->this$0:Lcom/android/server/wifi/WifiService;

    iput v7, v2, Lcom/android/server/wifi/WifiService;->curScanMove:I

    .line 3498
    iget-object v2, p0, Lcom/android/server/wifi/WifiService$15;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v3, p0, Lcom/android/server/wifi/WifiService$15;->this$0:Lcom/android/server/wifi/WifiService;

    iget v3, v3, Lcom/android/server/wifi/WifiService;->preScanMove:I

    iget-object v4, p0, Lcom/android/server/wifi/WifiService$15;->this$0:Lcom/android/server/wifi/WifiService;

    iget v4, v4, Lcom/android/server/wifi/WifiService;->curScanMove:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wifi/WifiService;->setWifiScanWithSensor(II)I

    goto :goto_1

    .line 3501
    :pswitch_6
    const-string v2, "WifiService"

    const-string v3, "ACTIVITY_STATUS_RUN "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3502
    iget-object v2, p0, Lcom/android/server/wifi/WifiService$15;->this$0:Lcom/android/server/wifi/WifiService;

    const/4 v3, 0x3

    iput v3, v2, Lcom/android/server/wifi/WifiService;->curScanMove:I

    .line 3504
    iget-object v2, p0, Lcom/android/server/wifi/WifiService$15;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v3, p0, Lcom/android/server/wifi/WifiService$15;->this$0:Lcom/android/server/wifi/WifiService;

    iget v3, v3, Lcom/android/server/wifi/WifiService;->preScanMove:I

    iget-object v4, p0, Lcom/android/server/wifi/WifiService$15;->this$0:Lcom/android/server/wifi/WifiService;

    iget v4, v4, Lcom/android/server/wifi/WifiService;->curScanMove:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wifi/WifiService;->setWifiScanWithSensor(II)I

    goto :goto_1

    .line 3507
    :pswitch_7
    const-string v2, "WifiService"

    const-string v3, "ACTIVITY_STATUS_VEHICLE "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3508
    iget-object v2, p0, Lcom/android/server/wifi/WifiService$15;->this$0:Lcom/android/server/wifi/WifiService;

    const/4 v3, 0x4

    iput v3, v2, Lcom/android/server/wifi/WifiService;->curScanMove:I

    .line 3510
    iget-object v2, p0, Lcom/android/server/wifi/WifiService$15;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v3, p0, Lcom/android/server/wifi/WifiService$15;->this$0:Lcom/android/server/wifi/WifiService;

    iget v3, v3, Lcom/android/server/wifi/WifiService;->preScanMove:I

    iget-object v4, p0, Lcom/android/server/wifi/WifiService$15;->this$0:Lcom/android/server/wifi/WifiService;

    iget v4, v4, Lcom/android/server/wifi/WifiService;->curScanMove:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wifi/WifiService;->setWifiScanWithSensor(II)I

    goto/16 :goto_1

    .line 3467
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 3482
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
