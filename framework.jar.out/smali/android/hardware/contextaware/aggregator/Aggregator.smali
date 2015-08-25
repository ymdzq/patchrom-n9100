.class public abstract Landroid/hardware/contextaware/aggregator/Aggregator;
.super Landroid/hardware/contextaware/manager/ContextProvider;
.source "Aggregator.java"

# interfaces
.implements Landroid/hardware/contextaware/manager/IContextObserver;
.implements Landroid/hardware/contextaware/manager/fault/ICmdProcessResultObserver;


# instance fields
.field private mAggregatorFaultDetectionResult:Z

.field private final mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/hardware/contextaware/manager/ContextComponent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Ljava/util/concurrent/CopyOnWriteArrayList;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p5, "observable"    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            "Landroid/os/Looper;",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/hardware/contextaware/manager/ContextComponent;",
            ">;",
            "Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 68
    .local p4, "collectionList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/hardware/contextaware/manager/ContextComponent;>;"
    invoke-direct {p0, p1, p2, p3, p5}, Landroid/hardware/contextaware/manager/ContextProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 69
    iput-object p4, p0, Landroid/hardware/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 70
    return-void
.end method


# virtual methods
.method protected final checkFaultDetectionResult()Z
    .locals 1

    .prologue
    .line 400
    iget-boolean v0, p0, Landroid/hardware/contextaware/aggregator/Aggregator;->mAggregatorFaultDetectionResult:Z

    return v0
.end method

.method protected final clearExtension()V
    .locals 3

    .prologue
    .line 158
    invoke-super {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->isRunning()Z

    move-result v2

    if-nez v2, :cond_1

    .line 169
    :cond_0
    return-void

    .line 162
    :cond_1
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 163
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/contextaware/manager/ContextComponent;>;"
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/manager/ContextComponent;

    .line 165
    .local v1, "next":Landroid/hardware/contextaware/manager/ContextComponent;
    if-eqz v1, :cond_2

    .line 166
    invoke-virtual {v1}, Landroid/hardware/contextaware/manager/ContextComponent;->clear()V

    goto :goto_0
.end method

.method protected final disableExtension()V
    .locals 3

    .prologue
    .line 264
    invoke-super {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->isDisable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 275
    :cond_0
    return-void

    .line 268
    :cond_1
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 269
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/contextaware/manager/ContextComponent;>;"
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 270
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/manager/ContextComponent;

    .line 271
    .local v1, "next":Landroid/hardware/contextaware/manager/ContextComponent;
    if-eqz v1, :cond_2

    .line 272
    invoke-virtual {v1}, Landroid/hardware/contextaware/manager/ContextComponent;->disable()V

    goto :goto_0
.end method

.method protected final disableForStop(Z)V
    .locals 0
    .param p1, "restore"    # Z

    .prologue
    .line 462
    return-void
.end method

.method protected final enableExtension()V
    .locals 3

    .prologue
    .line 246
    invoke-super {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->isEnable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 258
    :cond_0
    return-void

    .line 250
    :cond_1
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 251
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/contextaware/manager/ContextComponent;>;"
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 252
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/manager/ContextComponent;

    .line 253
    .local v1, "next":Landroid/hardware/contextaware/manager/ContextComponent;
    if-eqz v1, :cond_2

    .line 254
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 255
    invoke-virtual {v1}, Landroid/hardware/contextaware/manager/ContextComponent;->enable()V

    goto :goto_0
.end method

.method protected final enableForStart(Z)V
    .locals 0
    .param p1, "restore"    # Z

    .prologue
    .line 451
    return-void
.end method

.method protected final getContextInfo(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;)V
    .locals 1
    .param p1, "listener"    # Landroid/hardware/contextaware/manager/ContextAwareService$Listener;

    .prologue
    .line 286
    sget-object v0, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->ERROR_NOT_SUPPORT_CMD:Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 288
    return-void
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 375
    const/4 v0, 0x0

    .line 377
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->checkFaultDetectionResult()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 378
    const/4 v1, 0x0

    sget-object v2, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->SUCCESS:Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v2}, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, v1, v2}, Landroid/hardware/contextaware/manager/ContextProvider;->getFaultDetectionResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 389
    :goto_0
    return-object v0

    .line 382
    :cond_0
    const/4 v1, 0x1

    sget-object v2, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->ERROR_SUB_COLLECTION:Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v2}, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, v1, v2}, Landroid/hardware/contextaware/manager/ContextProvider;->getFaultDetectionResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method protected final getSubCollectionObj(Ljava/lang/String;)Landroid/hardware/contextaware/manager/ContextComponent;
    .locals 4
    .param p1, "collectionName"    # Ljava/lang/String;

    .prologue
    .line 327
    const/4 v2, 0x0

    .line 329
    .local v2, "subCollectionObj":Landroid/hardware/contextaware/manager/ContextComponent;
    iget-object v3, p0, Landroid/hardware/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 330
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/contextaware/manager/ContextComponent;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 331
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/manager/ContextComponent;

    .line 332
    .local v1, "obj":Landroid/hardware/contextaware/manager/ContextComponent;
    if-eqz v1, :cond_0

    .line 335
    invoke-virtual {v1}, Landroid/hardware/contextaware/manager/ContextComponent;->getContextType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 336
    move-object v2, v1

    .line 341
    .end local v1    # "obj":Landroid/hardware/contextaware/manager/ContextComponent;
    :cond_1
    return-object v2
