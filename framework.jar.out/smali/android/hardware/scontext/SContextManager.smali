.class public Landroid/hardware/scontext/SContextManager;
.super Ljava/lang/Object;
.source "SContextManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SContextManager"


# instance fields
.field private mAvailableServiceMap:Ljava/util/HashMap;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field mMainLooper:Landroid/os/Looper;

.field private mSContextService:Landroid/hardware/scontext/ISContextService;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .param p1, "mainLooper"    # Landroid/os/Looper;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/scontext/SContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    .line 58
    const-string v0, "scontext"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/scontext/ISContextService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/scontext/ISContextService;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    .line 60
    iput-object p1, p0, Landroid/hardware/scontext/SContextManager;->mMainLooper:Landroid/os/Looper;

    .line 61
    return-void
.end method

.method private changeParameters(Landroid/hardware/scontext/SContextListener;Landroid/hardware/scontext/SContextProperty;)Z
    .locals 6
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "property"    # Landroid/hardware/scontext/SContextProperty;

    .prologue
    const/4 v3, 0x0

    .line 656
    invoke-virtual {p2}, Landroid/hardware/scontext/SContextProperty;->getType()I

    move-result v2

    .line 657
    .local v2, "service":I
    invoke-direct {p0, p1, v2}, Landroid/hardware/scontext/SContextManager;->checkListenerAndService(Landroid/hardware/scontext/SContextListener;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 677
    :goto_0
    return v3

    .line 661
    :cond_0
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v1

    .line 663
    .local v1, "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    if-nez v1, :cond_1

    .line 664
    const-string v4, "SContextManager"

    const-string v5, "  .changeParameters : SContextListener is null!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 669
    :cond_1
    :try_start_0
    iget-object v3, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v3, v1, p2}, Landroid/hardware/scontext/ISContextService;->changeParameters(Landroid/os/IBinder;Landroid/hardware/scontext/SContextProperty;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 670
    const-string v3, "SContextManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  .changeParameters : listener = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", service="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 677
    :cond_2
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 674
    :catch_0
    move-exception v0

    .line 675
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "SContextManager"

    const-string v4, "RemoteException in changeParameters: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private checkListenerAndService(Landroid/hardware/scontext/SContextListener;I)Z
    .locals 4
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I

    .prologue
    .line 826
    const/4 v0, 0x0

    .line 827
    .local v0, "res":Z
    if-nez p1, :cond_0

    .line 828
    const-string v2, "SContextManager"

    const-string v3, "Listener is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 832
    .end local v0    # "res":Z
    .local v1, "res":I
    :goto_0
    return v1

    .line 831
    .end local v1    # "res":I
    .restart local v0    # "res":Z
    :cond_0
    invoke-virtual {p0, p2}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v0

    move v1, v0

    .line 832
    .restart local v1    # "res":I
    goto :goto_0
.end method

.method private getAvailableServiceMap()Ljava/util/HashMap;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 785
    const/4 v2, 0x0

    .line 787
    .local v2, "serviceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :try_start_0
    iget-object v3, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v3}, Landroid/hardware/scontext/ISContextService;->getAvailableServiceMap()Ljava/util/Map;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/HashMap;

    move-object v2, v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 791
    :goto_0
    return-object v2

    .line 788
    :catch_0
    move-exception v1

    .line 789
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "SContextManager"

    const-string v4, "RemoteException in getAvailableServiceMap: "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    .locals 4
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;

    .prologue
    .line 801
    if-eqz p1, :cond_0

    iget-object v3, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 802
    :cond_0
    const/4 v2, 0x0

    .line 816
    :cond_1
    :goto_0
    return-object v2

    .line 805
    :cond_2
    const/4 v2, 0x0

    .line 807
    .local v2, "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    iget-object v3, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 808
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;>;"
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 809
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    .line 810
    .local v0, "delegate":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    invoke-virtual {v0}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;->getListener()Landroid/hardware/scontext/SContextListener;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 811
    move-object v2, v0

    .line 812
    goto :goto_0
.end method

