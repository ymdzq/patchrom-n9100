.class Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;
.super Landroid/content/BroadcastReceiver;
.source "MultiSimGsmServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 243
    const-string v12, "Combination"

    const-string v13, "Combination"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    const-string v12, "IMC"

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 245
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    const-string v13, "android.intent.action.CANCEL_POWER_ON_DELAY"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 246
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mHasPostedRadioPowerOnTimer:Z
    invoke-static {v12}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$200(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 247
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Stop the timer and power on now in "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    iget-object v14, v14, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v14}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 248
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->setRadioPowerOnNow()V

    .line 257
    :cond_1
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    const-string v13, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 263
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    const/4 v13, 0x1

    # setter for: Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mLocaleChanged:Z
    invoke-static {v12, v13}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$602(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;Z)Z

    .line 264
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->updateSpnDisplay()V

    .line 265
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    const/4 v13, 0x0

    # setter for: Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mLocaleChanged:Z
    invoke-static {v12, v13}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$602(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;Z)Z

    .line 296
    :cond_2
    :goto_1
    const-string v12, "CHN"

    const-string v13, "CHN"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 297
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    const-string v13, "ACTION_SET_PROPERTY_STATE"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 298
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->updateSpnDisplay()V

    .line 300
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    const-string v13, "android.settings.SIMCARD_MGT_ACTIVATED"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 301
    const/4 v12, 0x1

    # setter for: Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->setSPNUpdateFlag:Z
    invoke-static {v12}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$702(Z)Z

    .line 302
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->updateSpnDisplay()V

    .line 303
    const/4 v12, 0x0

    # setter for: Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->setSPNUpdateFlag:Z
    invoke-static {v12}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$702(Z)Z

    .line 305
    :cond_4
    const-string v12, "CTC"

    const-string v13, "OPEN"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    const-string v12, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 307
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->updateSpnDisplay()V

    .line 315
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    const-string v13, "android.intent.action.PHONE_STATE"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 316
    const-string v12, "gsm.sim.state"

    const-string v13, ""

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 317
    .local v7, "sim1StateCheck":Ljava/lang/String;
    const-string v12, "gsm.sim.state2"

    const-string v13, ""

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 318
    .local v8, "sim2StateCheck":Ljava/lang/String;
    const-string v12, "persist.sys.dataprefer.simid"

    const-string v13, "0"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 319
    .local v2, "dataPrefer":Ljava/lang/String;
    const/4 v12, 0x0

    invoke-static {v12}, Lcom/android/internal/telephony/MultiSimPhoneFactory;->getDefaultPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    .line 320
    .local v4, "phone1":Lcom/android/internal/telephony/Phone;
    const/4 v12, 0x1

    invoke-static {v12}, Lcom/android/internal/telephony/MultiSimPhoneFactory;->getDefaultPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 321
    .local v5, "phone2":Lcom/android/internal/telephony/Phone;
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v13

    # setter for: Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mSlot1CallState:Lcom/android/internal/telephony/PhoneConstants$State;
    invoke-static {v12, v13}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$802(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;Lcom/android/internal/telephony/PhoneConstants$State;)Lcom/android/internal/telephony/PhoneConstants$State;

    .line 322
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v13

    # setter for: Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mSlot2CallState:Lcom/android/internal/telephony/PhoneConstants$State;
    invoke-static {v12, v13}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$902(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;Lcom/android/internal/telephony/PhoneConstants$State;)Lcom/android/internal/telephony/PhoneConstants$State;

    .line 324
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v12

    sput v12, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot1Type:I

    .line 325
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v12

    sput v12, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot2Type:I

    .line 327
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[DSDS_TWOCHIP] mSlot1Type : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget v14, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot1Type:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", mSlot2Type"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget v14, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSlot2Type:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", mSlot1CallState : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mSlot1CallState:Lcom/android/internal/telephony/PhoneConstants$State;
    invoke-static {v14}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$800(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", mSlot2CallState : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mSlot2CallState:Lcom/android/internal/telephony/PhoneConstants$State;
    invoke-static {v14}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$900(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", mHasDisconnectedLte : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    # getter for: Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mHasDisconnectedLte:Z
    invoke-static {}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$1000()Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 331
    const-string v12, "ABSENT"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    const-string v12, "ABSENT"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 333
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    # invokes: Lcom/android/internal/telephony/ServiceStateTracker;->isTwochipDisableLte()Z
    invoke-static {v12}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$1100(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;)Z

    move-result v12

    if-eqz v12, :cond_d

    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    # invokes: Lcom/android/internal/telephony/ServiceStateTracker;->isTwochipDsdsOnRoaming()Z
    invoke-static {v12}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$1200(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;)Z

    move-result v12

    if-nez v12, :cond_d

    .line 334
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mSlot2CallState:Lcom/android/internal/telephony/PhoneConstants$State;
    invoke-static {v12}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$900(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v12

    sget-object v13, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v12, v13, :cond_c

    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    iget-object v12, v12, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v12}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_c

    # getter for: Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mHasDisconnectedLte:Z
    invoke-static {}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$1000()Z

    move-result v12

    if-nez v12, :cond_c

    .line 337
    const/4 v12, 0x1

    # setter for: Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mHasDisconnectedLte:Z
    invoke-static {v12}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$1002(Z)Z

    .line 338
    new-instance v6, Landroid/content/Intent;

    const-string v12, "android.intent.action.DUOS_DISCONNECT_LTE"

    invoke-direct {v6, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 339
    .local v6, "powerIntent":Landroid/content/Intent;
    const/high16 v12, 0x20000000

    invoke-virtual {v6, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 340
    const-string v12, "state"

    const/4 v13, 0x0

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 341
    const-string v12, "0"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 342
    const-string v12, "slot"

    const/4 v13, 0x0

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 343
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    const-string v13, "[DSDS_TWOCHIP] Add slot1 data off param in intent"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 344
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    iget-object v12, v12, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v12}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12, v6}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 345
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    const-string v13, "[DSDS_TWOCHIP] send DUOS_DISCONNECT_LTE block broadcast"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 443
    .end local v2    # "dataPrefer":Ljava/lang/String;
    .end local v4    # "phone1":Lcom/android/internal/telephony/Phone;
    .end local v5    # "phone2":Lcom/android/internal/telephony/Phone;
    .end local v6    # "powerIntent":Landroid/content/Intent;
    .end local v7    # "sim1StateCheck":Ljava/lang/String;
    .end local v8    # "sim2StateCheck":Ljava/lang/String;
    :cond_6
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    const-string v13, "android.intent.action.POLL_CALL_DONE"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    # invokes: Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->isNeedForRSE()Z
    invoke-static {v12}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$1600(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 444
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    const-string v13, "Poll Calls are done"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 445
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    # invokes: Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->radioOffForTwoChipDsds()V
    invoke-static {v12}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$1700(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;)V

    .line 448
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    const-string v13, "android.intent.action.DUOS_CP_CTRL_BY_CALL"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 449
    const-string v12, "state"

    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 450
    .local v10, "state":I
    const-string v12, "callslot"

    const/16 v13, 0x64

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 451
    .local v1, "callslot":I
    const-string v12, "slot"

    const/16 v13, 0x64

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 452
    .local v9, "slot":I
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    iget-object v12, v12, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v3, v12, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 454
    .local v3, "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    if-nez v10, :cond_1f

    .line 455
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    iget-object v12, v12, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v12}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v12

    if-ne v9, v12, :cond_8

    .line 456
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[DSDS_TWOCHIP] Data Off slot "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 457
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setInternalDataEnabled(Z)Z

    .line 459
    :cond_8
    if-nez v1, :cond_1d

    .line 460
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    const-string v13, "[DSDS_TWOCHIP] slot1 has incomming call"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 461
    const-string v12, "ril.call_block"

    const-string v13, "slot1call"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    .end local v1    # "callslot":I
    .end local v3    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .end local v9    # "slot":I
    .end local v10    # "state":I
    :cond_9
    :goto_3
    return-void

    .line 251
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    const-string v13, "android.intent.action.CANCEL_POWER_ON_TIMER"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 252
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->clearPowerOnTimer()V

    .line 253
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    iget-object v12, v12, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v13, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    iget-object v13, v13, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    goto/16 :goto_0

    .line 271
    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    const-string v13, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 272
    const-string v12, "ss"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 273
    .local v11, "stateExtra":Ljava/lang/String;
    const-string v12, "LOADED"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 275
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    const-string v13, "KDW, INTENT_VALUE_ICC_LOADED"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 276
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->pollState()V

    goto/16 :goto_1

    .line 348
    .end local v11    # "stateExtra":Ljava/lang/String;
    .restart local v2    # "dataPrefer":Ljava/lang/String;
    .restart local v4    # "phone1":Lcom/android/internal/telephony/Phone;
    .restart local v5    # "phone2":Lcom/android/internal/telephony/Phone;
    .restart local v7    # "sim1StateCheck":Ljava/lang/String;
    .restart local v8    # "sim2StateCheck":Ljava/lang/String;
    :cond_c
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mSlot2CallState:Lcom/android/internal/telephony/PhoneConstants$State;
    invoke-static {v12}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$900(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v12

    sget-object v13, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v12, v13, :cond_6

    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    iget-object v12, v12, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v12}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_6

    # getter for: Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mHasDisconnectedLte:Z
    invoke-static {}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$1000()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 351
    const/4 v12, 0x0

    # setter for: Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mHasDisconnectedLte:Z
    invoke-static {v12}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$1002(Z)Z

    .line 352
    new-instance v6, Landroid/content/Intent;

    const-string v12, "android.intent.action.DUOS_DISCONNECT_LTE"

    invoke-direct {v6, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 353
    .restart local v6    # "powerIntent":Landroid/content/Intent;
    const/high16 v12, 0x20000000

    invoke-virtual {v6, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 354
    const-string v12, "state"

    const/4 v13, 0x1

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 355
    const-string v12, "0"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 356
    const-string v12, "slot"

    const/4 v13, 0x0

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 357
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    const-string v13, "[DSDS_TWOCHIP] Add slot1 data on param in intent"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 358
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    iget-object v12, v12, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v12}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12, v6}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 359
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    const-string v13, "[DSDS_TWOCHIP] send DUOS_DISCONNECT_LTE unblock broadcast"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 365
    .end local v6    # "powerIntent":Landroid/content/Intent;
    :cond_d
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mSlot1CallState:Lcom/android/internal/telephony/PhoneConstants$State;
    invoke-static {v12}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$800(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v12

    sget-object v13, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v12, v13, :cond_e

    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mSlot2CallState:Lcom/android/internal/telephony/PhoneConstants$State;
    invoke-static {v12}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$900(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v12

    sget-object v13, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v12, v13, :cond_f

    .line 367
    :cond_e
    const/4 v12, 0x1

    # setter for: Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mHasRinging:I
    invoke-static {v12}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$1302(I)I

    .line 369
    :cond_f
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mSlot1CallState:Lcom/android/internal/telephony/PhoneConstants$State;
    invoke-static {v12}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$800(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v12

    sget-object v13, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v12, v13, :cond_10

    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mSlot1CallState:Lcom/android/internal/telephony/PhoneConstants$State;
    invoke-static {v12}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$800(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v12

    sget-object v13, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v12, v13, :cond_14

    .line 371
    :cond_10
    const/4 v12, 0x0

    # setter for: Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mHasIncomingCall:I
    invoke-static {v12}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$1402(I)I

    .line 372
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    iget-object v12, v12, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v12}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v12

    if-nez v12, :cond_6

    .line 373
    new-instance v6, Landroid/content/Intent;

    const-string v12, "android.intent.action.DUOS_CP_CTRL_BY_CALL"

    invoke-direct {v6, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 374
    .restart local v6    # "powerIntent":Landroid/content/Intent;
    const/high16 v12, 0x20000000

    invoke-virtual {v6, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 375
    const-string v12, "state"

    const/4 v13, 0x0

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 376
    const-string v12, "callslot"

    const/4 v13, 0x0

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 377
    const-string v12, "1"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 378
    const-string v12, "slot"

    const/4 v13, 0x1

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 379
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    const-string v13, "[DSDS_TWOCHIP] Add slot2 data off param in intent"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 381
    :cond_11
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    iget-object v12, v12, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v12}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12, v6}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 382
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mSlot1CallState:Lcom/android/internal/telephony/PhoneConstants$State;
    invoke-static {v12}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$800(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v12

    sget-object v13, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v12, v13, :cond_12

    # getter for: Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mHasRinging:I
    invoke-static {}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$1300()I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_13

    .line 383
    :cond_12
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    const-string v13, "[DSDS_TWOCHIP] send sendCallState message once for incomming call in CP1"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 384
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    const/4 v13, 0x0

    const/4 v14, 0x1

    # invokes: Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->sendCallState(II)V
    invoke-static {v12, v13, v14}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$1500(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;II)V

    .line 386
    :cond_13
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    const-string v13, "[DSDS_TWOCHIP] send DUOS_CP_CTRL_BY_CALL block broadcast"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 389
    .end local v6    # "powerIntent":Landroid/content/Intent;
    :cond_14
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mSlot2CallState:Lcom/android/internal/telephony/PhoneConstants$State;
    invoke-static {v12}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$900(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v12

    sget-object v13, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v12, v13, :cond_15

    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mSlot2CallState:Lcom/android/internal/telephony/PhoneConstants$State;
    invoke-static {v12}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$900(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v12

    sget-object v13, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v12, v13, :cond_19

    .line 391
    :cond_15
    const/4 v12, 0x1

    # setter for: Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mHasIncomingCall:I
    invoke-static {v12}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$1402(I)I

    .line 392
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    iget-object v12, v12, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v12}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_6

    .line 393
    new-instance v6, Landroid/content/Intent;

    const-string v12, "android.intent.action.DUOS_CP_CTRL_BY_CALL"

    invoke-direct {v6, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 394
    .restart local v6    # "powerIntent":Landroid/content/Intent;
    const/high16 v12, 0x20000000

    invoke-virtual {v6, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 395
    const-string v12, "state"

    const/4 v13, 0x0

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 396
    const-string v12, "callslot"

    const/4 v13, 0x1

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 397
    const-string v12, "0"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_16

    .line 398
    const-string v12, "slot"

    const/4 v13, 0x0

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 399
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    const-string v13, "[DSDS_TWOCHIP] Add slot1 data off param in intent"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 401
    :cond_16
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    iget-object v12, v12, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v12}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12, v6}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 402
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mSlot2CallState:Lcom/android/internal/telephony/PhoneConstants$State;
    invoke-static {v12}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$900(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v12

    sget-object v13, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v12, v13, :cond_17

    # getter for: Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mHasRinging:I
    invoke-static {}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$1300()I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_18

    .line 404
    :cond_17
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    const-string v13, "[DSDS_TWOCHIP] send sendCallState message once for incomming call in CP2"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 405
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    const/4 v13, 0x1

    const/4 v14, 0x1

    # invokes: Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->sendCallState(II)V
    invoke-static {v12, v13, v14}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$1500(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;II)V

    .line 407
    :cond_18
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    const-string v13, "[DSDS_TWOCHIP] send DUOS_CP_CTRL_BY_CALL block broadcast"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 410
    .end local v6    # "powerIntent":Landroid/content/Intent;
    :cond_19
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mSlot1CallState:Lcom/android/internal/telephony/PhoneConstants$State;
    invoke-static {v12}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$800(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v12

    sget-object v13, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v12, v13, :cond_6

    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mSlot2CallState:Lcom/android/internal/telephony/PhoneConstants$State;
    invoke-static {v12}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$900(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v12

    sget-object v13, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v12, v13, :cond_6

    .line 412
    const/4 v12, -0x1

    # setter for: Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mHasRinging:I
    invoke-static {v12}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$1302(I)I

    .line 413
    new-instance v6, Landroid/content/Intent;

    const-string v12, "android.intent.action.DUOS_CP_CTRL_BY_CALL"

    invoke-direct {v6, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 414
    .restart local v6    # "powerIntent":Landroid/content/Intent;
    const/high16 v12, 0x20000000

    invoke-virtual {v6, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 415
    const-string v12, "state"

    const/4 v13, 0x1

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 416
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    iget-object v12, v12, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v12}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v12

    if-nez v12, :cond_1b

    # getter for: Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mHasIncomingCall:I
    invoke-static {}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$1400()I

    move-result v12

    if-nez v12, :cond_1b

    .line 418
    const-string v12, "1"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1a

    .line 419
    const-string v12, "slot"

    const/4 v13, 0x1

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 420
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    const-string v13, "[DSDS_TWOCHIP] Add slot2 data on param in intent"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 422
    :cond_1a
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    iget-object v12, v12, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v12}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12, v6}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 423
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    const/4 v13, 0x0

    const/4 v14, 0x0

    # invokes: Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->sendCallState(II)V
    invoke-static {v12, v13, v14}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$1500(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;II)V

    .line 424
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    const-string v13, "[DSDS_TWOCHIP] send DUOS_CP_CTRL_BY_CALL unblock broadcast"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 425
    const/4 v12, -0x1

    # setter for: Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mHasIncomingCall:I
    invoke-static {v12}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$1402(I)I

    goto/16 :goto_2

    .line 427
    :cond_1b
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    iget-object v12, v12, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v12}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_6

    # getter for: Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mHasIncomingCall:I
    invoke-static {}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$1400()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_6

    .line 429
    const-string v12, "0"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1c

    .line 430
    const-string v12, "slot"

    const/4 v13, 0x0

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 431
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    const-string v13, "[DSDS_TWOCHIP] Add slot1 data on param in intent"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 433
    :cond_1c
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    iget-object v12, v12, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v12}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12, v6}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 434
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    const/4 v13, 0x1

    const/4 v14, 0x0

    # invokes: Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->sendCallState(II)V
    invoke-static {v12, v13, v14}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$1500(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;II)V

    .line 435
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    const-string v13, "[DSDS_TWOCHIP] send DUOS_CP_CTRL_BY_CALL unblock broadcast"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 436
    const/4 v12, -0x1

    # setter for: Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mHasIncomingCall:I
    invoke-static {v12}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$1402(I)I

    goto/16 :goto_2

    .line 463
    .end local v2    # "dataPrefer":Ljava/lang/String;
    .end local v4    # "phone1":Lcom/android/internal/telephony/Phone;
    .end local v5    # "phone2":Lcom/android/internal/telephony/Phone;
    .end local v6    # "powerIntent":Landroid/content/Intent;
    .end local v7    # "sim1StateCheck":Ljava/lang/String;
    .end local v8    # "sim2StateCheck":Ljava/lang/String;
    .restart local v1    # "callslot":I
    .restart local v3    # "dcTracker":Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
    .restart local v9    # "slot":I
    .restart local v10    # "state":I
    :cond_1d
    const/4 v12, 0x1

    if-ne v1, v12, :cond_1e

    .line 464
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    const-string v13, "[DSDS_TWOCHIP] slot2 has incomming call"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 465
    const-string v12, "ril.call_block"

    const-string v13, "slot2call"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 468
    :cond_1e
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    const-string v13, "[DSDS_TWOCHIP] get DUOS_CP_CTRL_BY_CALL block broadcast"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 470
    :cond_1f
    const/4 v12, 0x1

    if-ne v10, v12, :cond_21

    .line 471
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    iget-object v12, v12, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v12}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v12

    if-ne v9, v12, :cond_20

    .line 472
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[DSDS_TWOCHIP] Data On slot"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 473
    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setInternalDataEnabled(Z)Z

    .line 475
    :cond_20
    const-string v12, "ril.call_block"

    const-string v13, "false"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    const-string v13, "[DSDS_TWOCHIP] get DUOS_CP_CTRL_BY_CALL unblock broadcast"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 477
    :cond_21
    const/4 v12, 0x2

    if-ne v10, v12, :cond_22

    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    # invokes: Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->isNeedForRSE()Z
    invoke-static {v12}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$1600(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;)Z

    move-result v12

    if-eqz v12, :cond_22

    .line 478
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    iget-object v12, v12, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v12}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v12

    if-nez v12, :cond_9

    .line 479
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    const-string v13, "[DSDS_TWOCHIP] Set radioPower off - Slot1"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 480
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    iget-object v12, v12, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const-string v13, "ril.dsds.radio-off"

    const-string v14, "1"

    invoke-virtual {v12, v13, v14}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    iget-object v12, v12, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const-string v13, "ril.dsds.radio.recv-end"

    const-string v14, "0"

    invoke-virtual {v12, v13, v14}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    const/4 v12, 0x1

    # setter for: Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mDsdsTwochipRadioCtrl:Z
    invoke-static {v12}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$1802(Z)Z

    .line 483
    const/4 v12, 0x1

    # setter for: Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mRadioOffForRse:Z
    invoke-static {v12}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$1902(Z)Z

    .line 484
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v12}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$2000(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    goto/16 :goto_3

    .line 486
    :cond_22
    const/4 v12, 0x3

    if-ne v10, v12, :cond_9

    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    # invokes: Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->isNeedForRSE()Z
    invoke-static {v12}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$1600(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 487
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    iget-object v12, v12, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v12}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v12

    if-nez v12, :cond_9

    .line 488
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    const-string v13, "[DSDS_TWOCHIP] Set radioPower on - Slot1"

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 489
    const/4 v12, 0x1

    # setter for: Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mDsdsTwochipRadioCtrl:Z
    invoke-static {v12}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$1802(Z)Z

    .line 490
    const/4 v12, 0x0

    # setter for: Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mRadioOffForRse:Z
    invoke-static {v12}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$1902(Z)Z

    .line 491
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$2;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v12}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$2100(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v12

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    goto/16 :goto_3
.end method
