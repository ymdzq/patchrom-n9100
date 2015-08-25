.class Lcom/movial/ipphone/IPCallTracker$1;
.super Landroid/os/Handler;
.source "IPCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/movial/ipphone/IPCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/movial/ipphone/IPCallTracker;


# direct methods
.method constructor <init>(Lcom/movial/ipphone/IPCallTracker;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/movial/ipphone/IPCallTracker$1;->this$0:Lcom/movial/ipphone/IPCallTracker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, -0x1

    .line 126
    const-string v6, "IPCallTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleMessage: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 177
    iget-object v6, p0, Lcom/movial/ipphone/IPCallTracker$1;->this$0:Lcom/movial/ipphone/IPCallTracker;

    # invokes: Lcom/movial/ipphone/IPCallTracker;->updateConnection(Landroid/os/Message;)V
    invoke-static {v6, p1}, Lcom/movial/ipphone/IPCallTracker;->access$400(Lcom/movial/ipphone/IPCallTracker;Landroid/os/Message;)V

    .line 180
    :goto_0
    return-void

    .line 129
    :sswitch_0
    iget-object v6, p0, Lcom/movial/ipphone/IPCallTracker$1;->this$0:Lcom/movial/ipphone/IPCallTracker;

    const-string v7, "EVENT_REMOVE_CONNECTION"

    invoke-virtual {v6, v7}, Lcom/movial/ipphone/IPCallTracker;->log(Ljava/lang/String;)V

    .line 130
    iget-object v6, p0, Lcom/movial/ipphone/IPCallTracker$1;->this$0:Lcom/movial/ipphone/IPCallTracker;

    iget-object v7, p0, Lcom/movial/ipphone/IPCallTracker$1;->this$0:Lcom/movial/ipphone/IPCallTracker;

    iget v7, v7, Lcom/movial/ipphone/IPCallTracker;->pendingMOIndex:I

    sget-object v8, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    # invokes: Lcom/movial/ipphone/IPCallTracker;->removeConnection(ILcom/android/internal/telephony/Connection$DisconnectCause;)Z
    invoke-static {v6, v7, v8}, Lcom/movial/ipphone/IPCallTracker;->access$000(Lcom/movial/ipphone/IPCallTracker;ILcom/android/internal/telephony/Connection$DisconnectCause;)Z

    .line 131
    iget-object v6, p0, Lcom/movial/ipphone/IPCallTracker$1;->this$0:Lcom/movial/ipphone/IPCallTracker;

    iput v9, v6, Lcom/movial/ipphone/IPCallTracker;->pendingMOIndex:I

    .line 132
    iget-object v6, p0, Lcom/movial/ipphone/IPCallTracker$1;->this$0:Lcom/movial/ipphone/IPCallTracker;

    # invokes: Lcom/movial/ipphone/IPCallTracker;->updatePhoneState()V
    invoke-static {v6}, Lcom/movial/ipphone/IPCallTracker;->access$100(Lcom/movial/ipphone/IPCallTracker;)V

    .line 133
    iget-object v6, p0, Lcom/movial/ipphone/IPCallTracker$1;->this$0:Lcom/movial/ipphone/IPCallTracker;

    iget-object v6, v6, Lcom/movial/ipphone/IPCallTracker;->phone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v6}, Lcom/movial/ipphone/IPPhone;->notifyPreciseCallStateChanged()V

    goto :goto_0

    .line 136
    :sswitch_1
    iget-object v6, p0, Lcom/movial/ipphone/IPCallTracker$1;->this$0:Lcom/movial/ipphone/IPCallTracker;

    const-string v7, "EVENT_KEEP_RINGING"

    invoke-virtual {v6, v7}, Lcom/movial/ipphone/IPCallTracker;->log(Ljava/lang/String;)V

    .line 137
    iget-object v6, p0, Lcom/movial/ipphone/IPCallTracker$1;->this$0:Lcom/movial/ipphone/IPCallTracker;

    iget-object v6, v6, Lcom/movial/ipphone/IPCallTracker;->phone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v6}, Lcom/movial/ipphone/IPPhone;->notifyIncomingRing()V

    .line 138
    const/16 v6, 0x2a

    iget-object v7, p0, Lcom/movial/ipphone/IPCallTracker$1;->this$0:Lcom/movial/ipphone/IPCallTracker;

    # getter for: Lcom/movial/ipphone/IPCallTracker;->DELAYED_KEEP_RINGING:I
    invoke-static {v7}, Lcom/movial/ipphone/IPCallTracker;->access$200(Lcom/movial/ipphone/IPCallTracker;)I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {p0, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 141
    :sswitch_2
    iget-object v6, p0, Lcom/movial/ipphone/IPCallTracker$1;->this$0:Lcom/movial/ipphone/IPCallTracker;

    const-string v7, "EVENT_CONFERENCE_FINISHED"

    invoke-virtual {v6, v7}, Lcom/movial/ipphone/IPCallTracker;->log(Ljava/lang/String;)V

    .line 142
    iget-object v6, p0, Lcom/movial/ipphone/IPCallTracker$1;->this$0:Lcom/movial/ipphone/IPCallTracker;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/movial/ipphone/IPCallTracker;->pendingConf:Z

    .line 143
    iget-object v6, p0, Lcom/movial/ipphone/IPCallTracker$1;->this$0:Lcom/movial/ipphone/IPCallTracker;

    iget-object v6, v6, Lcom/movial/ipphone/IPCallTracker;->phone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v6}, Lcom/movial/ipphone/IPPhone;->notifyPreciseCallStateChanged()V

    goto :goto_0

    .line 146
    :sswitch_3
    iget-object v6, p0, Lcom/movial/ipphone/IPCallTracker$1;->this$0:Lcom/movial/ipphone/IPCallTracker;

    const-string v7, "EVENT_CLEAR_CONNECTIONS"

    invoke-virtual {v6, v7}, Lcom/movial/ipphone/IPCallTracker;->log(Ljava/lang/String;)V

    .line 147
    iget-object v6, p0, Lcom/movial/ipphone/IPCallTracker$1;->this$0:Lcom/movial/ipphone/IPCallTracker;

    # invokes: Lcom/movial/ipphone/IPCallTracker;->clearConnections()V
    invoke-static {v6}, Lcom/movial/ipphone/IPCallTracker;->access$300(Lcom/movial/ipphone/IPCallTracker;)V

    goto :goto_0

    .line 150
    :sswitch_4
    iget-object v6, p0, Lcom/movial/ipphone/IPCallTracker$1;->this$0:Lcom/movial/ipphone/IPCallTracker;

    const-string v7, "IPUtils.EVENT_IMS_SERVICE_CLOSED"

    invoke-virtual {v6, v7}, Lcom/movial/ipphone/IPCallTracker;->log(Ljava/lang/String;)V

    .line 151
    iget-object v6, p0, Lcom/movial/ipphone/IPCallTracker$1;->this$0:Lcom/movial/ipphone/IPCallTracker;

    invoke-virtual {v6}, Lcom/movial/ipphone/IPCallTracker;->hangupAll()V

    goto :goto_0

    .line 154
    :sswitch_5
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 155
    .local v0, "bundle":Landroid/os/Bundle;
    const-class v6, Lcom/movial/ipphone/IPCallTracker;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 156
    const-string v6, "call"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/movial/ipphone/SessionCall;

    .line 157
    .local v5, "sessioncall":Lcom/movial/ipphone/SessionCall;
    const-string v6, "IPCallTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MSG_UPDATE_CONNECTION_FAILED: pendingMOIndex="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/movial/ipphone/IPCallTracker$1;->this$0:Lcom/movial/ipphone/IPCallTracker;

    iget v8, v8, Lcom/movial/ipphone/IPCallTracker;->pendingMOIndex:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const-string v6, "IPCallTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MSG_UPDATE_CONNECTION_FAILED: sessioncall.state="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/movial/ipphone/SessionCall;->state:Lcom/movial/ipphone/SessionCall$State;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const-string v6, "IPCallTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MSG_UPDATE_CONNECTION_FAILED: sessioncall.inConf="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, v5, Lcom/movial/ipphone/SessionCall;->inConf:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v6, p0, Lcom/movial/ipphone/IPCallTracker$1;->this$0:Lcom/movial/ipphone/IPCallTracker;

    iget v6, v6, Lcom/movial/ipphone/IPCallTracker;->pendingMOIndex:I

    if-ltz v6, :cond_0

    .line 162
    iget-object v6, p0, Lcom/movial/ipphone/IPCallTracker$1;->this$0:Lcom/movial/ipphone/IPCallTracker;

    iget-object v7, p0, Lcom/movial/ipphone/IPCallTracker$1;->this$0:Lcom/movial/ipphone/IPCallTracker;

    iget v7, v7, Lcom/movial/ipphone/IPCallTracker;->pendingMOIndex:I

    sget-object v8, Lcom/android/internal/telephony/Connection$DisconnectCause;->SERVER_ERROR:Lcom/android/internal/telephony/Connection$DisconnectCause;

    # invokes: Lcom/movial/ipphone/IPCallTracker;->removeConnection(ILcom/android/internal/telephony/Connection$DisconnectCause;)Z
    invoke-static {v6, v7, v8}, Lcom/movial/ipphone/IPCallTracker;->access$000(Lcom/movial/ipphone/IPCallTracker;ILcom/android/internal/telephony/Connection$DisconnectCause;)Z

    .line 163
    iget-object v6, p0, Lcom/movial/ipphone/IPCallTracker$1;->this$0:Lcom/movial/ipphone/IPCallTracker;

    iput v9, v6, Lcom/movial/ipphone/IPCallTracker;->pendingMOIndex:I

    .line 164
    iget-object v6, p0, Lcom/movial/ipphone/IPCallTracker$1;->this$0:Lcom/movial/ipphone/IPCallTracker;

    # invokes: Lcom/movial/ipphone/IPCallTracker;->updatePhoneState()V
    invoke-static {v6}, Lcom/movial/ipphone/IPCallTracker;->access$100(Lcom/movial/ipphone/IPCallTracker;)V

    .line 165
    iget-object v6, p0, Lcom/movial/ipphone/IPCallTracker$1;->this$0:Lcom/movial/ipphone/IPCallTracker;

    iget-object v6, v6, Lcom/movial/ipphone/IPCallTracker;->pendingMOConn:Lcom/movial/ipphone/IPCallTracker$pendingConnection;

    invoke-virtual {v6}, Lcom/movial/ipphone/IPCallTracker$pendingConnection;->clear()V

    .line 168
    :cond_0
    iget-object v6, p0, Lcom/movial/ipphone/IPCallTracker$1;->this$0:Lcom/movial/ipphone/IPCallTracker;

    iget-object v6, v6, Lcom/movial/ipphone/IPCallTracker;->backgroundCall:Lcom/movial/ipphone/IPCall;

    iget-object v6, v6, Lcom/movial/ipphone/IPCall;->connections:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 169
    .local v2, "connCopy":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "s":I
    :goto_1
    if-ge v3, v4, :cond_1

    .line 170
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/movial/ipphone/IPConnection;

    .line 171
    .local v1, "conn":Lcom/movial/ipphone/IPConnection;
    iget-object v6, v5, Lcom/movial/ipphone/SessionCall;->state:Lcom/movial/ipphone/SessionCall$State;

    invoke-virtual {v1, v6}, Lcom/movial/ipphone/IPConnection;->update(Lcom/movial/ipphone/SessionCall$State;)Z

    .line 169
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 174
    .end local v1    # "conn":Lcom/movial/ipphone/IPConnection;
    :cond_1
    iget-object v6, p0, Lcom/movial/ipphone/IPCallTracker$1;->this$0:Lcom/movial/ipphone/IPCallTracker;

    iget-object v6, v6, Lcom/movial/ipphone/IPCallTracker;->phone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v6}, Lcom/movial/ipphone/IPPhone;->notifyPreciseCallStateChanged()V

    goto/16 :goto_0

    .line 127
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_5
        0x29 -> :sswitch_0
        0x2a -> :sswitch_1
        0x2b -> :sswitch_2
        0x2c -> :sswitch_3
        0x2e -> :sswitch_4
    .end sparse-switch
.end method