.method private registerListener(Landroid/hardware/scontext/SContextListener;Landroid/hardware/scontext/SContextProperty;)Z
    .locals 6
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "property"    # Landroid/hardware/scontext/SContextProperty;

    .prologue
    .line 453
    invoke-virtual {p2}, Landroid/hardware/scontext/SContextProperty;->getType()I

    move-result v2

    .line 454
    .local v2, "service":I
    invoke-direct {p0, p1, v2}, Landroid/hardware/scontext/SContextManager;->checkListenerAndService(Landroid/hardware/scontext/SContextListener;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 455
    const/4 v3, 0x0

    .line 473
    :goto_0
    return v3

    .line 458
    :cond_0
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v1

    .line 460
    .local v1, "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    if-nez v1, :cond_1

    .line 461
    new-instance v1, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    .end local v1    # "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    const/4 v3, 0x0

    invoke-direct {v1, p0, p1, v3}, Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;-><init>(Landroid/hardware/scontext/SContextManager;Landroid/hardware/scontext/SContextListener;Landroid/os/Handler;)V

    .line 462
    .restart local v1    # "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    iget-object v3, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    :cond_1
    :try_start_0
    iget-object v3, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v3, v1, p2}, Landroid/hardware/scontext/ISContextService;->registerCallback(Landroid/os/IBinder;Landroid/hardware/scontext/SContextProperty;)V

    .line 467
    const-string v3, "SContextManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  .registerListener : listener = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", service="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 470
    :catch_0
    move-exception v0

    .line 471
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "SContextManager"

    const-string v4, "RemoteException in registerListener: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public changeParameters(Landroid/hardware/scontext/SContextListener;II)Z
    .locals 3
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I

    .prologue
    .line 633
    new-instance v0, Landroid/hardware/scontext/SContextProperty;

    invoke-direct {v0, p2}, Landroid/hardware/scontext/SContextProperty;-><init>(I)V

    .line 634
    .local v0, "property":Landroid/hardware/scontext/SContextProperty;
    const/16 v2, 0x21

    if-ne p2, v2, :cond_0

    .line 635
    const-string v2, "step_level_monitor_duration"

    invoke-virtual {v0, v2, p3}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    .line 641
    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/hardware/scontext/SContextManager;->changeParameters(Landroid/hardware/scontext/SContextListener;Landroid/hardware/scontext/SContextProperty;)Z

    move-result v1

    .line 643
    :goto_1
    return v1

    .line 636
    :cond_0
    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    .line 637
    const-string v2, "pedometer_exercise_mode"

    invoke-virtual {v0, v2, p3}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    goto :goto_0

    .line 639
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public changeParameters(Landroid/hardware/scontext/SContextListener;IIDD)Z
    .locals 4
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # D
    .param p6, "arg3"    # D

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    .line 604
    new-instance v0, Landroid/hardware/scontext/SContextProperty;

    invoke-direct {v0, p2}, Landroid/hardware/scontext/SContextProperty;-><init>(I)V

    .line 605
    .local v0, "property":Landroid/hardware/scontext/SContextProperty;
    if-ne p2, v3, :cond_1

    .line 606
    const/4 v2, 0x1

    if-eq p3, v2, :cond_0

    if-ne p3, v3, :cond_2

    .line 608
    :cond_0
    const-string v2, "pedometer_gender"

    invoke-virtual {v0, v2, p3}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    .line 609
    const-string v2, "pedometer_height"

    invoke-virtual {v0, v2, p4, p5}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;D)V

    .line 610
    const-string v2, "pedometer_weight"

    invoke-virtual {v0, v2, p6, p7}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;D)V

    .line 618
    invoke-direct {p0, p1, v0}, Landroid/hardware/scontext/SContextManager;->changeParameters(Landroid/hardware/scontext/SContextListener;Landroid/hardware/scontext/SContextProperty;)Z

    move-result v1

    .line 620
    :cond_1
    :goto_0
    return v1

    .line 612
    :cond_2
    const-string v2, "SContextManager"

    const-string v3, "The arg is wrong!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public changeParameters(Landroid/hardware/scontext/SContextListener;IIIII)Z
    .locals 3
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "arg3"    # I
    .param p6, "arg4"    # I

    .prologue
    .line 577
    new-instance v0, Landroid/hardware/scontext/SContextProperty;

    invoke-direct {v0, p2}, Landroid/hardware/scontext/SContextProperty;-><init>(I)V

    .line 578
    .local v0, "property":Landroid/hardware/scontext/SContextProperty;
    const/16 v2, 0x23

    if-ne p2, v2, :cond_0

    .line 579
    const-string v2, "inactive_timer_alert_count"

    invoke-virtual {v0, v2, p3}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    .line 580
    const-string v2, "inactive_timer_start_time"

    invoke-virtual {v0, v2, p4}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    .line 581
    const-string v2, "inactive_timer_end_time"

    invoke-virtual {v0, v2, p5}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    .line 582
    const-string v2, "inactive_timer_duration"

    invoke-virtual {v0, v2, p6}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    .line 586
    invoke-direct {p0, p1, v0}, Landroid/hardware/scontext/SContextManager;->changeParameters(Landroid/hardware/scontext/SContextListener;Landroid/hardware/scontext/SContextProperty;)Z

    move-result v1

    .line 588
    :goto_0
    return v1

    .line 584
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFeatureLevel(I)I
    .locals 2
    .param p1, "service"    # I

    .prologue
    .line 741
    invoke-virtual {p0, p1}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 742
    iget-object v0, p0, Landroid/hardware/scontext/SContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 744
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initializeSContextService(Landroid/hardware/scontext/SContextListener;I)V
    .locals 5
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I

    .prologue
    .line 544
    invoke-virtual {p0, p2}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    if-eq p2, v2, :cond_1

    .line 562
    :cond_0
    :goto_0
    return-void

    .line 548
    :cond_1
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v1

    .line 550
    .local v1, "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    if-nez v1, :cond_2

    .line 551
    const-string v2, "SContextManager"

    const-string v3, "  .initializeSContextService : SContextListener is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 556
    :cond_2
    :try_start_0
    iget-object v2, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v2, v1, p2}, Landroid/hardware/scontext/ISContextService;->initializeSContextService(Landroid/os/IBinder;I)V

    .line 557
    const-string v2, "SContextManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  .initializeSContextService : listener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 559
    :catch_0
    move-exception v0

    .line 560
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SContextManager"

    const-string v3, "RemoteException in initializeSContextService: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isAvailableService(I)Z
    .locals 3
    .param p1, "service"    # I

    .prologue
    .line 724
    const/4 v0, 0x0

    .line 725
    .local v0, "res":Z
    iget-object v1, p0, Landroid/hardware/scontext/SContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 726
    invoke-direct {p0}, Landroid/hardware/scontext/SContextManager;->getAvailableServiceMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/scontext/SContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    .line 728
    :cond_0
    iget-object v1, p0, Landroid/hardware/scontext/SContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 729
    iget-object v1, p0, Landroid/hardware/scontext/SContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 731
    :cond_1
    return v0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;I)Z
    .locals 2
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I

    .prologue
    .line 72
    new-instance v0, Landroid/hardware/scontext/SContextProperty;

    invoke-direct {v0, p2}, Landroid/hardware/scontext/SContextProperty;-><init>(I)V

    .line 73
    .local v0, "property":Landroid/hardware/scontext/SContextProperty;
    invoke-direct {p0, p1, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;Landroid/hardware/scontext/SContextProperty;)Z

    move-result v1

    .line 75
    .local v1, "res":Z
    return v1
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;II)Z
    .locals 4
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    .line 92
    new-instance v0, Landroid/hardware/scontext/SContextProperty;

    invoke-direct {v0, p2}, Landroid/hardware/scontext/SContextProperty;-><init>(I)V

    .line 93
    .local v0, "property":Landroid/hardware/scontext/SContextProperty;
    const/4 v2, 0x3

    if-ne p2, v2, :cond_1

    .line 94
    const-string v2, "step_cout_alert_step"

    invoke-virtual {v0, v2, p3}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    .line 117
    :cond_0
    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;Landroid/hardware/scontext/SContextProperty;)Z

    move-result v1

    .line 119
    :goto_1
    return v1

    .line 95
    :cond_1
    const/4 v2, 0x6

    if-ne p2, v2, :cond_4

    .line 96
    if-eqz p3, :cond_2

    if-eq p3, v3, :cond_2

    const/4 v2, 0x4

    if-ne p3, v2, :cond_3

    .line 99
    :cond_2
    const-string v2, "auto_rotation_device_type"

    invoke-virtual {v0, v2, p3}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    goto :goto_0

    .line 101
    :cond_3
    const-string v2, "SContextManager"

    const-string v3, "The arg is wrong!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 104
    :cond_4
    const/16 v2, 0x10

    if-ne p2, v2, :cond_7

    .line 105
    const/4 v2, 0x1

    if-eq p3, v2, :cond_5

    if-ne p3, v3, :cond_6

    .line 107
    :cond_5
    const-string/jumbo v2, "wake_up_voice_mode"

    invoke-virtual {v0, v2, p3}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    goto :goto_0

    .line 109
    :cond_6
    const-string v2, "SContextManager"

    const-string v3, "The arg is wrong!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 112
    :cond_7
    const/16 v2, 0x21

    if-ne p2, v2, :cond_8

    .line 113
    const-string v2, "step_level_monitor_duration"

    invoke-virtual {v0, v2, p3}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    goto :goto_0

    .line 114
    :cond_8
    const/16 v2, 0x24

    if-ne p2, v2, :cond_0

    .line 115
    const-string v2, "flat_motion_for_table_mode_duration"

    invoke-virtual {v0, v2, p3}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;IIDD)Z
    .locals 7
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # D
    .param p6, "arg3"    # D

    .prologue
    const/4 v6, 0x2

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 250
    const/4 v1, 0x0

    .line 251
    .local v1, "res":Z
    new-instance v0, Landroid/hardware/scontext/SContextProperty;

    invoke-direct {v0, p2}, Landroid/hardware/scontext/SContextProperty;-><init>(I)V

    .line 252
    .local v0, "property":Landroid/hardware/scontext/SContextProperty;
    if-ne p2, v6, :cond_3

    .line 253
    const/4 v3, 0x1

    if-eq p3, v3, :cond_0

    if-eq p3, v6, :cond_0

    .line 255
    const-string v3, "SContextManager"

    const-string v4, "The gender is wrong!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :goto_0
    return v2

    .line 258
    :cond_0
    cmpg-double v3, p4, v4

    if-gtz v3, :cond_1

    .line 259
    const-string v3, "SContextManager"

    const-string v4, "The height cannot be less than or equal to 0.0[cm]!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 262
    :cond_1
    cmpg-double v3, p6, v4

    if-gtz v3, :cond_2

    .line 263
    const-string v3, "SContextManager"

    const-string v4, "The weight cannot be less than or equal to 0.0[kg]!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 267
    :cond_2
    const-string v2, "pedometer_gender"

    invoke-virtual {v0, v2, p3}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    .line 268
    const-string v2, "pedometer_height"

    invoke-virtual {v0, v2, p4, p5}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;D)V

    .line 269
    const-string v2, "pedometer_weight"

    invoke-virtual {v0, v2, p6, p7}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;D)V

    .line 270
    const-string v2, "pedometer_exercise_mode"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    .line 272
    invoke-direct {p0, p1, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;Landroid/hardware/scontext/SContextProperty;)Z

    move-result v1

    :cond_3
    move v2, v1

    .line 275
    goto :goto_0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;III)Z
    .locals 4
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I

    .prologue
    .line 190
    new-instance v0, Landroid/hardware/scontext/SContextProperty;

    invoke-direct {v0, p2}, Landroid/hardware/scontext/SContextProperty;-><init>(I)V

    .line 191
    .local v0, "property":Landroid/hardware/scontext/SContextProperty;
    const/16 v2, 0x8

    if-ne p2, v2, :cond_2

    .line 192
    const/4 v2, 0x1

    if-ne p3, v2, :cond_1

    .line 193
    const-string v2, "environment_sensor_type"

    invoke-virtual {v0, v2, p3}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    .line 194
    const-string v2, "environment_update_interval"

    invoke-virtual {v0, v2, p4}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    .line 207
    :cond_0
    :goto_0
    invoke-direct {p0, p1, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;Landroid/hardware/scontext/SContextProperty;)Z

    move-result v1

    .line 209
    :goto_1
    return v1

    .line 196
    :cond_1
    const-string v2, "SContextManager"

    const-string v3, "The arg is wrong!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/4 v1, 0x0

    goto :goto_1

    .line 199
    :cond_2
    const/16 v2, 0xc

    if-ne p2, v2, :cond_3

    .line 200
    const-string v2, "shake_motion_strength"

    invoke-virtual {v0, v2, p3}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    .line 201
    const-string v2, "shake_motion_duration"

    invoke-virtual {v0, v2, p4}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    goto :goto_0

    .line 202
    :cond_3
    const/16 v2, 0x1d

    if-ne p2, v2, :cond_0

    .line 203
    const-string v2, "sleep_monitor_sensibility"

    invoke-virtual {v0, v2, p3}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    .line 204
    const-string v2, "sleep_monitor_sampling_interval"

    invoke-virtual {v0, v2, p4}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;IIIDI)Z
    .locals 11
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "arg3"    # D
    .param p7, "arg4"    # I

    .prologue
    .line 339
    const/4 v10, 0x0

    .line 340
    .local v10, "res":Z
    new-instance v9, Landroid/hardware/scontext/SContextProperty;

    invoke-direct {v9, p2}, Landroid/hardware/scontext/SContextProperty;-><init>(I)V

    .line 341
    .local v9, "property":Landroid/hardware/scontext/SContextProperty;
    const/16 v2, 0x9

    if-ne p2, v2, :cond_1

    .line 342
    const-string v2, "mfp_nomove_duration_thrs"

    invoke-virtual {v9, v2, p3}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    .line 343
    const-string v2, "mfp_move_duration_thrs"

    invoke-virtual {v9, v2, p4}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    .line 344
    const-string v2, "mfp_move_distance_thrs"

    move-wide/from16 v0, p5

    invoke-virtual {v9, v2, v0, v1}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;D)V

    .line 345
    const-string v2, "mfp_move_min_duration_thrs"

    move/from16 v0, p7

    invoke-virtual {v9, v2, v0}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    .line 346
    invoke-direct {p0, p1, v9}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;Landroid/hardware/scontext/SContextProperty;)Z

    move-result v10

    .line 351
    :cond_0
    :goto_0
    return v10

    .line 347
    :cond_1
    const/16 v2, 0x1c

    if-ne p2, v2, :cond_0

    .line 348
    move-wide/from16 v0, p5

    double-to-int v7, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v8, p7

    invoke-virtual/range {v2 .. v8}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;IIIII)Z

    move-result v10

    goto :goto_0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;IIII)Z
    .locals 3
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "arg3"    # I

    .prologue
    .line 225
    const/4 v1, 0x0

    .line 226
    .local v1, "res":Z
    new-instance v0, Landroid/hardware/scontext/SContextProperty;

    invoke-direct {v0, p2}, Landroid/hardware/scontext/SContextProperty;-><init>(I)V

    .line 227
    .local v0, "property":Landroid/hardware/scontext/SContextProperty;
    const/16 v2, 0x23

    if-ne p2, v2, :cond_0

    .line 228
    const-string v2, "inactive_timer_device_type"

    invoke-virtual {v0, v2, p3}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    .line 229
    const-string v2, "inactive_timer_duration"

    invoke-virtual {v0, v2, p4}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    .line 230
    const-string v2, "inactive_timer_alert_count"

    invoke-virtual {v0, v2, p5}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    .line 231
    invoke-direct {p0, p1, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;Landroid/hardware/scontext/SContextProperty;)Z

    move-result v1

    .line 234
    :cond_0
    return v1
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;IIIII)Z
    .locals 11
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "arg3"    # I
    .param p6, "arg4"    # I

    .prologue
    .line 373
    const/4 v10, 0x0

    .line 374
    .local v10, "res":Z
    new-instance v9, Landroid/hardware/scontext/SContextProperty;

    invoke-direct {v9, p2}, Landroid/hardware/scontext/SContextProperty;-><init>(I)V

    .line 375
    .local v9, "property":Landroid/hardware/scontext/SContextProperty;
    const/16 v1, 0x1c

    if-ne p2, v1, :cond_6

    .line 376
    const/16 v1, 0x5a

    if-gt p4, v1, :cond_0

    const/16 v1, -0x5a

    if-lt p4, v1, :cond_0

    const/16 v1, 0x5a

    move/from16 v0, p5

    if-gt v0, v1, :cond_0

    const/16 v1, -0x5a

    move/from16 v0, p5

    if-ge v0, v1, :cond_1

    .line 377
    :cond_0
    const-string v1, "SContextManager"

    const-string v2, "The angle must be between -90 and 90 !"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const/4 v1, 0x0

    .line 399
    :goto_0
    return v1

    .line 381
    :cond_1
    move/from16 v0, p5

    if-le p4, v0, :cond_2

    .line 382
    const-string v1, "SContextManager"

    const-string v2, "The munumum angle must be less than the maximum angle !"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const/4 v1, 0x0

    goto :goto_0

    .line 386
    :cond_2
    if-ltz p6, :cond_3

    const/16 v1, 0x2710

    move/from16 v0, p6

    if-le v0, v1, :cond_4

    .line 387
    :cond_3
    const-string v1, "SContextManager"

    const-string v2, "The moving threshold must be between 0 and 10000 !"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const/4 v1, 0x0

    goto :goto_0

    .line 390
    :cond_4
    const-string v1, "specific_pose_alert_retention_time"

    invoke-virtual {v9, v1, p3}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    .line 391
    const-string v1, "specific_pose_alert_minimum_angle"

    invoke-virtual {v9, v1, p4}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    .line 392
    const-string v1, "specific_pose_alert_maximum_angle"

    move/from16 v0, p5

    invoke-virtual {v9, v1, v0}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    .line 393
    const-string v1, "specific_pose_alert_moving_thrs"

    move/from16 v0, p6

    invoke-virtual {v9, v1, v0}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    .line 394
    invoke-direct {p0, p1, v9}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;Landroid/hardware/scontext/SContextProperty;)Z

    move-result v10

    :cond_5
    :goto_1
    move v1, v10

    .line 399
    goto :goto_0

    .line 395
    :cond_6
    const/16 v1, 0x9

    if-ne p2, v1, :cond_5

    .line 396
    move/from16 v0, p5

    int-to-double v6, v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v8, p6

    invoke-virtual/range {v1 .. v8}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;IIIDI)Z

    move-result v10

    goto :goto_1
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;IIIIII)Z
    .locals 3
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "arg3"    # I
    .param p6, "arg4"    # I
    .param p7, "arg5"    # I

    .prologue
    .line 422
    const/4 v1, 0x0

    .line 423
    .local v1, "res":Z
    new-instance v0, Landroid/hardware/scontext/SContextProperty;

    invoke-direct {v0, p2}, Landroid/hardware/scontext/SContextProperty;-><init>(I)V

    .line 424
    .local v0, "property":Landroid/hardware/scontext/SContextProperty;
    const/16 v2, 0x18

    if-ne p2, v2, :cond_1

    .line 425
    const-string v2, "activity_location_logging_stop_period"

    invoke-virtual {v0, v2, p3}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    .line 426
    const-string v2, "activity_location_logging_wait_period"

    invoke-virtual {v0, v2, p4}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    .line 427
    const-string v2, "activity_location_logging_statying radius"

    invoke-virtual {v0, v2, p5}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    .line 428
    const-string v2, "activity_location_logging_area_radius"

    invoke-virtual {v0, v2, p6}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    .line 429
    const-string v2, "activity_location_logging_lpp_resolution"

    invoke-virtual {v0, v2, p7}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    .line 430
    invoke-direct {p0, p1, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;Landroid/hardware/scontext/SContextProperty;)Z

    move-result v1

    .line 440
    :cond_0
    :goto_0
    return v1

    .line 431
    :cond_1
    const/16 v2, 0x23

    if-ne p2, v2, :cond_0

    .line 432
    const-string v2, "inactive_timer_device_type"

    invoke-virtual {v0, v2, p3}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    .line 433
    const-string v2, "inactive_timer_duration"

    invoke-virtual {v0, v2, p4}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    .line 434
    const-string v2, "inactive_timer_alert_count"

    invoke-virtual {v0, v2, p5}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    .line 435
    const-string v2, "inactive_timer_start_time"

    invoke-virtual {v0, v2, p6}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    .line 436
    const-string v2, "inactive_timer_end_time"

    invoke-virtual {v0, v2, p7}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    .line 437
    invoke-direct {p0, p1, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;Landroid/hardware/scontext/SContextProperty;)Z

    move-result v1

    goto :goto_0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;IIIZ)Z
    .locals 6
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "arg3"    # Z

    .prologue
    const/16 v5, 0x7f

    const/16 v4, -0x80

    const/4 v2, 0x0

    .line 294
    const/4 v1, 0x0

    .line 295
    .local v1, "res":Z
    new-instance v0, Landroid/hardware/scontext/SContextProperty;

    invoke-direct {v0, p2}, Landroid/hardware/scontext/SContextProperty;-><init>(I)V

    .line 296
    .local v0, "property":Landroid/hardware/scontext/SContextProperty;
    const/16 v3, 0x17

    if-ne p2, v3, :cond_4

    .line 297
    if-gt p3, v5, :cond_0

    if-ge p3, v4, :cond_1

    .line 299
    :cond_0
    const-string v3, "SContextManager"

    const-string v4, "Low temperature must be between -128 and 127."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :goto_0
    return v2

    .line 302
    :cond_1
    if-gt p4, v5, :cond_2

    if-ge p4, v4, :cond_3

    .line 304
    :cond_2
    const-string v3, "SContextManager"

    const-string v4, "High temperature must be between -128 and 127."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 307
    :cond_3
    if-ge p3, p4, :cond_5

    .line 308
    const-string v2, "temperature_alert_low_temperature"

    invoke-virtual {v0, v2, p3}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    .line 309
    const-string v2, "temperature_alert_high_temperature"

    invoke-virtual {v0, v2, p4}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    .line 310
    const-string v2, "temperature_alert_is_including"

    invoke-virtual {v0, v2, p5}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;Z)V

    .line 315
    invoke-direct {p0, p1, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;Landroid/hardware/scontext/SContextProperty;)Z

    move-result v1

    :cond_4
    move v2, v1

    .line 318
    goto :goto_0

    .line 312
    :cond_5
    const-string v3, "SContextManager"

    const-string v4, "Low temperature must be less than high temperature."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;I[I)Z
    .locals 7
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg"    # [I

    .prologue
    .line 134
    new-instance v3, Landroid/hardware/scontext/SContextProperty;

    invoke-direct {v3, p2}, Landroid/hardware/scontext/SContextProperty;-><init>(I)V

    .line 135
    .local v3, "property":Landroid/hardware/scontext/SContextProperty;
    const/16 v5, 0x1b

    if-ne p2, v5, :cond_3

    .line 136
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, p3

    if-ge v0, v5, :cond_2

    .line 138
    aget v5, p3, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 140
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-ne v5, v6, :cond_0

    .line 141
    const-string v5, "SContextManager"

    const-string v6, "This arg cannot have duplicated status."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 v4, 0x0

    .line 150
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_2
    return v4

    .line 139
    .restart local v0    # "i":I
    .restart local v1    # "j":I
    .restart local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 137
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    .end local v1    # "j":I
    :cond_2
    const-string v5, "activity_notification_activity_filter"

    invoke-virtual {v3, v5, p3}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;[I)V

    .line 148
    .end local v0    # "i":I
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_3
    invoke-direct {p0, p1, v3}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;Landroid/hardware/scontext/SContextProperty;)Z

    move-result v4

    .line 150
    .local v4, "res":Z
    goto :goto_2
