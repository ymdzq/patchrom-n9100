.class Lcom/android/server/pm/PersonaManagerService$9;
.super Landroid/app/IStopUserCallback$Stub;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PersonaManagerService;->handleRestart(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;

.field final synthetic val$info:Landroid/content/pm/PersonaInfo;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PersonaManagerService;Landroid/content/pm/PersonaInfo;)V
    .locals 0

    .prologue
    .line 7631
    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$9;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PersonaManagerService$9;->val$info:Landroid/content/pm/PersonaInfo;

    invoke-direct {p0}, Landroid/app/IStopUserCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public userStopAborted(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 7646
    const-string v0, "PersonaManagerService"

    const-string v1, " abort"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7647
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$9;->val$info:Landroid/content/pm/PersonaInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/content/pm/PersonaInfo;->isRestarting:Z

    .line 7648
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$9;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->access$1000(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 7649
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$9;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$9;->val$info:Landroid/content/pm/PersonaInfo;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V
    invoke-static {v0, v2}, Lcom/android/server/pm/PersonaManagerService;->access$1100(Lcom/android/server/pm/PersonaManagerService;Landroid/content/pm/PersonaInfo;)V

    .line 7650
    monitor-exit v1

    .line 7651
    return-void

    .line 7650
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public userStopped(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 7635
    const-string v0, "PersonaManagerService"

    const-string v1, " user stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7636
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$9;->val$info:Landroid/content/pm/PersonaInfo;

    iput-boolean v2, v0, Landroid/content/pm/PersonaInfo;->isRestarting:Z

    .line 7637
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$9;->val$info:Landroid/content/pm/PersonaInfo;

    iput-boolean v2, v0, Landroid/content/pm/PersonaInfo;->needsRestart:Z

    .line 7638
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$9;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPackagesLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->access$1000(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 7639
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$9;->this$0:Lcom/android/server/pm/PersonaManagerService;

    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$9;->val$info:Landroid/content/pm/PersonaInfo;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V
    invoke-static {v0, v2}, Lcom/android/server/pm/PersonaManagerService;->access$1100(Lcom/android/server/pm/PersonaManagerService;Landroid/content/pm/PersonaInfo;)V

    .line 7640
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7641
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$9;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/PersonaManagerService;->setPersonaState(II)V

    .line 7642
    return-void

    .line 7640
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
