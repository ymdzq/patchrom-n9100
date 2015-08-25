.class Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MultiSimMobileDataStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/MultiSimMobileDataStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiSimMobileDataStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/MultiSimMobileDataStateTracker;


# direct methods
.method private constructor <init>(Landroid/net/MultiSimMobileDataStateTracker;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/MultiSimMobileDataStateTracker;Landroid/net/MultiSimMobileDataStateTracker$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/net/MultiSimMobileDataStateTracker;
    .param p2, "x1"    # Landroid/net/MultiSimMobileDataStateTracker$1;

    .prologue
    .line 170
    invoke-direct {p0, p1}, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;-><init>(Landroid/net/MultiSimMobileDataStateTracker;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 173
    const-string v11, "simSlot"

    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getDefaultSimSlot()I

    move-result v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 175
    .local v8, "simSlot":I
    const-string v11, "persist.sys.dataprefer.simid"

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v11

    invoke-static {v11}, Lcom/android/internal/telephony/MultiSimManager;->getLogicalSimSlot(I)I

    move-result v3

    .line 178
    .local v3, "dataPreferSimSlot":I
    if-eq v8, v3, :cond_5

    .line 179
    const-string v11, "mms"

    iget-object v12, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v12, v12, Landroid/net/MultiSimMobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    if-eqz v8, :cond_1

    :cond_0
    const-string v11, "mms2"

    iget-object v12, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v12, v12, Landroid/net/MultiSimMobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v11, 0x1

    if-ne v8, v11, :cond_4

    .line 181
    :cond_1
    iget-object v11, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Pass, simSlot="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", dataPreferSimSlot="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/net/MultiSimMobileDataStateTracker;->log(Ljava/lang/String;)V

    .line 210
    :cond_2
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    const-string v12, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 212
    const-string v11, "apnType"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 218
    .local v2, "apnType":Ljava/lang/String;
    iget-object v11, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v11, v11, Landroid/net/MultiSimMobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-static {v2, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 325
    .end local v2    # "apnType":Ljava/lang/String;
    :cond_3
    :goto_1
    return-void

    .line 182
    :cond_4
    iget-object v11, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    # invokes: Landroid/net/MultiSimMobileDataStateTracker;->isSlot2DataFuncImplementedOnCtcNonCggModel()Z
    invoke-static {v11}, Landroid/net/MultiSimMobileDataStateTracker;->access$200(Landroid/net/MultiSimMobileDataStateTracker;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 183
    iget-object v11, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Pass, non cgg ctc model, simSlot="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", dataPreferSimSlot="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/net/MultiSimMobileDataStateTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 188
    :cond_5
    const-string v11, "mms"

    iget-object v12, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v12, v12, Landroid/net/MultiSimMobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    const/4 v11, 0x1

    if-eq v8, v11, :cond_3

    :cond_6
    const-string v11, "mms2"

    iget-object v12, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v12, v12, Landroid/net/MultiSimMobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    if-eqz v8, :cond_3

    .line 191
    :cond_7
    iget-object v11, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    # invokes: Landroid/net/MultiSimMobileDataStateTracker;->isSlot2DataFuncImplementedOnCtcNonCggModel()Z
    invoke-static {v11}, Landroid/net/MultiSimMobileDataStateTracker;->access$200(Landroid/net/MultiSimMobileDataStateTracker;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 192
    iget-object v11, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "should not happen, non cgg ctc model, simSlot="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", dataPreferSimSlot="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/net/MultiSimMobileDataStateTracker;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 222
    .restart local v2    # "apnType":Ljava/lang/String;
    :cond_8
    iget-object v11, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v11, v11, Landroid/net/MultiSimMobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v6

    .line 223
    .local v6, "oldSubtype":I
    invoke-static {v8}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/MultiSimTelephonyManager;->getNetworkType()I

    move-result v5

    .line 224
    .local v5, "newSubType":I
    invoke-static {v8}, Landroid/telephony/MultiSimTelephonyManager;->getDefault(I)Landroid/telephony/MultiSimTelephonyManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/MultiSimTelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v10

    .line 225
    .local v10, "subTypeName":Ljava/lang/String;
    iget-object v11, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v11, v11, Landroid/net/MultiSimMobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v11, v5, v10}, Landroid/net/NetworkInfo;->setSubtype(ILjava/lang/String;)V

    .line 226
    if-eq v5, v6, :cond_9

    iget-object v11, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v11, v11, Landroid/net/MultiSimMobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v11

    if-eqz v11, :cond_9

    .line 227
    iget-object v11, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v11, v11, Landroid/net/MultiSimMobileDataStateTracker;->mTarget:Landroid/os/Handler;

    const v12, 0x70003

    const/4 v13, 0x0

    iget-object v14, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v14, v14, Landroid/net/MultiSimMobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v11, v12, v6, v13, v14}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 229
    .local v4, "msg":Landroid/os/Message;
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 232
    .end local v4    # "msg":Landroid/os/Message;
    :cond_9
    const-class v11, Lcom/android/internal/telephony/PhoneConstants$DataState;

    const-string v12, "state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 234
    .local v9, "state":Lcom/android/internal/telephony/PhoneConstants$DataState;
    const-string v11, "reason"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 235
    .local v7, "reason":Ljava/lang/String;
    const-string v11, "apn"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, "apnName":Ljava/lang/String;
    iget-object v11, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v11, v11, Landroid/net/MultiSimMobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    const-string v12, "networkRoaming"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    invoke-virtual {v11, v12}, Landroid/net/NetworkInfo;->setRoaming(Z)V

    .line 242
    iget-object v11, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v12, v11, Landroid/net/MultiSimMobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    const-string v11, "networkUnvailable"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_b

    const/4 v11, 0x1

    :goto_2
    invoke-virtual {v12, v11}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 249
    iget-object v11, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v11, v11, Landroid/net/MultiSimMobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-eq v11, v9, :cond_e

    .line 250
    iget-object v11, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iput-object v9, v11, Landroid/net/MultiSimMobileDataStateTracker;->mMobileDataState:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 251
    sget-object v11, Landroid/net/MultiSimMobileDataStateTracker$1;->$SwitchMap$com$android$internal$telephony$PhoneConstants$DataState:[I

    invoke-virtual {v9}, Lcom/android/internal/telephony/PhoneConstants$DataState;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_0

    goto/16 :goto_1

    .line 253
    :pswitch_0
    iget-object v11, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    invoke-virtual {v11}, Landroid/net/MultiSimMobileDataStateTracker;->isTeardownRequested()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 254
    iget-object v11, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/net/MultiSimMobileDataStateTracker;->setTeardownRequested(Z)V

    .line 257
    :cond_a
    iget-object v11, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    sget-object v12, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v11, v12, v7, v1}, Landroid/net/MultiSimMobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 242
    :cond_b
    const/4 v11, 0x0

    goto :goto_2

    .line 266
    :pswitch_1
    iget-object v11, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    sget-object v12, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v11, v12, v7, v1}, Landroid/net/MultiSimMobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 269
    :pswitch_2
    iget-object v11, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    sget-object v12, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v11, v12, v7, v1}, Landroid/net/MultiSimMobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 272
    :pswitch_3
    iget-object v12, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    const-string v11, "linkProperties"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/net/LinkProperties;

    iput-object v11, v12, Landroid/net/MultiSimMobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 274
    iget-object v11, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v11, v11, Landroid/net/MultiSimMobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    if-nez v11, :cond_c

    .line 275
    iget-object v11, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    const-string v12, "CONNECTED event did not supply link properties."

    invoke-virtual {v11, v12}, Landroid/net/MultiSimMobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 276
    iget-object v11, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    new-instance v12, Landroid/net/LinkProperties;

    invoke-direct {v12}, Landroid/net/LinkProperties;-><init>()V

    iput-object v12, v11, Landroid/net/MultiSimMobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 278
    :cond_c
    iget-object v12, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    const-string v11, "linkCapabilities"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/net/LinkCapabilities;

    iput-object v11, v12, Landroid/net/MultiSimMobileDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    .line 280
    iget-object v11, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v11, v11, Landroid/net/MultiSimMobileDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    if-nez v11, :cond_d

    .line 281
    iget-object v11, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    const-string v12, "CONNECTED event did not supply link capabilities."

    invoke-virtual {v11, v12}, Landroid/net/MultiSimMobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 282
    iget-object v11, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    new-instance v12, Landroid/net/LinkCapabilities;

    invoke-direct {v12}, Landroid/net/LinkCapabilities;-><init>()V

    iput-object v12, v11, Landroid/net/MultiSimMobileDataStateTracker;->mLinkCapabilities:Landroid/net/LinkCapabilities;

    .line 284
    :cond_d
    iget-object v11, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    sget-object v12, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v11, v12, v7, v1}, Landroid/net/MultiSimMobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 289
    :cond_e
    const-string v11, "linkPropertiesChanged"

    invoke-static {v7, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 290
    iget-object v12, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    const-string v11, "linkProperties"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/net/LinkProperties;

    iput-object v11, v12, Landroid/net/MultiSimMobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 292
    iget-object v11, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v11, v11, Landroid/net/MultiSimMobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    if-nez v11, :cond_f

    .line 293
    iget-object v11, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    const-string v12, "No link property in LINK_PROPERTIES change event."

    invoke-virtual {v11, v12}, Landroid/net/MultiSimMobileDataStateTracker;->loge(Ljava/lang/String;)V

    .line 294
    iget-object v11, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    new-instance v12, Landroid/net/LinkProperties;

    invoke-direct {v12}, Landroid/net/LinkProperties;-><init>()V

    iput-object v12, v11, Landroid/net/MultiSimMobileDataStateTracker;->mLinkProperties:Landroid/net/LinkProperties;

    .line 297
    :cond_f
    iget-object v11, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v11, v11, Landroid/net/MultiSimMobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    iget-object v12, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v12, v12, Landroid/net/MultiSimMobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v12}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v12

    iget-object v13, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v13, v13, Landroid/net/MultiSimMobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v13}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v7, v13}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v11, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v11, v11, Landroid/net/MultiSimMobileDataStateTracker;->mTarget:Landroid/os/Handler;

    const v12, 0x70001

    iget-object v13, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v13, v13, Landroid/net/MultiSimMobileDataStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v11, v12, v13}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 301
    .restart local v4    # "msg":Landroid/os/Message;
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 304
    .end local v1    # "apnName":Ljava/lang/String;
    .end local v2    # "apnType":Ljava/lang/String;
    .end local v4    # "msg":Landroid/os/Message;
    .end local v5    # "newSubType":I
    .end local v6    # "oldSubtype":I
    .end local v7    # "reason":Ljava/lang/String;
    .end local v9    # "state":Lcom/android/internal/telephony/PhoneConstants$DataState;
    .end local v10    # "subTypeName":Ljava/lang/String;
    :cond_10
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    const-string v12, "android.intent.action.DATA_CONNECTION_FAILED"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 306
    const-string v11, "apnType"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 307
    .restart local v2    # "apnType":Ljava/lang/String;
    iget-object v11, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    iget-object v11, v11, Landroid/net/MultiSimMobileDataStateTracker;->mApnType:Ljava/lang/String;

    invoke-static {v2, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 315
    const-string v11, "reason"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 316
    .restart local v7    # "reason":Ljava/lang/String;
    const-string v11, "apn"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 321
    .restart local v1    # "apnName":Ljava/lang/String;
    iget-object v11, p0, Landroid/net/MultiSimMobileDataStateTracker$MultiSimMobileDataStateReceiver;->this$0:Landroid/net/MultiSimMobileDataStateTracker;

    sget-object v12, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v11, v12, v7, v1}, Landroid/net/MultiSimMobileDataStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 251
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
