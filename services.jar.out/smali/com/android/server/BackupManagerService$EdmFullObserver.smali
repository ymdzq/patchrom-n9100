.class Lcom/android/server/BackupManagerService$EdmFullObserver;
.super Landroid/app/backup/IFullBackupRestoreObserver$Stub;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EdmFullObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BackupManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/BackupManagerService;)V
    .locals 0

    .prologue
    .line 6730
    iput-object p1, p0, Lcom/android/server/BackupManagerService$EdmFullObserver;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct {p0}, Landroid/app/backup/IFullBackupRestoreObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/BackupManagerService;Lcom/android/server/BackupManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/BackupManagerService;
    .param p2, "x1"    # Lcom/android/server/BackupManagerService$1;

    .prologue
    .line 6730
    invoke-direct {p0, p1}, Lcom/android/server/BackupManagerService$EdmFullObserver;-><init>(Lcom/android/server/BackupManagerService;)V

    return-void
.end method


# virtual methods
.method public onBackupPackage(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6739
    const-string v0, "BackupManagerService"

    const-string v1, "full edm backup onBackupPackage"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6740
    return-void
.end method

.method public onEndBackup()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6744
    const-string v0, "BackupManagerService"

    const-string v1, "full edm backup onEndBackup"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6745
    iget-object v0, p0, Lcom/android/server/BackupManagerService$EdmFullObserver;->this$0:Lcom/android/server/BackupManagerService;

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService;->isEdmBackupFail:Z

    if-eqz v0, :cond_0

    .line 6746
    iget-object v0, p0, Lcom/android/server/BackupManagerService$EdmFullObserver;->this$0:Lcom/android/server/BackupManagerService;

    const/4 v1, -0x2

    # invokes: Lcom/android/server/BackupManagerService;->resetEdmBackupTags(I)V
    invoke-static {v0, v1}, Lcom/android/server/BackupManagerService;->access$2700(Lcom/android/server/BackupManagerService;I)V

    .line 6749
    :goto_0
    return-void

    .line 6748
    :cond_0
    iget-object v0, p0, Lcom/android/server/BackupManagerService$EdmFullObserver;->this$0:Lcom/android/server/BackupManagerService;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/BackupManagerService;->resetEdmBackupTags(I)V
    invoke-static {v0, v1}, Lcom/android/server/BackupManagerService;->access$2700(Lcom/android/server/BackupManagerService;I)V

    goto :goto_0
.end method

.method public onEndRestore()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6763
    const-string v0, "BackupManagerService"

    const-string v1, "full edm backup onEndRestore"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6764
    iget-object v0, p0, Lcom/android/server/BackupManagerService$EdmFullObserver;->this$0:Lcom/android/server/BackupManagerService;

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService;->isEdmBackupFail:Z

    if-eqz v0, :cond_0

    .line 6765
    iget-object v0, p0, Lcom/android/server/BackupManagerService$EdmFullObserver;->this$0:Lcom/android/server/BackupManagerService;

    const/4 v1, -0x2

    # invokes: Lcom/android/server/BackupManagerService;->resetEdmRestoreTags(I)V
    invoke-static {v0, v1}, Lcom/android/server/BackupManagerService;->access$2800(Lcom/android/server/BackupManagerService;I)V

    .line 6768
    :goto_0
    return-void

    .line 6767
    :cond_0
    iget-object v0, p0, Lcom/android/server/BackupManagerService$EdmFullObserver;->this$0:Lcom/android/server/BackupManagerService;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/BackupManagerService;->resetEdmRestoreTags(I)V
    invoke-static {v0, v1}, Lcom/android/server/BackupManagerService;->access$2800(Lcom/android/server/BackupManagerService;I)V

    goto :goto_0
.end method

.method public onRestorePackage(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6758
    const-string v0, "BackupManagerService"

    const-string v1, "full edm backup onRestorePackage"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6759
    return-void
.end method

.method public onStartBackup()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6734
    const-string v0, "BackupManagerService"

    const-string v1, "full edm backup started"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6735
    return-void
.end method

.method public onStartRestore()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6753
    const-string v0, "BackupManagerService"

    const-string v1, "full edm backup onStartRestore"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6754
    return-void
.end method

.method public onTimeout()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x2

    .line 6772
    const-string v0, "BackupManagerService"

    const-string v1, "full edm backup onTimeout"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6773
    iget-object v0, p0, Lcom/android/server/BackupManagerService$EdmFullObserver;->this$0:Lcom/android/server/BackupManagerService;

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService;->isEdmBackupRequest:Z

    if-eqz v0, :cond_0

    .line 6774
    iget-object v0, p0, Lcom/android/server/BackupManagerService$EdmFullObserver;->this$0:Lcom/android/server/BackupManagerService;

    # invokes: Lcom/android/server/BackupManagerService;->resetEdmBackupTags(I)V
    invoke-static {v0, v2}, Lcom/android/server/BackupManagerService;->access$2700(Lcom/android/server/BackupManagerService;I)V

    .line 6778
    :goto_0
    return-void

    .line 6776
    :cond_0
    iget-object v0, p0, Lcom/android/server/BackupManagerService$EdmFullObserver;->this$0:Lcom/android/server/BackupManagerService;

    # invokes: Lcom/android/server/BackupManagerService;->resetEdmRestoreTags(I)V
    invoke-static {v0, v2}, Lcom/android/server/BackupManagerService;->access$2800(Lcom/android/server/BackupManagerService;I)V

    goto :goto_0
.end method