.class Lcom/android/internal/telephony/ims/ImsPhone$1;
.super Landroid/content/BroadcastReceiver;
.source "ImsPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ims/ImsPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/ims/ImsPhone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/ims/ImsPhone;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsPhone$1;->this$0:Lcom/android/internal/telephony/ims/ImsPhone;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 214
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    const-string v1, "state"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 216
    .local v0, "mAirplaneMode":Z
    const-string v1, "IMSPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AirplaneMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isRegistered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsPhone$1;->this$0:Lcom/android/internal/telephony/ims/ImsPhone;

    # invokes: Lcom/android/internal/telephony/ims/ImsPhone;->isRegistered()Z
    invoke-static {v3}, Lcom/android/internal/telephony/ims/ImsPhone;->access$000(Lcom/android/internal/telephony/ims/ImsPhone;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsPhone$1;->this$0:Lcom/android/internal/telephony/ims/ImsPhone;

    # invokes: Lcom/android/internal/telephony/ims/ImsPhone;->isRegistered()Z
    invoke-static {v1}, Lcom/android/internal/telephony/ims/ImsPhone;->access$000(Lcom/android/internal/telephony/ims/ImsPhone;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 218
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsPhone$1;->this$0:Lcom/android/internal/telephony/ims/ImsPhone;

    # getter for: Lcom/android/internal/telephony/ims/ImsPhone;->mServiceState:Landroid/telephony/ServiceState;
    invoke-static {v1}, Lcom/android/internal/telephony/ims/ImsPhone;->access$100(Lcom/android/internal/telephony/ims/ImsPhone;)Landroid/telephony/ServiceState;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/telephony/ServiceState;->setVoiceRegState(I)V

    .line 223
    .end local v0    # "mAirplaneMode":Z
    :cond_0
    :goto_0
    return-void

    .line 219
    .restart local v0    # "mAirplaneMode":Z
    :cond_1
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsPhone$1;->this$0:Lcom/android/internal/telephony/ims/ImsPhone;

    # invokes: Lcom/android/internal/telephony/ims/ImsPhone;->isRegistered()Z
    invoke-static {v1}, Lcom/android/internal/telephony/ims/ImsPhone;->access$000(Lcom/android/internal/telephony/ims/ImsPhone;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsPhone$1;->this$0:Lcom/android/internal/telephony/ims/ImsPhone;

    # getter for: Lcom/android/internal/telephony/ims/ImsPhone;->mServiceState:Landroid/telephony/ServiceState;
    invoke-static {v1}, Lcom/android/internal/telephony/ims/ImsPhone;->access$100(Lcom/android/internal/telephony/ims/ImsPhone;)Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/telephony/ServiceState;->setVoiceRegState(I)V

    goto :goto_0
.end method
