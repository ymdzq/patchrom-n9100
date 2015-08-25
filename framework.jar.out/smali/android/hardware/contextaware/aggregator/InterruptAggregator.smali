.class public Landroid/hardware/contextaware/aggregator/InterruptAggregator;
.super Landroid/hardware/contextaware/manager/InterruptContextProvider;
.source "InterruptAggregator.java"


# direct methods
.method public constructor <init>(Landroid/hardware/contextaware/manager/ContextComponent;)V
    .locals 0
    .param p1, "provider"    # Landroid/hardware/contextaware/manager/ContextComponent;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/hardware/contextaware/manager/InterruptContextProvider;-><init>(Landroid/hardware/contextaware/manager/ContextComponent;)V

    .line 39
    return-void
.end method


# virtual methods
.method public final start(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;I)V
    .locals 3
    .param p1, "listener"    # Landroid/hardware/contextaware/manager/ContextAwareService$Listener;
    .param p2, "operation"    # I

    .prologue
    .line 50
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 51
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/InterruptAggregator;->mProvider:Landroid/hardware/contextaware/manager/ContextComponent;

    check-cast v2, Landroid/hardware/contextaware/aggregator/Aggregator;

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/Aggregator;->initializeFaultDetectionResult()V

    .line 52
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/InterruptAggregator;->mProvider:Landroid/hardware/contextaware/manager/ContextComponent;

    check-cast v2, Landroid/hardware/contextaware/aggregator/Aggregator;

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/Aggregator;->registerObserver()V

    .line 54
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/InterruptAggregator;->mProvider:Landroid/hardware/contextaware/manager/ContextComponent;

    check-cast v2, Landroid/hardware/contextaware/aggregator/Aggregator;

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/Aggregator;->getSubCollectors()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 55
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/contextaware/manager/ContextComponent;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 56
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/manager/ContextComponent;

    .line 57
    .local v1, "next":Landroid/hardware/contextaware/manager/ContextComponent;
    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {v1, p1, p2}, Landroid/hardware/contextaware/manager/ContextComponent;->start(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;I)V

    goto :goto_0

    .line 62
    .end local v1    # "next":Landroid/hardware/contextaware/manager/ContextComponent;
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/hardware/contextaware/manager/InterruptContextProvider;->start(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;I)V

    .line 63
    return-void
.end method

.method public final stop(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;I)V
    .locals 3
    .param p1, "listener"    # Landroid/hardware/contextaware/manager/ContextAwareService$Listener;
    .param p2, "operation"    # I

    .prologue
    .line 74
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 75
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/InterruptAggregator;->mProvider:Landroid/hardware/contextaware/manager/ContextComponent;

    check-cast v2, Landroid/hardware/contextaware/aggregator/Aggregator;

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/Aggregator;->initializeFaultDetectionResult()V

    .line 77
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/InterruptAggregator;->mProvider:Landroid/hardware/contextaware/manager/ContextComponent;

    check-cast v2, Landroid/hardware/contextaware/aggregator/Aggregator;

    invoke-virtual {v2}, Landroid/hardware/contextaware/aggregator/Aggregator;->getSubCollectors()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 78
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/contextaware/manager/ContextComponent;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 79
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/manager/ContextComponent;

    .line 80
    .local v1, "next":Landroid/hardware/contextaware/manager/ContextComponent;
    if-eqz v1, :cond_0

    .line 81
    invoke-virtual {v1, p1, p2}, Landroid/hardware/contextaware/manager/ContextComponent;->stop(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;I)V

    goto :goto_0

    .line 85
    .end local v1    # "next":Landroid/hardware/contextaware/manager/ContextComponent;
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/hardware/contextaware/manager/InterruptContextProvider;->stop(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;I)V

    .line 86
    return-void
.end method
