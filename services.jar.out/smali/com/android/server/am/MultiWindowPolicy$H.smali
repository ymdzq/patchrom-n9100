.class final Lcom/android/server/am/MultiWindowPolicy$H;
.super Landroid/os/Handler;
.source "MultiWindowPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MultiWindowPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# static fields
.field private static final MSG_CLOSE_PENWINDOW:I = 0x2

.field private static final MSG_MINIMIZE_ALL:I = 0x1

.field private static final MSG_NOTIFY_TASK_STARTED:I = 0x4

.field private static final MSG_SHOW_TOAST_MAXPENWINDOW:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MultiWindowPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/am/MultiWindowPolicy;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/android/server/am/MultiWindowPolicy$H;->this$0:Lcom/android/server/am/MultiWindowPolicy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v7, 0x64

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 274
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 302
    :goto_0
    return-void

    .line 276
    :pswitch_0
    # getter for: Lcom/android/server/am/MultiWindowPolicy;->SAFE_DEBUG:Z
    invoke-static {}, Lcom/android/server/am/MultiWindowPolicy;->access$100()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "MultiWindowPolicy"

    const-string v5, "MSG_MINIMIZE_ALL"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_0
    iget-object v5, p0, Lcom/android/server/am/MultiWindowPolicy$H;->this$0:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Lcom/android/server/am/MultiWindowPolicy;->minimizeAll(Ljava/lang/String;)V

    goto :goto_0

    .line 280
    :pswitch_1
    # getter for: Lcom/android/server/am/MultiWindowPolicy;->SAFE_DEBUG:Z
    invoke-static {}, Lcom/android/server/am/MultiWindowPolicy;->access$100()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "MultiWindowPolicy"

    const-string v5, "MSG_CLOSE_PENWINDOW"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_1
    iget-object v4, p0, Lcom/android/server/am/MultiWindowPolicy$H;->this$0:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v4}, Lcom/android/server/am/MultiWindowPolicy;->closePenWindow()V

    goto :goto_0

    .line 284
    :pswitch_2
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lcom/android/server/am/MultiWindowPolicy$H;->this$0:Lcom/android/server/am/MultiWindowPolicy;

    # getter for: Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/am/MultiWindowPolicy;->access$000(Lcom/android/server/am/MultiWindowPolicy;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x1030128

    invoke-direct {v0, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 285
    .local v0, "context":Landroid/content/Context;
    iget-object v4, p0, Lcom/android/server/am/MultiWindowPolicy$H;->this$0:Lcom/android/server/am/MultiWindowPolicy;

    # getter for: Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/am/MultiWindowPolicy;->access$000(Lcom/android/server/am/MultiWindowPolicy;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040bf0

    new-array v6, v10, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/server/am/MultiWindowPolicy$H;->this$0:Lcom/android/server/am/MultiWindowPolicy;

    # getter for: Lcom/android/server/am/MultiWindowPolicy;->mApplicationInfos:Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;
    invoke-static {v7}, Lcom/android/server/am/MultiWindowPolicy;->access$200(Lcom/android/server/am/MultiWindowPolicy;)Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/am/MultiWindowPolicy$H;->this$0:Lcom/android/server/am/MultiWindowPolicy;

    # getter for: Lcom/android/server/am/MultiWindowPolicy;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/am/MultiWindowPolicy;->access$000(Lcom/android/server/am/MultiWindowPolicy;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/multiwindow/MultiWindowApplicationInfos;->getMaxPenWindow(Landroid/content/Context;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 290
    .end local v0    # "context":Landroid/content/Context;
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/multiwindow/ITaskController;

    .line 291
    .local v1, "taskController":Lcom/samsung/android/multiwindow/ITaskController;
    iget v4, p1, Landroid/os/Message;->arg1:I

    sget v5, Lcom/samsung/android/multiwindow/MultiWindowFacade;->TASK_CONTROLLER_TYPE_RECENT:I

    if-ne v4, v5, :cond_2

    .line 292
    iget-object v4, p0, Lcom/android/server/am/MultiWindowPolicy$H;->this$0:Lcom/android/server/am/MultiWindowPolicy;

    # getter for: Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v4}, Lcom/android/server/am/MultiWindowPolicy;->access$300(Lcom/android/server/am/MultiWindowPolicy;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual {v4, v7, v9, v5}, Lcom/android/server/am/ActivityManagerService;->getRecentTasks(III)Ljava/util/List;

    move-result-object v2

    .line 293
    .local v2, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    iget-object v4, p0, Lcom/android/server/am/MultiWindowPolicy$H;->this$0:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v5, p0, Lcom/android/server/am/MultiWindowPolicy$H;->this$0:Lcom/android/server/am/MultiWindowPolicy;

    # invokes: Lcom/android/server/am/MultiWindowPolicy;->RecentTaskInfoToObject(Ljava/util/List;)Ljava/util/List;
    invoke-static {v5, v2}, Lcom/android/server/am/MultiWindowPolicy;->access$400(Lcom/android/server/am/MultiWindowPolicy;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    # invokes: Lcom/android/server/am/MultiWindowPolicy;->notifyTaskStarted(Ljava/util/List;Lcom/samsung/android/multiwindow/ITaskController;)V
    invoke-static {v4, v5, v1}, Lcom/android/server/am/MultiWindowPolicy;->access$500(Lcom/android/server/am/MultiWindowPolicy;Ljava/util/List;Lcom/samsung/android/multiwindow/ITaskController;)V

    goto/16 :goto_0

    .line 295
    .end local v2    # "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :cond_2
    iget-object v4, p0, Lcom/android/server/am/MultiWindowPolicy$H;->this$0:Lcom/android/server/am/MultiWindowPolicy;

    # getter for: Lcom/android/server/am/MultiWindowPolicy;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v4}, Lcom/android/server/am/MultiWindowPolicy;->access$300(Lcom/android/server/am/MultiWindowPolicy;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v4

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-virtual {v4, v7, v5, v6}, Lcom/android/server/am/ActivityManagerService;->getTasks(IILandroid/app/IThumbnailReceiver;)Ljava/util/List;

    move-result-object v3

    .line 296
    .local v3, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    iget-object v4, p0, Lcom/android/server/am/MultiWindowPolicy$H;->this$0:Lcom/android/server/am/MultiWindowPolicy;

    iget-object v5, p0, Lcom/android/server/am/MultiWindowPolicy$H;->this$0:Lcom/android/server/am/MultiWindowPolicy;

    invoke-virtual {v5, v3}, Lcom/android/server/am/MultiWindowPolicy;->RunningTaskInfoToObject(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    # invokes: Lcom/android/server/am/MultiWindowPolicy;->notifyTaskStarted(Ljava/util/List;Lcom/samsung/android/multiwindow/ITaskController;)V
    invoke-static {v4, v5, v1}, Lcom/android/server/am/MultiWindowPolicy;->access$500(Lcom/android/server/am/MultiWindowPolicy;Ljava/util/List;Lcom/samsung/android/multiwindow/ITaskController;)V

    goto/16 :goto_0

    .line 274
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
