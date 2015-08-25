.class Lcom/android/server/wm/WindowManagerService$EasyOneHandDeathRecipient;
.super Ljava/lang/Object;
.source "WindowManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EasyOneHandDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 0

    .prologue
    .line 4476
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$EasyOneHandDeathRecipient;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "x1"    # Lcom/android/server/wm/WindowManagerService$1;

    .prologue
    .line 4476
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService$EasyOneHandDeathRecipient;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 6

    .prologue
    .line 4480
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$EasyOneHandDeathRecipient;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4481
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$EasyOneHandDeathRecipient;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mEasyOneHandWatcher:Landroid/sec/easyonehand/IEasyOneHandWatcher;

    if-eqz v0, :cond_0

    .line 4482
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$EasyOneHandDeathRecipient;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mEasyOneHandWatcher:Landroid/sec/easyonehand/IEasyOneHandWatcher;

    invoke-interface {v0}, Landroid/sec/easyonehand/IEasyOneHandWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 4483
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$EasyOneHandDeathRecipient;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mEasyOneHandWatcher:Landroid/sec/easyonehand/IEasyOneHandWatcher;

    .line 4485
    const-string v0, "WindowManager"

    const-string v2, "EasyOneHand has died unexpectedly"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4489
    :try_start_2
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$EasyOneHandDeathRecipient;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "any_screen_running"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4491
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$EasyOneHandDeathRecipient;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->changeDisplayScale(IFFF)V

    .line 4492
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$EasyOneHandDeathRecipient;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService;->setInputFilter(Landroid/view/IInputFilter;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4497
    :cond_0
    :goto_0
    :try_start_3
    monitor-exit v1

    .line 4502
    :goto_1
    return-void

    .line 4497
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0

    .line 4498
    :catch_0
    move-exception v0

    goto :goto_1

    .line 4493
    :catch_1
    move-exception v0

    goto :goto_0
.end method
