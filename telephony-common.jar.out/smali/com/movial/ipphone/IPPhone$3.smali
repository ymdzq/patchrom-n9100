.class Lcom/movial/ipphone/IPPhone$3;
.super Landroid/content/BroadcastReceiver;
.source "IPPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/movial/ipphone/IPPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/movial/ipphone/IPPhone;


# direct methods
.method constructor <init>(Lcom/movial/ipphone/IPPhone;)V
    .locals 0

    .prologue
    .line 345
    iput-object p1, p0, Lcom/movial/ipphone/IPPhone$3;->this$0:Lcom/movial/ipphone/IPPhone;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    .line 347
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, "action":Ljava/lang/String;
    const-string v4, "IPPhone"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 351
    iget-object v4, p0, Lcom/movial/ipphone/IPPhone$3;->this$0:Lcom/movial/ipphone/IPPhone;

    const-string v5, "wifi_state"

    const/4 v6, 0x4

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    # invokes: Lcom/movial/ipphone/IPPhone;->showDialog(II)V
    invoke-static {v4, v7, v5}, Lcom/movial/ipphone/IPPhone;->access$600(Lcom/movial/ipphone/IPPhone;II)V

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    const-string v4, "com.movial.ACTION_RADIO_ON"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 353
    iget-object v4, p0, Lcom/movial/ipphone/IPPhone$3;->this$0:Lcom/movial/ipphone/IPPhone;

    const-string v5, "com.movial.ACTION_RADIO_ON"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/movial/ipphone/IPPhone;->setRadioPower(Z)V

    goto :goto_0

    .line 354
    :cond_2
    const-string v4, "com.movial.IMS_REGISTRATION"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 355
    iget-object v4, p0, Lcom/movial/ipphone/IPPhone$3;->this$0:Lcom/movial/ipphone/IPPhone;

    const-string v5, "IMS_REG_STATUS"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    # setter for: Lcom/movial/ipphone/IPPhone;->mRegistered:Z
    invoke-static {v4, v5}, Lcom/movial/ipphone/IPPhone;->access$1602(Lcom/movial/ipphone/IPPhone;Z)Z

    goto :goto_0

    .line 356
    :cond_3
    const-string v4, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 357
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 358
    .local v1, "data":Landroid/os/Bundle;
    invoke-static {v1}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v3

    .line 360
    .local v3, "serviceState":Landroid/telephony/ServiceState;
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    # setter for: Lcom/movial/ipphone/IPPhone;->mState:I
    invoke-static {v4}, Lcom/movial/ipphone/IPPhone;->access$1702(I)I

    .line 361
    const-string v4, "IPPhone"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ServiceState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/movial/ipphone/IPPhone;->mState:I
    invoke-static {}, Lcom/movial/ipphone/IPPhone;->access$1700()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v4, p0, Lcom/movial/ipphone/IPPhone$3;->this$0:Lcom/movial/ipphone/IPPhone;

    # invokes: Lcom/movial/ipphone/IPPhone;->updateCellLocation()V
    invoke-static {v4}, Lcom/movial/ipphone/IPPhone;->access$1800(Lcom/movial/ipphone/IPPhone;)V

    .line 366
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.movial.ACTION_SERVICE_STATE_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 367
    .local v2, "intentForServiceState":Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 368
    iget-object v4, p0, Lcom/movial/ipphone/IPPhone$3;->this$0:Lcom/movial/ipphone/IPPhone;

    # getter for: Lcom/movial/ipphone/IPPhone;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/movial/ipphone/IPPhone;->access$1900(Lcom/movial/ipphone/IPPhone;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 369
    iget-object v4, p0, Lcom/movial/ipphone/IPPhone$3;->this$0:Lcom/movial/ipphone/IPPhone;

    # getter for: Lcom/movial/ipphone/IPPhone;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/movial/ipphone/IPPhone;->access$1900(Lcom/movial/ipphone/IPPhone;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
