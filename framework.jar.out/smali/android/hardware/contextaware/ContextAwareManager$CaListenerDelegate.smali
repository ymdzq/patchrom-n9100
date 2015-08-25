.class Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate;
.super Landroid/hardware/contextaware/manager/IContextAwareCallback$Stub;
.source "ContextAwareManager.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/ContextAwareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaListenerDelegate"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

.field final synthetic this$0:Landroid/hardware/contextaware/ContextAwareManager;


# direct methods
.method constructor <init>(Landroid/hardware/contextaware/ContextAwareManager;Landroid/hardware/contextaware/manager/ContextAwareListener;Landroid/os/Handler;)V
    .locals 2
    .param p2, "listener"    # Landroid/hardware/contextaware/manager/ContextAwareListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 973
    iput-object p1, p0, Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate;->this$0:Landroid/hardware/contextaware/ContextAwareManager;

    .line 974
    invoke-direct {p0}, Landroid/hardware/contextaware/manager/IContextAwareCallback$Stub;-><init>()V

    .line 975
    iput-object p2, p0, Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate;->mListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    .line 977
    const/4 v0, 0x0

    .line 978
    .local v0, "looper":Landroid/os/Looper;
    if-nez p3, :cond_0

    .line 979
    # getter for: Landroid/hardware/contextaware/ContextAwareManager;->mMainLooper:Landroid/os/Looper;
    invoke-static {p1}, Landroid/hardware/contextaware/ContextAwareManager;->access$000(Landroid/hardware/contextaware/ContextAwareManager;)Landroid/os/Looper;

    move-result-object v0

    .line 984
    :goto_0
    new-instance v1, Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate$1;

    invoke-direct {v1, p0, v0, p1}, Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate$1;-><init>(Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate;Landroid/os/Looper;Landroid/hardware/contextaware/ContextAwareManager;)V

    iput-object v1, p0, Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate;->mHandler:Landroid/os/Handler;

    .line 996
    return-void

    .line 981
    :cond_0
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic access$100(Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate;)Landroid/hardware/contextaware/manager/ContextAwareListener;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate;

    .prologue
    .line 956
    iget-object v0, p0, Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate;->mListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized caCallback(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "context"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1017
    monitor-enter p0

    if-nez p2, :cond_0

    .line 1018
    :try_start_0
    sget-object v1, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->ERROR_CONTEXT_NULL_EXCEPTION:Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v1}, Landroid/hardware/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1029
    :goto_0
    monitor-exit p0

    return-void

    .line 1023
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1024
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 1025
    invoke-virtual {p2}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1026
    iget-object v1, p0, Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1028
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1017
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getListener()Landroid/hardware/contextaware/manager/ContextAwareListener;
    .locals 1

    .prologue
    .line 1004
    iget-object v0, p0, Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate;->mListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    return-object v0
.end method

.method public getListenerInfo()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1039
    iget-object v0, p0, Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate;->mListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    if-nez v0, :cond_0

    .line 1040
    const/4 v0, 0x0

    .line 1042
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate;->mListener:Landroid/hardware/contextaware/manager/ContextAwareListener;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