.end method

.method public registerListener(Landroid/hardware/scontext/SContextListener;I[II)Z
    .locals 3
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I
    .param p3, "arg1"    # [I
    .param p4, "arg2"    # I

    .prologue
    .line 167
    new-instance v0, Landroid/hardware/scontext/SContextProperty;

    invoke-direct {v0, p2}, Landroid/hardware/scontext/SContextProperty;-><init>(I)V

    .line 168
    .local v0, "property":Landroid/hardware/scontext/SContextProperty;
    const/16 v2, 0x1e

    if-ne p2, v2, :cond_0

    .line 169
    const-string v2, "activity_notification_ex_activity_filter"

    invoke-virtual {v0, v2, p3}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;[I)V

    .line 170
    const-string v2, "activity_notification_ex_time_duration"

    invoke-virtual {v0, v2, p4}, Landroid/hardware/scontext/SContextProperty;->setProperty(Ljava/lang/String;I)V

    .line 173
    :cond_0
    invoke-direct {p0, p1, v0}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;Landroid/hardware/scontext/SContextProperty;)Z

    move-result v1

    .line 175
    .local v1, "res":Z
    return v1
.end method

.method public requestToUpdate(Landroid/hardware/scontext/SContextListener;I)V
    .locals 5
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I

    .prologue
    .line 688
    invoke-virtual {p0, p2}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 715
    :goto_0
    return-void

    .line 692
    :cond_0
    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    const/16 v2, 0x19

    if-eq p2, v2, :cond_1

    const/16 v2, 0x1a

    if-eq p2, v2, :cond_1

    const/16 v2, 0x1d

    if-eq p2, v2, :cond_1

    .line 696
    const-string v2, "SContextManager"

    const-string v3, "  .requestToUpdate : This service is not supported!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 700
    :cond_1
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v1

    .line 702
    .local v1, "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    if-nez v1, :cond_2

    .line 703
    const-string v2, "SContextManager"

    const-string v3, "  .requestToUpdate : SContextListener is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 708
    :cond_2
    :try_start_0
    iget-object v2, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v2, v1, p2}, Landroid/hardware/scontext/ISContextService;->requestToUpdate(Landroid/os/IBinder;I)V

    .line 709
    const-string v2, "SContextManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  .requestToUpdate : listener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 712
    :catch_0
    move-exception v0

    .line 713
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SContextManager"

    const-string v3, "RemoteException in changeParameters: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setReferenceData(I[B[B)Z
    .locals 5
    .param p1, "service"    # I
    .param p2, "data1"    # [B
    .param p3, "data2"    # [B

    .prologue
    .line 757
    const/4 v1, 0x0

    .line 758
    .local v1, "res":Z
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    iget-object v3, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    if-nez v3, :cond_1

    :cond_0
    move v2, v1

    .line 776
    .end local v1    # "res":Z
    .local v2, "res":I
    :goto_0
    return v2

    .line 763
    .end local v2    # "res":I
    .restart local v1    # "res":Z
    :cond_1
    const/16 v3, 0x10

    if-ne p1, v3, :cond_2

    .line 764
    :try_start_0
    iget-object v3, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    const/4 v4, 0x1

    invoke-interface {v3, v4, p2}, Landroid/hardware/scontext/ISContextService;->setReferenceData(I[B)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    const/4 v4, 0x2

    invoke-interface {v3, v4, p3}, Landroid/hardware/scontext/ISContextService;->setReferenceData(I[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_3

    .line 768
    const/4 v1, 0x1

    :cond_2
    :goto_1
    move v2, v1

    .line 776
    .restart local v2    # "res":I
    goto :goto_0

    .line 770
    .end local v2    # "res":I
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 773
    :catch_0
    move-exception v0

    .line 774
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "SContextManager"

    const-string v4, "RemoteException in initializeSContextService: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public unregisterListener(Landroid/hardware/scontext/SContextListener;)V
    .locals 7
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;

    .prologue
    .line 482
    if-eqz p1, :cond_0

    iget-object v4, p0, Landroid/hardware/scontext/SContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    if-nez v4, :cond_1

    .line 504
    :cond_0
    :goto_0
    return-void

    .line 486
    :cond_1
    iget-object v4, p0, Landroid/hardware/scontext/SContextManager;->mAvailableServiceMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 487
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 488
    .local v3, "service":I
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v2

    .line 489
    .local v2, "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    if-eqz v2, :cond_0

    .line 494
    :try_start_0
    iget-object v4, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v4, v2, v3}, Landroid/hardware/scontext/ISContextService;->unregisterCallback(Landroid/os/IBinder;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 495
    iget-object v4, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 496
    const-string v4, "SContextManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  .unregisterListener : listener = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 499
    :catch_0
    move-exception v0

    .line 500
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "SContextManager"

    const-string v5, "RemoteException in unregisterListener: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public unregisterListener(Landroid/hardware/scontext/SContextListener;I)V
    .locals 5
    .param p1, "listener"    # Landroid/hardware/scontext/SContextListener;
    .param p2, "service"    # I

    .prologue
    .line 514
    invoke-direct {p0, p1, p2}, Landroid/hardware/scontext/SContextManager;->checkListenerAndService(Landroid/hardware/scontext/SContextListener;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 535
    :goto_0
    return-void

    .line 518
    :cond_0
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextManager;->getListenerDelegate(Landroid/hardware/scontext/SContextListener;)Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;

    move-result-object v1

    .line 520
    .local v1, "scontextListener":Landroid/hardware/scontext/SContextManager$SContextListenerDelegate;
    if-nez v1, :cond_1

    .line 521
    const-string v2, "SContextManager"

    const-string v3, "  .unregisterListener : SContextListener is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 526
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/hardware/scontext/SContextManager;->mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v2, v1, p2}, Landroid/hardware/scontext/ISContextService;->unregisterCallback(Landroid/os/IBinder;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 527
    iget-object v2, p0, Landroid/hardware/scontext/SContextManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 529
    :cond_2
    const-string v2, "SContextManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  .unregisterListener : listener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", service="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Landroid/hardware/scontext/SContext;->getServiceName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 532
    :catch_0
    move-exception v0

    .line 533
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SContextManager"

    const-string v3, "RemoteException in unregisterListener: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
