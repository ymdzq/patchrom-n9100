.class Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$4;
.super Ljava/lang/Object;
.source "MultiSimGsmServiceStateTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->setPrefNetTypeForMultiSim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

.field final synthetic val$msimm:Ljava/lang/String;

.field final synthetic val$slot2State:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1590
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    iput-object p2, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$4;->val$slot2State:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$4;->val$msimm:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1594
    const/4 v1, 0x0

    .line 1596
    .local v1, "sleepCount":I
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[MultiSim] Waiting for slave slot set GsmOnly. sleepCount : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1597
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 1598
    const/16 v2, 0x9

    if-le v1, v2, :cond_1

    const/4 v2, 0x0

    # setter for: Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->setModeFlag:Z
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$2302(Z)Z

    .line 1599
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 1600
    # getter for: Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->setModeFlag:Z
    invoke-static {}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$2300()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1601
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$2400(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$4;->this$0:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    iget v3, v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1608
    const-string v2, "ABSENT"

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$4;->val$slot2State:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "1"

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$4;->val$msimm:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1609
    const-string v2, "persist.radio.dsds.msimm"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1623
    :cond_2
    :goto_0
    return-void

    .line 1611
    :cond_3
    const-string v2, "1"

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$4;->val$msimm:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    # getter for: Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->isCmccSIM:Z
    invoke-static {}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$2500()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1612
    const-string v2, "persist.radio.dsds.msimm"

    const-string v3, "2"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1620
    :catch_0
    move-exception v0

    .line 1621
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1613
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_4
    :try_start_1
    # getter for: Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->useSlot2Data:Z
    invoke-static {}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$2600()Z

    move-result v2

    if-eqz v2, :cond_5

    # getter for: Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->isCmccSIM:Z
    invoke-static {}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$2500()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1614
    const-string v2, "persist.radio.dsds.msimm"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1615
    :cond_5
    # getter for: Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->isCmccSIM:Z
    invoke-static {}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->access$2500()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1616
    const-string v2, "persist.radio.dsds.msimm"

    const-string v3, "1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
