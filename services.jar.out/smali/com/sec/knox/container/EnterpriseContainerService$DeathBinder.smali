.class Lcom/sec/knox/container/EnterpriseContainerService$DeathBinder;
.super Ljava/lang/Object;
.source "EnterpriseContainerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/knox/container/EnterpriseContainerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DeathBinder"
.end annotation


# instance fields
.field containerId:I

.field req:I

.field final synthetic this$0:Lcom/sec/knox/container/EnterpriseContainerService;


# direct methods
.method public constructor <init>(Lcom/sec/knox/container/EnterpriseContainerService;I)V
    .locals 1
    .param p2, "requestId"    # I

    .prologue
    .line 756
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService$DeathBinder;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 753
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/knox/container/EnterpriseContainerService$DeathBinder;->containerId:I

    .line 754
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/knox/container/EnterpriseContainerService$DeathBinder;->req:I

    .line 758
    iput p2, p0, Lcom/sec/knox/container/EnterpriseContainerService$DeathBinder;->req:I

    .line 759
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 762
    const-string v1, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The calling app binderDied + containerId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/knox/container/EnterpriseContainerService$DeathBinder;->containerId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService$DeathBinder;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mWakeLockHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/knox/container/EnterpriseContainerService;->access$200(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xc

    iget v3, p0, Lcom/sec/knox/container/EnterpriseContainerService$DeathBinder;->containerId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, v3, v5, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 765
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService$DeathBinder;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mWakeLockHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/knox/container/EnterpriseContainerService;->access$200(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 766
    return-void
.end method
