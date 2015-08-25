.class Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;
.super Lcom/android/internal/util/State;
.source "EnterpriseConnectivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectedState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)V
    .locals 0

    .prologue
    .line 1644
    iput-object p1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/server/enterprise/billing/EnterpriseConnectivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .param p2, "x1"    # Lcom/android/server/enterprise/billing/EnterpriseConnectivity$1;

    .prologue
    .line 1644
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;-><init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 1647
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const-string v1, "ConnectedState: enter"

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->slogSM(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$1800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Ljava/lang/String;)V

    .line 1648
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->enableUidBlockRules(Z)V
    invoke-static {v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)V

    .line 1649
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v1, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mNetworkType:I
    invoke-static {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2900(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)I

    move-result v1

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->sendNetworkTypeChangeBroadcast(I)V
    invoke-static {v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)V

    .line 1650
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 1653
    iget-object v0, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const-string v1, "ConnectedState: exit"

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->slogSM(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$1800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Ljava/lang/String;)V

    .line 1654
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 1657
    iget-object v7, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ConnectedState "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget v10, p1, Landroid/os/Message;->what:I

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->eventToString(I)Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->slogSM(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$1800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Ljava/lang/String;)V

    .line 1659
    iget v7, p1, Landroid/os/Message;->what:I

    sparse-switch v7, :sswitch_data_0

    .line 1775
    iget-object v7, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ConnectedState ignore msg "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget v10, p1, Landroid/os/Message;->what:I

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->eventToString(I)Ljava/lang/String;
    invoke-static {v9, v10}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->slogSM(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$1800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Ljava/lang/String;)V

    .line 1776
    const/4 v5, 0x0

    .line 1779
    .local v5, "retVal":Z
    :goto_0
    return v5

    .line 1661
    .end local v5    # "retVal":Z
    :sswitch_0
    iget-object v7, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v8, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDisconnectingState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;
    invoke-static {v8}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;

    move-result-object v8

    # invokes: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v7, v8}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$5500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V

    .line 1662
    const/4 v5, 0x1

    .line 1663
    .restart local v5    # "retVal":Z
    goto :goto_0

    .line 1665
    .end local v5    # "retVal":Z
    :sswitch_1
    iget-object v7, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const-string v8, "ConnectedState onDisconnect"

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->slogSM(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$1800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Ljava/lang/String;)V

    .line 1666
    iget-object v7, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v8, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDisconnectingState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;
    invoke-static {v8}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;

    move-result-object v8

    # invokes: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v7, v8}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$5600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V

    .line 1667
    iget-object v7, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const/16 v8, 0x451

    invoke-virtual {v7, v8}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 1668
    const/4 v5, 0x1

    .line 1669
    .restart local v5    # "retVal":Z
    goto :goto_0

    .line 1671
    .end local v5    # "retVal":Z
    :sswitch_2
    monitor-enter p0

    .line 1673
    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const/4 v8, 0x1

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->enableEnterpriseDefaultRoute(Z)V
    invoke-static {v7, v8}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$5700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)V

    .line 1674
    iget-object v7, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const/4 v8, 0x1

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->enableRejectDefault(Z)V
    invoke-static {v7, v8}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$5800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1678
    :goto_1
    :try_start_1
    monitor-exit p0

    .line 1679
    const/4 v5, 0x1

    .line 1680
    .restart local v5    # "retVal":Z
    goto :goto_0

    .line 1675
    .end local v5    # "retVal":Z
    :catch_0
    move-exception v1

    .line 1676
    .local v1, "e":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception in ConnectedState adding default route: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->slogSM(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$1800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Ljava/lang/String;)V

    goto :goto_1

    .line 1678
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 1682
    :sswitch_3
    monitor-enter p0

    .line 1684
    :try_start_2
    iget-object v7, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const/4 v8, 0x0

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->enableEnterpriseDefaultRoute(Z)V
    invoke-static {v7, v8}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$5700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)V

    .line 1685
    iget-object v7, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const/4 v8, 0x0

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->enableRejectDefault(Z)V
    invoke-static {v7, v8}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$5800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1689
    :goto_2
    :try_start_3
    monitor-exit p0

    .line 1690
    const/4 v5, 0x1

    .line 1691
    .restart local v5    # "retVal":Z
    goto :goto_0

    .line 1686
    .end local v5    # "retVal":Z
    :catch_1
    move-exception v1

    .line 1687
    .restart local v1    # "e":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception in ConnectedState removing default route: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->slogSM(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$1800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Ljava/lang/String;)V

    goto :goto_2

    .line 1689
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v7

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v7

    .line 1693
    :sswitch_4
    iget-object v7, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const-string v8, "ConnectedState setting higher priority for lookup rule"

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->slogSM(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$1800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Ljava/lang/String;)V

    .line 1695
    monitor-enter p0

    .line 1697
    :try_start_4
    iget-object v7, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const/4 v8, 0x0

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->enableEnterpriseLookup(Z)V
    invoke-static {v7, v8}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$5900(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)V

    .line 1698
    iget-object v7, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const/4 v8, 0x1

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->enableEnterpriseLookup(Z)V
    invoke-static {v7, v8}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$5900(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1702
    :goto_3
    :try_start_5
    monitor-exit p0

    .line 1703
    const/4 v5, 0x1

    .line 1704
    .restart local v5    # "retVal":Z
    goto/16 :goto_0

    .line 1699
    .end local v5    # "retVal":Z
    :catch_2
    move-exception v1

    .line 1700
    .restart local v1    # "e":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception in ConnectedState adding lookup rule: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->slogSM(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$1800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Ljava/lang/String;)V

    goto :goto_3

    .line 1702
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v7

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v7

    .line 1706
    :sswitch_5
    iget-object v7, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget v8, p1, Landroid/os/Message;->what:I

    # invokes: Lcom/android/internal/util/StateMachine;->removeMessages(I)V
    invoke-static {v7, v8}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$6000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)V

    .line 1707
    iget-object v7, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->setContainersForConnection()V
    invoke-static {v7}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)V

    .line 1708
    iget-object v7, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    invoke-virtual {v7, v11}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getUidsFromDb(Z)Ljava/util/Collection;

    move-result-object v4

    .line 1709
    .local v4, "newUids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    iget-object v7, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->changeUidMarkRules(Ljava/util/Collection;)V
    invoke-static {v7, v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$6100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Ljava/util/Collection;)V

    .line 1710
    iget-object v7, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUids:Ljava/util/Set;
    invoke-static {v7}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->clear()V

    .line 1711
    iget-object v7, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUids:Ljava/util/Set;
    invoke-static {v7}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1712
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v7

    if-nez v7, :cond_0

    .line 1713
    iget-object v7, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # setter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mUidRulesEnabled:Z
    invoke-static {v7, v12}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$6202(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)Z

    .line 1715
    :cond_0
    const/4 v5, 0x1

    .line 1716
    .restart local v5    # "retVal":Z
    goto/16 :goto_0

    .line 1718
    .end local v4    # "newUids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    .end local v5    # "retVal":Z
    :sswitch_6
    monitor-enter p0

    .line 1719
    :try_start_6
    iget-object v7, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getSingleHandleUids()[I
    invoke-static {v7}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$6300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)[I

    move-result-object v0

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_4
    if-ge v2, v3, :cond_1

    aget v6, v0, v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1721
    .local v6, "uid":I
    :try_start_7
    iget-object v7, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const-string v8, "ConnectedState: set dns and rule for Media uid"

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->slogSM(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$1800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Ljava/lang/String;)V

    .line 1722
    iget-object v7, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->addMediaUidRule()V
    invoke-static {v7}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$6400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)V

    .line 1723
    iget-object v7, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v7, v7, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mNMSvc:Landroid/os/INetworkManagementService;
    invoke-static {v7}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/os/INetworkManagementService;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIface:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$6500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v6, v6}, Landroid/os/INetworkManagementService;->setDnsInterfaceForUidRange(Ljava/lang/String;II)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1719
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1724
    :catch_3
    move-exception v1

    .line 1725
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception ConnectedState setDnsInterfaceForUidRange: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogd(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$400(Ljava/lang/String;)V

    goto :goto_5

    .line 1728
    .end local v0    # "arr$":[I
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v6    # "uid":I
    :catchall_3
    move-exception v7

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v7

    .restart local v0    # "arr$":[I
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_1
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1729
    const/4 v5, 0x1

    .line 1730
    .restart local v5    # "retVal":Z
    goto/16 :goto_0

    .line 1732
    .end local v0    # "arr$":[I
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "retVal":Z
    :sswitch_7
    monitor-enter p0

    .line 1733
    :try_start_a
    iget-object v7, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getSingleHandleUids()[I
    invoke-static {v7}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$6300(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)[I

    move-result-object v0

    .restart local v0    # "arr$":[I
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_6
    if-ge v2, v3, :cond_2

    aget v6, v0, v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 1735
    .restart local v6    # "uid":I
    :try_start_b
    iget-object v7, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const-string v8, "ConnectedState: clear dns and rule for Media uid"

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->slogSM(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$1800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Ljava/lang/String;)V

    .line 1736
    iget-object v7, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->removeMediaUidRule()V
    invoke-static {v7}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$6600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)V

    .line 1737
    iget-object v7, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v7, v7, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mNMSvc:Landroid/os/INetworkManagementService;
    invoke-static {v7}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$1100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Landroid/os/INetworkManagementService;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mIface:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$6500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v6, v6}, Landroid/os/INetworkManagementService;->clearDnsInterfaceForUidRange(Ljava/lang/String;II)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 1733
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1738
    :catch_4
    move-exception v1

    .line 1739
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception ConnectedState clearDnsInterfaceForUidRange: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogd(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$400(Ljava/lang/String;)V

    goto :goto_7

    .line 1743
    .end local v0    # "arr$":[I
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v6    # "uid":I
    :catchall_4
    move-exception v7

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    throw v7

    .restart local v0    # "arr$":[I
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_2
    :try_start_d
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 1744
    const/4 v5, 0x1

    .line 1745
    .restart local v5    # "retVal":Z
    goto/16 :goto_0

    .line 1747
    .end local v0    # "arr$":[I
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "retVal":Z
    :sswitch_8
    iget-object v7, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v8, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getOffloadToWifi()Z
    invoke-static {v8}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$6700(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v8

    # setter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mOffloadToWifi:Z
    invoke-static {v7, v8}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4102(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)Z

    .line 1748
    iget-object v7, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mOffloadToWifi:Z
    invoke-static {v7}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v7, v7, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mDefRouteNetwork:I
    invoke-static {v7}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)I

    move-result v7

    if-ne v7, v11, :cond_3

    .line 1749
    iget-object v7, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const-string v8, "ConnectedState: turn off connection"

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->slogSM(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$1800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Ljava/lang/String;)V

    .line 1750
    iget-object v7, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->turnOffConnection()Z
    invoke-static {v7}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    .line 1751
    iget-object v7, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v8, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDisconnectingState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;
    invoke-static {v8}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;

    move-result-object v8

    # invokes: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v7, v8}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$6800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V

    .line 1752
    iget-object v7, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->sendNetworkTypeChangeBroadcast(I)V
    invoke-static {v7, v11}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;I)V

    .line 1754
    :cond_3
    const/4 v5, 0x1

    .line 1755
    .restart local v5    # "retVal":Z
    goto/16 :goto_0

    .line 1757
    .end local v5    # "retVal":Z
    :sswitch_9
    iget-object v7, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v8, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getEntDataEnabled()Z
    invoke-static {v8}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$6900(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v8

    # setter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mEntDataEnabled:Z
    invoke-static {v7, v8}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3602(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)Z

    .line 1758
    iget-object v7, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mEntDataEnabled:Z
    invoke-static {v7}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$3600(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1759
    iget-object v7, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const-string v8, "ConnectedState: turn off connection"

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->slogSM(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$1800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Ljava/lang/String;)V

    .line 1760
    iget-object v7, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->turnOffConnection()Z
    invoke-static {v7}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    .line 1761
    iget-object v7, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v8, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDisconnectingState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;
    invoke-static {v8}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;

    move-result-object v8

    # invokes: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v7, v8}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$7000(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V

    .line 1763
    :cond_4
    const/4 v5, 0x1

    .line 1764
    .restart local v5    # "retVal":Z
    goto/16 :goto_0

    .line 1766
    .end local v5    # "retVal":Z
    :sswitch_a
    iget-object v7, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v8, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getRoamingDataAllowed()Z
    invoke-static {v8}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$7100(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v8

    # setter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRoamingDataAllowed:Z
    invoke-static {v7, v8}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4502(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Z)Z

    .line 1767
    iget-object v7, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mRoamingDataAllowed:Z
    invoke-static {v7}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$4500(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1768
    iget-object v7, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    const-string v8, "ConnectedState: turn off connection"

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->slogSM(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$1800(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Ljava/lang/String;)V

    .line 1769
    iget-object v7, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->turnOffConnection()Z
    invoke-static {v7}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Z

    .line 1770
    iget-object v7, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    iget-object v8, p0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$ConnectedState;->this$1:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->mDisconnectingState:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;
    invoke-static {v8}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$2400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection$DisconnectingState;

    move-result-object v8

    # invokes: Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v7, v8}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->access$7200(Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;Lcom/android/internal/util/IState;)V

    .line 1772
    :cond_5
    const/4 v5, 0x1

    .line 1773
    .restart local v5    # "retVal":Z
    goto/16 :goto_0

    .line 1659
    nop

    :sswitch_data_0
    .sparse-switch
        0x3ea -> :sswitch_5
        0x3ef -> :sswitch_2
        0x3f0 -> :sswitch_3
        0x3f1 -> :sswitch_4
        0x3f2 -> :sswitch_8
        0x3f3 -> :sswitch_9
        0x3f5 -> :sswitch_a
        0x3fe -> :sswitch_6
        0x3ff -> :sswitch_7
        0x450 -> :sswitch_0
        0x451 -> :sswitch_1
    .end sparse-switch
.end method
