.class Landroid/net/wifi/OxygenStateMachine$OlsrdStoppedState;
.super Lcom/android/internal/util/State;
.source "OxygenStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/OxygenStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OlsrdStoppedState"
.end annotation


# instance fields
.field private retryCount:I

.field final synthetic this$0:Landroid/net/wifi/OxygenStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/OxygenStateMachine;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdStoppedState;->this$0:Landroid/net/wifi/OxygenStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x3

    iput v0, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdStoppedState;->retryCount:I

    .line 236
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const-wide/16 v5, 0x1388

    const v4, 0x2015e

    .line 240
    const/4 v0, 0x1

    .line 241
    .local v0, "retValue":Z
    # getter for: Landroid/net/wifi/OxygenStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/OxygenStateMachine;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "OxygenStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/OxygenStateMachine$OlsrdStoppedState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 259
    const/4 v0, 0x0

    .line 262
    :goto_0
    return v0

    .line 244
    :sswitch_0
    iget-object v1, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdStoppedState;->this$0:Landroid/net/wifi/OxygenStateMachine;

    # getter for: Landroid/net/wifi/OxygenStateMachine;->mOlsrdMonitor:Landroid/net/wifi/OxygenStateMachine$OlsrdMonitor;
    invoke-static {v1}, Landroid/net/wifi/OxygenStateMachine;->access$100(Landroid/net/wifi/OxygenStateMachine;)Landroid/net/wifi/OxygenStateMachine$OlsrdMonitor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/OxygenStateMachine$OlsrdMonitor;->startMonitoring()V

    .line 245
    iget-object v1, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdStoppedState;->this$0:Landroid/net/wifi/OxygenStateMachine;

    iget-object v2, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdStoppedState;->this$0:Landroid/net/wifi/OxygenStateMachine;

    # getter for: Landroid/net/wifi/OxygenStateMachine;->mOlsrdStartingState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/wifi/OxygenStateMachine;->access$800(Landroid/net/wifi/OxygenStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Landroid/net/wifi/OxygenStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/net/wifi/OxygenStateMachine;->access$900(Landroid/net/wifi/OxygenStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 248
    :sswitch_1
    iget-object v1, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdStoppedState;->this$0:Landroid/net/wifi/OxygenStateMachine;

    # getter for: Landroid/net/wifi/OxygenStateMachine;->mOlsrdMonitor:Landroid/net/wifi/OxygenStateMachine$OlsrdMonitor;
    invoke-static {v1}, Landroid/net/wifi/OxygenStateMachine;->access$100(Landroid/net/wifi/OxygenStateMachine;)Landroid/net/wifi/OxygenStateMachine$OlsrdMonitor;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/OxygenStateMachine$OlsrdMonitor;->stopMonitoring()V

    .line 249
    iget v1, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdStoppedState;->retryCount:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdStoppedState;->retryCount:I

    if-lez v1, :cond_1

    .line 250
    const-string v1, "OxygenStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fail to connect OLSRD. retry:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdStoppedState;->retryCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v1, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdStoppedState;->this$0:Landroid/net/wifi/OxygenStateMachine;

    invoke-virtual {v1, v4, v5, v6}, Landroid/net/wifi/OxygenStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_0

    .line 253
    :cond_1
    const-string v1, "OxygenStateMachine"

    const-string v2, "Fail to connect OLSRD. Restart OLSRD!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v1, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdStoppedState;->this$0:Landroid/net/wifi/OxygenStateMachine;

    invoke-virtual {v1, v4, v5, v6}, Landroid/net/wifi/OxygenStateMachine;->sendMessageDelayed(IJ)V

    .line 255
    iget-object v1, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdStoppedState;->this$0:Landroid/net/wifi/OxygenStateMachine;

    iget-object v2, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdStoppedState;->this$0:Landroid/net/wifi/OxygenStateMachine;

    # getter for: Landroid/net/wifi/OxygenStateMachine;->mOlsrdStoppingState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/wifi/OxygenStateMachine;->access$1000(Landroid/net/wifi/OxygenStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Landroid/net/wifi/OxygenStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/net/wifi/OxygenStateMachine;->access$1100(Landroid/net/wifi/OxygenStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 242
    nop

    :sswitch_data_0
    .sparse-switch
        0x2015e -> :sswitch_0
        0x20164 -> :sswitch_1
    .end sparse-switch
.end method
