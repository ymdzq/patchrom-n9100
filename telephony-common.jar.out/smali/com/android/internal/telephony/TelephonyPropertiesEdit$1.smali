.class Lcom/android/internal/telephony/TelephonyPropertiesEdit$1;
.super Landroid/content/BroadcastReceiver;
.source "TelephonyPropertiesEdit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/TelephonyPropertiesEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/TelephonyPropertiesEdit;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/TelephonyPropertiesEdit;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/internal/telephony/TelephonyPropertiesEdit$1;->this$0:Lcom/android/internal/telephony/TelephonyPropertiesEdit;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 27
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 49
    const-string v24, "TelephonyPropertiesEdit"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "onReceive : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v24

    const-string v25, "NEW_CARD_CHECK"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 51
    const-string v24, "slotWitch"

    const/16 v25, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    .line 52
    .local v23, "slot":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/TelephonyPropertiesEdit$1;->this$0:Lcom/android/internal/telephony/TelephonyPropertiesEdit;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v23

    # invokes: Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setPropertyNewCard(I)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->access$000(Lcom/android/internal/telephony/TelephonyPropertiesEdit;I)V

    .line 172
    .end local v23    # "slot":I
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v24

    const-string v25, "android.settings.SIMCARD_MGT"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 54
    const-string v24, "simcard_sim_id"

    const/16 v25, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    .line 55
    .local v21, "simId":I
    const-string v24, "simcard_sim_icon"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 56
    .local v20, "simIconIndex":Ljava/lang/String;
    const-string v24, "simcard_sim_name"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 58
    .local v22, "simName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/TelephonyPropertiesEdit$1;->this$0:Lcom/android/internal/telephony/TelephonyPropertiesEdit;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move/from16 v1, v21

    move-object/from16 v2, v20

    move-object/from16 v3, v22

    # invokes: Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setPropertyIconName(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->access$100(Lcom/android/internal/telephony/TelephonyPropertiesEdit;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 59
    .end local v20    # "simIconIndex":Ljava/lang/String;
    .end local v21    # "simId":I
    .end local v22    # "simName":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v24

    const-string v25, "ACTION_REGCARD_ICON_CHANGED"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 60
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 62
    .local v10, "extras":Landroid/os/Bundle;
    const-string v24, "CDMA01_ICON_INDEX"

    const-string v25, "6"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 63
    .local v8, "cdmaIcon":Ljava/lang/String;
    const-string v24, "GSM_ICON_INDEX"

    const-string v25, "7"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 64
    .local v12, "gsm01Icon":Ljava/lang/String;
    const-string v24, "GSM02_ICON_INDEX"

    const-string v25, "8"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 66
    .local v15, "gsm02Icon":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/TelephonyPropertiesEdit$1;->this$0:Lcom/android/internal/telephony/TelephonyPropertiesEdit;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    # invokes: Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setPropertyIcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v8, v12, v15}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->access$200(Lcom/android/internal/telephony/TelephonyPropertiesEdit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 67
    .end local v8    # "cdmaIcon":Ljava/lang/String;
    .end local v10    # "extras":Landroid/os/Bundle;
    .end local v12    # "gsm01Icon":Ljava/lang/String;
    .end local v15    # "gsm02Icon":Ljava/lang/String;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v24

    const-string v25, "ACTION_REGCARD_CARDNAME_CHANGED"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 68
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 70
    .restart local v10    # "extras":Landroid/os/Bundle;
    const-string v24, "CDMA01_CARDNAME"

    const-string v25, "Slot 1"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 71
    .local v9, "cdmaName":Ljava/lang/String;
    const-string v24, "GSM_CARDNAME"

    const-string v25, "Slot 2"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 72
    .local v13, "gsm01Name":Ljava/lang/String;
    const-string v24, "GSM02_CARDNAME"

    const-string v25, "Slot 1"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 74
    .local v16, "gsm02Name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/TelephonyPropertiesEdit$1;->this$0:Lcom/android/internal/telephony/TelephonyPropertiesEdit;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    # invokes: Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setPropertyCardname(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v9, v13, v1}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->access$300(Lcom/android/internal/telephony/TelephonyPropertiesEdit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 75
    .end local v9    # "cdmaName":Ljava/lang/String;
    .end local v10    # "extras":Landroid/os/Bundle;
    .end local v13    # "gsm01Name":Ljava/lang/String;
    .end local v16    # "gsm02Name":Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v24

    const-string v25, "ACTION_NETWORK_ACTIVATE_STATE"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 76
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 78
    .restart local v10    # "extras":Landroid/os/Bundle;
    const-string v24, "CARDTYPE_CDMA01"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 79
    .local v7, "cdmaAct":Ljava/lang/String;
    const-string v24, "CARDTYPE_GSM"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 80
    .local v11, "gsm01Act":Ljava/lang/String;
    const-string v24, "CARDTYPE_GSM02"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 82
    .local v14, "gsm02Act":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/TelephonyPropertiesEdit$1;->this$0:Lcom/android/internal/telephony/TelephonyPropertiesEdit;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    # invokes: Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setPropertyActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v7, v11, v14}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->access$400(Lcom/android/internal/telephony/TelephonyPropertiesEdit;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 83
    .end local v7    # "cdmaAct":Ljava/lang/String;
    .end local v10    # "extras":Landroid/os/Bundle;
    .end local v11    # "gsm01Act":Ljava/lang/String;
    .end local v14    # "gsm02Act":Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v24

    const-string v25, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_7

    .line 84
    const-string v24, "simSlot"

    const/16 v25, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    .line 85
    .restart local v23    # "slot":I
    if-nez v23, :cond_6

    .line 86
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/TelephonyPropertiesEdit$1;->this$0:Lcom/android/internal/telephony/TelephonyPropertiesEdit;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    # invokes: Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setPropertyState(I)V
    invoke-static/range {v24 .. v25}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->access$500(Lcom/android/internal/telephony/TelephonyPropertiesEdit;I)V

    .line 93
    :goto_1
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .line 94
    .local v17, "i":Landroid/content/Intent;
    const-string v24, "ACTION_SET_PROPERTY_STATE"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    const-string v24, "property_item"

    const-string v25, "SIM_STATE_CHANGED"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    const-string v24, "simSlot"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/TelephonyPropertiesEdit$1;->this$0:Lcom/android/internal/telephony/TelephonyPropertiesEdit;

    move-object/from16 v24, v0

    # getter for: Lcom/android/internal/telephony/TelephonyPropertiesEdit;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v24 .. v24}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->access$600(Lcom/android/internal/telephony/TelephonyPropertiesEdit;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 88
    .end local v17    # "i":Landroid/content/Intent;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/TelephonyPropertiesEdit$1;->this$0:Lcom/android/internal/telephony/TelephonyPropertiesEdit;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    # invokes: Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setPropertyState(I)V
    invoke-static/range {v24 .. v25}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->access$500(Lcom/android/internal/telephony/TelephonyPropertiesEdit;I)V

    goto :goto_1

    .line 99
    .end local v23    # "slot":I
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v24

    const-string v25, "ACTION_PLMN_UPDATE"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_8

    .line 100
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 102
    .restart local v10    # "extras":Landroid/os/Bundle;
    const-string v24, "slot1"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 103
    .local v18, "sSwitchStateC":Ljava/lang/String;
    const-string v24, "slot2"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 104
    .local v19, "sSwitchStateG":Ljava/lang/String;
    const-string v24, "slot1State"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 105
    .local v4, "bSwitchImgViewC":Z
    const-string v24, "slot2State"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 106
    .local v5, "bSwitchImgViewG":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/TelephonyPropertiesEdit$1;->this$0:Lcom/android/internal/telephony/TelephonyPropertiesEdit;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    # invokes: Lcom/android/internal/telephony/TelephonyPropertiesEdit;->setPropertyPLMN(Ljava/lang/String;Ljava/lang/String;ZZ)V
    invoke-static {v0, v1, v2, v4, v5}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->access$700(Lcom/android/internal/telephony/TelephonyPropertiesEdit;Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 107
    .end local v4    # "bSwitchImgViewC":Z
    .end local v5    # "bSwitchImgViewG":Z
    .end local v10    # "extras":Landroid/os/Bundle;
    .end local v18    # "sSwitchStateC":Ljava/lang/String;
    .end local v19    # "sSwitchStateG":Ljava/lang/String;
    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v24

    const-string v25, "com.samsung.intent.action.Slot1OffCompleted"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_9

    .line 108
    const-string v24, "gsm.sim.active"

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v24

    const-string v25, "0"

    invoke-static/range {v24 .. v25}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v24, "gsm.sim.currentcardstatus"

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v24

    const-string v25, "2"

    invoke-static/range {v24 .. v25}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/TelephonyPropertiesEdit$1;->this$0:Lcom/android/internal/telephony/TelephonyPropertiesEdit;

    move-object/from16 v24, v0

    # getter for: Lcom/android/internal/telephony/TelephonyPropertiesEdit;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v24 .. v24}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->access$600(Lcom/android/internal/telephony/TelephonyPropertiesEdit;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "phone1_on"

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 115
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .line 116
    .restart local v17    # "i":Landroid/content/Intent;
    const-string v24, "ACTION_SET_PROPERTY_STATE"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    const-string v24, "property_item"

    const-string v25, "Slot1OffCompleted"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const-string v24, "simSlot"

    const/16 v25, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/TelephonyPropertiesEdit$1;->this$0:Lcom/android/internal/telephony/TelephonyPropertiesEdit;

    move-object/from16 v24, v0

    # getter for: Lcom/android/internal/telephony/TelephonyPropertiesEdit;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v24 .. v24}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->access$600(Lcom/android/internal/telephony/TelephonyPropertiesEdit;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 121
    .end local v17    # "i":Landroid/content/Intent;
    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v24

    const-string v25, "com.samsung.intent.action.Slot1OnCompleted"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_b

    .line 122
    const-string v24, "gsm.sim.active"

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v24

    const-string v25, "0"

    invoke-static/range {v24 .. v25}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v24, "gsm.sim.currentcardstatus"

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v24

    const-string v25, "9"

    invoke-static/range {v24 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 124
    .local v6, "cardstatus":I
    const/16 v24, 0x1

    move/from16 v0, v24

    if-eq v6, v0, :cond_a

    .line 126
    const-string v24, "gsm.sim.currentcardstatus"

    const/16 v25, 0x0

    invoke-static/range {v24 .. v25}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v24

    const-string v25, "3"

    invoke-static/range {v24 .. v25}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/TelephonyPropertiesEdit$1;->this$0:Lcom/android/internal/telephony/TelephonyPropertiesEdit;

    move-object/from16 v24, v0

    # getter for: Lcom/android/internal/telephony/TelephonyPropertiesEdit;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v24 .. v24}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->access$600(Lcom/android/internal/telephony/TelephonyPropertiesEdit;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "phone1_on"

    const/16 v26, 0x1

    invoke-static/range {v24 .. v26}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 133
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .line 134
    .restart local v17    # "i":Landroid/content/Intent;
    const-string v24, "ACTION_SET_PROPERTY_STATE"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    const-string v24, "property_item"

    const-string v25, "Slot1OnCompleted"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    const-string v24, "simSlot"

    const/16 v25, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/TelephonyPropertiesEdit$1;->this$0:Lcom/android/internal/telephony/TelephonyPropertiesEdit;

    move-object/from16 v24, v0

    # getter for: Lcom/android/internal/telephony/TelephonyPropertiesEdit;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v24 .. v24}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->access$600(Lcom/android/internal/telephony/TelephonyPropertiesEdit;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 139
    .end local v6    # "cardstatus":I
    .end local v17    # "i":Landroid/content/Intent;
    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v24

    const-string v25, "com.samsung.intent.action.Slot2OffCompleted"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_c

    .line 140
    const-string v24, "gsm.sim.active"

    const/16 v25, 0x1

    invoke-static/range {v24 .. v25}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v24

    const-string v25, "0"

    invoke-static/range {v24 .. v25}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v24, "gsm.sim.currentcardstatus"

    const/16 v25, 0x1

    invoke-static/range {v24 .. v25}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v24

    const-string v25, "2"

    invoke-static/range {v24 .. v25}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/TelephonyPropertiesEdit$1;->this$0:Lcom/android/internal/telephony/TelephonyPropertiesEdit;

    move-object/from16 v24, v0

    # getter for: Lcom/android/internal/telephony/TelephonyPropertiesEdit;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v24 .. v24}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->access$600(Lcom/android/internal/telephony/TelephonyPropertiesEdit;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "phone2_on"

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 147
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .line 148
    .restart local v17    # "i":Landroid/content/Intent;
    const-string v24, "ACTION_SET_PROPERTY_STATE"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    const-string v24, "property_item"

    const-string v25, "Slot2OffCompleted"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    const-string v24, "simSlot"

    const/16 v25, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/TelephonyPropertiesEdit$1;->this$0:Lcom/android/internal/telephony/TelephonyPropertiesEdit;

    move-object/from16 v24, v0

    # getter for: Lcom/android/internal/telephony/TelephonyPropertiesEdit;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v24 .. v24}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->access$600(Lcom/android/internal/telephony/TelephonyPropertiesEdit;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 153
    .end local v17    # "i":Landroid/content/Intent;
    :cond_c
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v24

    const-string v25, "com.samsung.intent.action.Slot2OnCompleted"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 154
    const-string v24, "gsm.sim.active"

    const/16 v25, 0x1

    invoke-static/range {v24 .. v25}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v24

    const-string v25, "0"

    invoke-static/range {v24 .. v25}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v24, "gsm.sim.currentcardstatus"

    const/16 v25, 0x1

    invoke-static/range {v24 .. v25}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v24

    const-string v25, "9"

    invoke-static/range {v24 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 156
    .restart local v6    # "cardstatus":I
    const/16 v24, 0x1

    move/from16 v0, v24

    if-eq v6, v0, :cond_d

    .line 158
    const-string v24, "gsm.sim.currentcardstatus"

    const/16 v25, 0x1

    invoke-static/range {v24 .. v25}, Lcom/android/internal/telephony/MultiSimManager;->appendPropertySimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v24

    const-string v25, "3"

    invoke-static/range {v24 .. v25}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/TelephonyPropertiesEdit$1;->this$0:Lcom/android/internal/telephony/TelephonyPropertiesEdit;

    move-object/from16 v24, v0

    # getter for: Lcom/android/internal/telephony/TelephonyPropertiesEdit;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v24 .. v24}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->access$600(Lcom/android/internal/telephony/TelephonyPropertiesEdit;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "phone2_on"

    const/16 v26, 0x1

    invoke-static/range {v24 .. v26}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 165
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .line 166
    .restart local v17    # "i":Landroid/content/Intent;
    const-string v24, "ACTION_SET_PROPERTY_STATE"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    const-string v24, "property_item"

    const-string v25, "Slot2OnCompleted"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    const-string v24, "simSlot"

    const/16 v25, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/TelephonyPropertiesEdit$1;->this$0:Lcom/android/internal/telephony/TelephonyPropertiesEdit;

    move-object/from16 v24, v0

    # getter for: Lcom/android/internal/telephony/TelephonyPropertiesEdit;->mPhone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static/range {v24 .. v24}, Lcom/android/internal/telephony/TelephonyPropertiesEdit;->access$600(Lcom/android/internal/telephony/TelephonyPropertiesEdit;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
