.class Landroid/net/wifi/OxygenStateMachine$OlsrdMonitor;
.super Ljava/lang/Object;
.source "OxygenStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/OxygenStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OlsrdMonitor"
.end annotation


# instance fields
.field private mMonitorThread:Landroid/net/wifi/OxygenStateMachine$OlsrdMonitorThread;

.field private mMonitoring:Z

.field private mSM:Lcom/android/internal/util/StateMachine;

.field final synthetic this$0:Landroid/net/wifi/OxygenStateMachine;


# direct methods
.method public constructor <init>(Landroid/net/wifi/OxygenStateMachine;Lcom/android/internal/util/StateMachine;)V
    .locals 0
    .param p2, "sm"    # Lcom/android/internal/util/StateMachine;

    .prologue
    .line 549
    iput-object p1, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdMonitor;->this$0:Landroid/net/wifi/OxygenStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 550
    iput-object p2, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdMonitor;->mSM:Lcom/android/internal/util/StateMachine;

    .line 551
    return-void
.end method

.method static synthetic access$2400(Landroid/net/wifi/OxygenStateMachine$OlsrdMonitor;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/OxygenStateMachine$OlsrdMonitor;

    .prologue
    .line 544
    iget-boolean v0, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdMonitor;->mMonitoring:Z

    return v0
.end method


# virtual methods
.method public isMonitoring()Z
    .locals 1

    .prologue
    .line 572
    iget-boolean v0, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdMonitor;->mMonitoring:Z

    return v0
.end method

.method public declared-synchronized startMonitoring()V
    .locals 3

    .prologue
    .line 554
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdMonitor;->mMonitoring:Z

    if-nez v0, :cond_0

    .line 555
    const-string v0, "OxygenStateMachine"

    const-string v1, "olsrd monitor start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    new-instance v0, Landroid/net/wifi/OxygenStateMachine$OlsrdMonitorThread;

    iget-object v1, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdMonitor;->this$0:Landroid/net/wifi/OxygenStateMachine;

    iget-object v2, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdMonitor;->mSM:Lcom/android/internal/util/StateMachine;

    invoke-direct {v0, v1, p0, v2}, Landroid/net/wifi/OxygenStateMachine$OlsrdMonitorThread;-><init>(Landroid/net/wifi/OxygenStateMachine;Landroid/net/wifi/OxygenStateMachine$OlsrdMonitor;Lcom/android/internal/util/StateMachine;)V

    iput-object v0, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdMonitor;->mMonitorThread:Landroid/net/wifi/OxygenStateMachine$OlsrdMonitorThread;

    .line 557
    iget-object v0, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdMonitor;->mMonitorThread:Landroid/net/wifi/OxygenStateMachine$OlsrdMonitorThread;

    invoke-virtual {v0}, Landroid/net/wifi/OxygenStateMachine$OlsrdMonitorThread;->start()V

    .line 558
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdMonitor;->mMonitoring:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 560
    :cond_0
    monitor-exit p0

    return-void

    .line 554
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopMonitoring()V
    .locals 2

    .prologue
    .line 563
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdMonitor;->mMonitoring:Z

    .line 564
    iget-object v0, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdMonitor;->mMonitorThread:Landroid/net/wifi/OxygenStateMachine$OlsrdMonitorThread;

    if-eqz v0, :cond_0

    .line 565
    const-string v0, "OxygenStateMachine"

    const-string v1, "olsrd monitor stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget-object v0, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdMonitor;->mMonitorThread:Landroid/net/wifi/OxygenStateMachine$OlsrdMonitorThread;

    invoke-virtual {v0}, Landroid/net/wifi/OxygenStateMachine$OlsrdMonitorThread;->quit()V

    .line 568
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/OxygenStateMachine$OlsrdMonitor;->mSM:Lcom/android/internal/util/StateMachine;

    const v1, 0x20165

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 569
    monitor-exit p0

    return-void

    .line 563
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
