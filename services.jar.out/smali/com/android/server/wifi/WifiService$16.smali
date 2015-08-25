.class Lcom/android/server/wifi/WifiService$16;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiService;
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
    .line 3541
    iput-object p1, p0, Lcom/android/server/wifi/WifiService$16;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3544
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 3545
    .local v1, "action":Ljava/lang/String;
    const-string v11, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 3546
    # getter for: Lcom/android/server/wifi/WifiService;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 3547
    const-string v11, "WifiService"

    const-string v12, "ACTION_SCREEN_ON"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3555
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiService$16;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;
    invoke-static {v11}, Lcom/android/server/wifi/WifiService;->access$500(Lcom/android/server/wifi/WifiService;)Lcom/android/server/wifi/WifiController;

    move-result-object v11

    const v12, 0x26002

    invoke-virtual {v11, v12}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 3637
    :cond_1
    :goto_0
    return-void

    .line 3561
    :cond_2
    const-string v11, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 3562
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiService$16;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;
    invoke-static {v11}, Lcom/android/server/wifi/WifiService;->access$500(Lcom/android/server/wifi/WifiService;)Lcom/android/server/wifi/WifiController;

    move-result-object v11

    const v12, 0x2600c

    invoke-virtual {v11, v12}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 3563
    :cond_3
    const-string v11, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 3564
    # getter for: Lcom/android/server/wifi/WifiService;->DBG:Z
    invoke-static {}, Lcom/android/server/wifi/WifiService;->access$100()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 3565
    const-string v11, "WifiService"

    const-string v12, "ACTION_SCREEN_OFF"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3570
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiService$16;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;
    invoke-static {v11}, Lcom/android/server/wifi/WifiService;->access$500(Lcom/android/server/wifi/WifiService;)Lcom/android/server/wifi/WifiController;

    move-result-object v11

    const v12, 0x26003

    invoke-virtual {v11, v12}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 3575
    :cond_5
    const-string v11, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 3576
    const-string v11, "plugged"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 3577
    .local v5, "pluggedType":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiService$16;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;
    invoke-static {v11}, Lcom/android/server/wifi/WifiService;->access$500(Lcom/android/server/wifi/WifiService;)Lcom/android/server/wifi/WifiController;

    move-result-object v11

    const v12, 0x26004

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v5, v13, v14}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_0

    .line 3578
    .end local v5    # "pluggedType":I
    :cond_6
    const-string v11, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 3579
    const-string v11, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 3581
    .local v8, "state":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiService$16;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v11, v11, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v11, v8}, Landroid/net/wifi/WifiStateMachine;->sendBluetoothAdapterStateChange(I)V

    goto :goto_0

    .line 3582
    .end local v8    # "state":I
    :cond_7
    const-string v11, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 3583
    const-string v11, "phoneinECMState"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 3584
    .local v3, "emergencyMode":Z
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiService$16;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;
    invoke-static {v11}, Lcom/android/server/wifi/WifiService;->access$500(Lcom/android/server/wifi/WifiService;)Lcom/android/server/wifi/WifiController;

    move-result-object v12

    const v13, 0x26001

    if-eqz v3, :cond_8

    const/4 v11, 0x1

    :goto_1
    const/4 v14, 0x0

    invoke-virtual {v12, v13, v11, v14}, Lcom/android/internal/util/StateMachine;->sendMessage(III)V

    goto/16 :goto_0

    :cond_8
    const/4 v11, 0x0

    goto :goto_1

    .line 3585
    .end local v3    # "emergencyMode":Z
    :cond_9
    const-string v11, "android.provider.Telephony.SMS_CB_WIFI_RECEIVED"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 3591
    const-string v11, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 3592
    const-string/jumbo v11, "wifi_state"

    const/16 v12, 0xe

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 3593
    .local v2, "apState":I
    const/16 v11, 0xe

    if-ne v2, v11, :cond_1

    .line 3594
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiService$16;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;
    invoke-static {v11}, Lcom/android/server/wifi/WifiService;->access$500(Lcom/android/server/wifi/WifiService;)Lcom/android/server/wifi/WifiController;

    move-result-object v11

    const v12, 0x2600a

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v11}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 3595
    .end local v2    # "apState":I
    :cond_a
    const-string v11, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 3596
    const-string/jumbo v11, "ss"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3597
    .local v4, "iccState":Ljava/lang/String;
    const-string v11, "WifiService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "sim state changed : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3598
    const-string v11, "IMSI"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 3599
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiService$16;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v11, v11, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v11}, Landroid/net/wifi/WifiStateMachine;->reloadSIMState()V

    goto/16 :goto_0

    .line 3600
    :cond_b
    const-string v11, "UNKNOWN"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c

    const-string v11, "ABSENT"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 3601
    :cond_c
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiService$16;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-virtual {v11}, Lcom/android/server/wifi/WifiService;->getWifiApEnabledState()I

    move-result v11

    const/16 v12, 0xd

    if-ne v11, v12, :cond_1

    .line 3602
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiService$16;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/wifi/WifiService;->access$200(Lcom/android/server/wifi/WifiService;)Landroid/content/Context;

    move-result-object v11

    const-string v12, "phone"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 3603
    .local v9, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v9, :cond_1

    .line 3604
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v6

    .line 3605
    .local v6, "simState1":I
    const/4 v11, 0x5

    if-eq v6, v11, :cond_1

    .line 3608
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiService$16;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/wifi/WifiService;->access$200(Lcom/android/server/wifi/WifiService;)Landroid/content/Context;

    move-result-object v11

    const-string v12, "phone2"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    .line 3609
    .local v10, "telephonyManager2":Landroid/telephony/TelephonyManager;
    if-nez v10, :cond_d

    move v7, v6

    .line 3610
    .local v7, "simState2":I
    :goto_2
    const/4 v11, 0x5

    if-eq v6, v11, :cond_1

    const/4 v11, 0x5

    if-eq v7, v11, :cond_1

    .line 3613
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiService$16;->this$0:Lcom/android/server/wifi/WifiService;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lcom/android/server/wifi/WifiService;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    goto/16 :goto_0

    .line 3609
    .end local v7    # "simState2":I
    :cond_d
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v7

    goto :goto_2
.end method
