.class Lcom/android/server/power/PowerManagerService$AlpmLock;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlpmLock"
.end annotation


# instance fields
.field binder:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;)V
    .locals 2
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 4518
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$AlpmLock;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 4519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4520
    iput-object p2, p0, Lcom/android/server/power/PowerManagerService$AlpmLock;->binder:Landroid/os/IBinder;

    .line 4523
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p2, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4527
    :goto_0
    return-void

    .line 4524
    :catch_0
    move-exception v0

    .line 4525
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService$AlpmLock;->binderDied()V

    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4529
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$AlpmLock;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$AlpmLock;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, v2, v2, v2, v1}, Lcom/android/server/power/PowerManagerService;->setAlpmModeLocked(ZIILandroid/os/IBinder;)V

    .line 4530
    return-void
.end method