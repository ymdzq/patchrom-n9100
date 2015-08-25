.class Lcom/android/server/am/ActivityManagerService$CallCaptureFullScreen;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallCaptureFullScreen"
.end annotation


# instance fields
.field mRecord:Lcom/android/server/am/ActivityRecord;

.field mToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22171
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$CallCaptureFullScreen;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22168
    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$CallCaptureFullScreen;->mRecord:Lcom/android/server/am/ActivityRecord;

    .line 22169
    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$CallCaptureFullScreen;->mToken:Landroid/os/IBinder;

    .line 22172
    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$CallCaptureFullScreen;->mRecord:Lcom/android/server/am/ActivityRecord;

    .line 22173
    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$CallCaptureFullScreen;->mToken:Landroid/os/IBinder;

    .line 22174
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityRecord;Landroid/os/IBinder;)V
    .locals 1
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v0, 0x0

    .line 22176
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$CallCaptureFullScreen;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22168
    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$CallCaptureFullScreen;->mRecord:Lcom/android/server/am/ActivityRecord;

    .line 22169
    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$CallCaptureFullScreen;->mToken:Landroid/os/IBinder;

    .line 22177
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$CallCaptureFullScreen;->mRecord:Lcom/android/server/am/ActivityRecord;

    .line 22178
    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$CallCaptureFullScreen;->mToken:Landroid/os/IBinder;

    .line 22179
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 22183
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$CallCaptureFullScreen;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 22184
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$CallCaptureFullScreen;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 22185
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$CallCaptureFullScreen;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$CallCaptureFullScreen;->mRecord:Lcom/android/server/am/ActivityRecord;

    if-ne v0, v2, :cond_1

    .line 22186
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$CallCaptureFullScreen;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$CallCaptureFullScreen;->mRecord:Lcom/android/server/am/ActivityRecord;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$CallCaptureFullScreen;->mToken:Landroid/os/IBinder;

    # invokes: Lcom/android/server/am/ActivityManagerService;->captureFullScreen(Lcom/android/server/am/ActivityRecord;Landroid/os/IBinder;)V
    invoke-static {v0, v2, v3}, Lcom/android/server/am/ActivityManagerService;->access$2200(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityRecord;Landroid/os/IBinder;)V

    .line 22190
    :goto_0
    monitor-exit v1

    .line 22192
    :cond_0
    return-void

    .line 22188
    :cond_1
    const-string v0, "ActivityManager"

    const-string v2, "precap activity is already gone"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 22190
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