.end method

.method protected final getSubCollectors()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/hardware/contextaware/manager/ContextComponent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 439
    iget-object v0, p0, Landroid/hardware/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method protected final initialize()V
    .locals 0

    .prologue
    .line 91
    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->initializeAggregator()V

    .line 92
    return-void
.end method

.method protected initializeAggregator()V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method protected final initializeFaultDetectionResult()V
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/contextaware/aggregator/Aggregator;->mAggregatorFaultDetectionResult:Z

    .line 240
    return-void
.end method

.method protected final notifyApStatus()V
    .locals 4

    .prologue
    .line 304
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 305
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/contextaware/manager/ContextComponent;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 306
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/manager/ContextComponent;

    .line 307
    .local v1, "next":Landroid/hardware/contextaware/manager/ContextComponent;
    if-eqz v1, :cond_0

    .line 310
    instance-of v2, v1, Landroid/hardware/contextaware/dataprovider/androidprovider/AndroidProvider;

    if-eqz v2, :cond_1

    move-object v2, v1

    .line 311
    check-cast v2, Landroid/hardware/contextaware/dataprovider/androidprovider/AndroidProvider;

    invoke-super {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getAPStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/hardware/contextaware/dataprovider/androidprovider/AndroidProvider;->updateAPStatus(I)V

    .line 313
    :cond_1
    invoke-virtual {v1}, Landroid/hardware/contextaware/manager/ContextComponent;->updateApPowerStatusForPreparedCollection()V

    goto :goto_0

    .line 315
    .end local v1    # "next":Landroid/hardware/contextaware/manager/ContextComponent;
    :cond_2
    const/4 v2, 0x0

    invoke-super {p0, v2}, Landroid/hardware/contextaware/manager/ContextProvider;->setAPStatus(I)V

    .line 316
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 206
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 207
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/contextaware/manager/ContextComponent;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 208
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/manager/ContextComponent;

    .line 209
    .local v1, "next":Landroid/hardware/contextaware/manager/ContextComponent;
    if-eqz v1, :cond_0

    .line 210
    invoke-virtual {v1}, Landroid/hardware/contextaware/manager/ContextComponent;->pause()V

    goto :goto_0

    .line 214
    .end local v1    # "next":Landroid/hardware/contextaware/manager/ContextComponent;
    :cond_1
    invoke-super {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->pause()V

    .line 215
    return-void
.end method

.method protected final registerObserver()V
    .locals 3

    .prologue
    .line 175
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 176
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/contextaware/manager/ContextComponent;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 177
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/manager/ContextComponent;

    .line 178
    .local v1, "next":Landroid/hardware/contextaware/manager/ContextComponent;
    if-eqz v1, :cond_0

    .line 179
    invoke-virtual {v1, p0}, Landroid/hardware/contextaware/manager/ContextComponent;->registerObserver(Landroid/hardware/contextaware/manager/IContextObserver;)V

    .line 180
    invoke-virtual {v1, p0}, Landroid/hardware/contextaware/manager/ContextComponent;->registerCmdProcessResultObserver(Landroid/hardware/contextaware/manager/fault/ICmdProcessResultObserver;)V

    goto :goto_0

    .line 183
    .end local v1    # "next":Landroid/hardware/contextaware/manager/ContextComponent;
    :cond_1
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 224
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 225
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/contextaware/manager/ContextComponent;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 226
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/manager/ContextComponent;

    .line 227
    .local v1, "next":Landroid/hardware/contextaware/manager/ContextComponent;
    if-eqz v1, :cond_0

    .line 228
    invoke-virtual {v1}, Landroid/hardware/contextaware/manager/ContextComponent;->resume()V

    goto :goto_0

    .line 232
    .end local v1    # "next":Landroid/hardware/contextaware/manager/ContextComponent;
    :cond_1
    invoke-super {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->resume()V

    .line 233
    return-void
.end method

.method public final start(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;I)V
    .locals 3
    .param p1, "listener"    # Landroid/hardware/contextaware/manager/ContextAwareService$Listener;
    .param p2, "operation"    # I

    .prologue
    .line 114
    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->initializeFaultDetectionResult()V

    .line 115
    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->registerObserver()V

    .line 117
    invoke-super {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->isEnable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 118
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 119
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/contextaware/manager/ContextComponent;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 120
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/manager/ContextComponent;

    .line 121
    .local v1, "next":Landroid/hardware/contextaware/manager/ContextComponent;
    if-eqz v1, :cond_0

    .line 122
    invoke-virtual {v1, p1, p2}, Landroid/hardware/contextaware/manager/ContextComponent;->start(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;I)V

    goto :goto_0

    .line 127
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/contextaware/manager/ContextComponent;>;"
    .end local v1    # "next":Landroid/hardware/contextaware/manager/ContextComponent;
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/hardware/contextaware/manager/ContextProvider;->start(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;I)V

    .line 128
    return-void
.end method

.method public final stop(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;I)V
    .locals 3
    .param p1, "listener"    # Landroid/hardware/contextaware/manager/ContextAwareService$Listener;
    .param p2, "operation"    # I

    .prologue
    .line 139
    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->initializeFaultDetectionResult()V

    .line 141
    invoke-super {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->isDisable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 142
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 143
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/contextaware/manager/ContextComponent;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 144
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/manager/ContextComponent;

    .line 145
    .local v1, "next":Landroid/hardware/contextaware/manager/ContextComponent;
    if-eqz v1, :cond_0

    .line 146
    invoke-virtual {v1, p1, p2}, Landroid/hardware/contextaware/manager/ContextComponent;->stop(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;I)V

    goto :goto_0

    .line 151
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/contextaware/manager/ContextComponent;>;"
    .end local v1    # "next":Landroid/hardware/contextaware/manager/ContextComponent;
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/hardware/contextaware/manager/ContextProvider;->stop(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;I)V

    .line 152
    return-void
.end method

.method protected final terminate()V
    .locals 0

    .prologue
    .line 101
    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->unregisterObserver()V

    .line 102
    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->terminateAggregator()V

    .line 103
    return-void
.end method

.method protected terminateAggregator()V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method protected final unregisterObserver()V
    .locals 3

    .prologue
    .line 189
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 190
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/contextaware/manager/ContextComponent;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 191
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/manager/ContextComponent;

    .line 192
    .local v1, "next":Landroid/hardware/contextaware/manager/ContextComponent;
    if-eqz v1, :cond_0

    .line 193
    invoke-virtual {v1, p0}, Landroid/hardware/contextaware/manager/ContextComponent;->unregisterObserver(Landroid/hardware/contextaware/manager/IContextObserver;)V

    .line 194
    invoke-virtual {v1, p0}, Landroid/hardware/contextaware/manager/ContextComponent;->unregisterCmdProcessResultObserver(Landroid/hardware/contextaware/manager/fault/ICmdProcessResultObserver;)V

    goto :goto_0

    .line 197
    .end local v1    # "next":Landroid/hardware/contextaware/manager/ContextComponent;
    :cond_1
    return-void
.end method

.method protected updateApSleep()V
    .locals 0

    .prologue
    .line 352
    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->notifyApStatus()V

    .line 353
    return-void
.end method

.method protected updateApWakeup()V
    .locals 0

    .prologue
    .line 363
    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->notifyApStatus()V

    .line 364
    return-void
.end method

.method public final updateCmdProcessResult(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/os/Bundle;

    .prologue
    .line 413
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->CMD_PROCESS_FAULT_DETECTION:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 417
    :cond_1
    const-string v0, "CheckResult"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/contextaware/aggregator/Aggregator;->mAggregatorFaultDetectionResult:Z

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->getContextType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : SubCollection("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/hardware/contextaware/ContextList;->getInstance()Landroid/hardware/contextaware/ContextList;

    move-result-object v1

    const-string v2, "Service"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") process result is failed."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public abstract updateContext(Ljava/lang/String;Landroid/os/Bundle;)V
.end method
