.class final Lcom/android/server/am/MultiWindowPolicy$TaskController;
.super Ljava/lang/Object;
.source "MultiWindowPolicy.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MultiWindowPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TaskController"
.end annotation


# instance fields
.field stringName:Ljava/lang/String;

.field public final taskController:Lcom/samsung/android/multiwindow/ITaskController;

.field final synthetic this$0:Lcom/android/server/am/MultiWindowPolicy;

.field public final type:I


# direct methods
.method constructor <init>(Lcom/android/server/am/MultiWindowPolicy;Lcom/samsung/android/multiwindow/ITaskController;)V
    .locals 1
    .param p2, "_taskController"    # Lcom/samsung/android/multiwindow/ITaskController;

    .prologue
    .line 1718
    iput-object p1, p0, Lcom/android/server/am/MultiWindowPolicy$TaskController;->this$0:Lcom/android/server/am/MultiWindowPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1719
    iput-object p2, p0, Lcom/android/server/am/MultiWindowPolicy$TaskController;->taskController:Lcom/samsung/android/multiwindow/ITaskController;

    .line 1720
    sget v0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->TASK_CONTROLLER_TYPE_RUNNING:I

    iput v0, p0, Lcom/android/server/am/MultiWindowPolicy$TaskController;->type:I

    .line 1721
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/MultiWindowPolicy;Lcom/samsung/android/multiwindow/ITaskController;I)V
    .locals 0
    .param p2, "_taskController"    # Lcom/samsung/android/multiwindow/ITaskController;
    .param p3, "_type"    # I

    .prologue
    .line 1723
    iput-object p1, p0, Lcom/android/server/am/MultiWindowPolicy$TaskController;->this$0:Lcom/android/server/am/MultiWindowPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1724
    iput-object p2, p0, Lcom/android/server/am/MultiWindowPolicy$TaskController;->taskController:Lcom/samsung/android/multiwindow/ITaskController;

    .line 1725
    iput p3, p0, Lcom/android/server/am/MultiWindowPolicy$TaskController;->type:I

    .line 1726
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 1729
    iget-object v0, p0, Lcom/android/server/am/MultiWindowPolicy$TaskController;->this$0:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy$TaskController;->taskController:Lcom/samsung/android/multiwindow/ITaskController;

    invoke-virtual {v0, v1}, Lcom/android/server/am/MultiWindowPolicy;->unregisterTaskController(Lcom/samsung/android/multiwindow/ITaskController;)V

    .line 1730
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1733
    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy$TaskController;->stringName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1734
    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy$TaskController;->stringName:Ljava/lang/String;

    .line 1742
    :goto_0
    return-object v1

    .line 1736
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1737
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "TaskController{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1738
    iget-object v1, p0, Lcom/android/server/am/MultiWindowPolicy$TaskController;->taskController:Lcom/samsung/android/multiwindow/ITaskController;

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/ITaskController;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1739
    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1740
    iget v1, p0, Lcom/android/server/am/MultiWindowPolicy$TaskController;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1741
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1742
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MultiWindowPolicy$TaskController;->stringName:Ljava/lang/String;

    goto :goto_0
.end method
